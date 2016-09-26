.class public Lorg/jivesoftware/smackx/ServiceDiscoveryManager;
.super Ljava/lang/Object;
.source "ServiceDiscoveryManager.java"


# static fields
.field private static final DEFAULT_IDENTITY_CATEGORY:Ljava/lang/String; = "client"

.field private static final DEFAULT_IDENTITY_NAME:Ljava/lang/String; = "Smack"

.field private static final DEFAULT_IDENTITY_TYPE:Ljava/lang/String; = "pc"

.field private static defaultIdentity:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

.field private static instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/jivesoftware/smack/Connection;",
            "Lorg/jivesoftware/smackx/ServiceDiscoveryManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private capsManager:Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;

.field private connection:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/jivesoftware/smack/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private extendedInfo:Lorg/jivesoftware/smackx/packet/DataForm;

.field private final features:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private identities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;",
            ">;"
        }
    .end annotation
.end field

.field private identity:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

.field private nodeInformationProviders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smackx/NodeInformationProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 57
    new-instance v0, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

    const-string v1, "client"

    .line 58
    const-string v2, "Smack"

    const-string v3, "pc"

    .line 57
    invoke-direct {v0, v1, v2, v3}, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->defaultIdentity:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

    .line 66
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 65
    sput-object v0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->instances:Ljava/util/Map;

    .line 76
    new-instance v0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager$1;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager$1;-><init>()V

    invoke-static {v0}, Lorg/jivesoftware/smack/Connection;->addConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/Connection;)V
    .locals 3
    .param p1, "connection"    # Lorg/jivesoftware/smack/Connection;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->identities:Ljava/util/Set;

    .line 61
    sget-object v2, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->defaultIdentity:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

    iput-object v2, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->identity:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

    .line 69
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->features:Ljava/util/Set;

    .line 70
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->extendedInfo:Lorg/jivesoftware/smackx/packet/DataForm;

    .line 72
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->nodeInformationProviders:Ljava/util/Map;

    .line 103
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->connection:Ljava/lang/ref/WeakReference;

    .line 105
    sget-object v2, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->instances:Ljava/util/Map;

    invoke-interface {v2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v2, "http://jabber.org/protocol/disco#info"

    invoke-virtual {p0, v2}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->addFeature(Ljava/lang/String;)V

    .line 108
    const-string v2, "http://jabber.org/protocol/disco#items"

    invoke-virtual {p0, v2}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->addFeature(Ljava/lang/String;)V

    .line 111
    new-instance v0, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v2, Lorg/jivesoftware/smackx/packet/DiscoverItems;

    invoke-direct {v0, v2}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    .line 112
    .local v0, "packetFilter":Lorg/jivesoftware/smack/filter/PacketFilter;
    new-instance v1, Lorg/jivesoftware/smackx/ServiceDiscoveryManager$2;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager$2;-><init>(Lorg/jivesoftware/smackx/ServiceDiscoveryManager;)V

    .line 144
    .local v1, "packetListener":Lorg/jivesoftware/smack/PacketListener;
    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/Connection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 148
    new-instance v0, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    .end local v0    # "packetFilter":Lorg/jivesoftware/smack/filter/PacketFilter;
    const-class v2, Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    invoke-direct {v0, v2}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    .line 149
    .restart local v0    # "packetFilter":Lorg/jivesoftware/smack/filter/PacketFilter;
    new-instance v1, Lorg/jivesoftware/smackx/ServiceDiscoveryManager$3;

    .end local v1    # "packetListener":Lorg/jivesoftware/smack/PacketListener;
    invoke-direct {v1, p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager$3;-><init>(Lorg/jivesoftware/smackx/ServiceDiscoveryManager;)V

    .line 191
    .restart local v1    # "packetListener":Lorg/jivesoftware/smack/PacketListener;
    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/Connection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 192
    return-void
.end method

.method static synthetic access$0(Lorg/jivesoftware/smackx/ServiceDiscoveryManager;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->connection:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$1(Lorg/jivesoftware/smackx/ServiceDiscoveryManager;Ljava/lang/String;)Lorg/jivesoftware/smackx/NodeInformationProvider;
    .locals 1

    .prologue
    .line 323
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getNodeInformationProvider(Ljava/lang/String;)Lorg/jivesoftware/smackx/NodeInformationProvider;

    move-result-object v0

    return-object v0
.end method

.method public static canPublishItems(Lorg/jivesoftware/smackx/packet/DiscoverInfo;)Z
    .locals 1
    .param p0, "info"    # Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    .prologue
    .line 640
    const-string v0, "http://jabber.org/protocol/disco#publish"

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->containsFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;
    .locals 3
    .param p0, "connection"    # Lorg/jivesoftware/smack/Connection;

    .prologue
    .line 285
    const-class v2, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->instances:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    .line 286
    .local v0, "sdm":Lorg/jivesoftware/smackx/ServiceDiscoveryManager;
    if-nez v0, :cond_0

    .line 287
    new-instance v0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    .end local v0    # "sdm":Lorg/jivesoftware/smackx/ServiceDiscoveryManager;
    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;-><init>(Lorg/jivesoftware/smack/Connection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    .restart local v0    # "sdm":Lorg/jivesoftware/smackx/ServiceDiscoveryManager;
    :cond_0
    monitor-exit v2

    return-object v0

    .line 285
    .end local v0    # "sdm":Lorg/jivesoftware/smackx/ServiceDiscoveryManager;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getNodeInformationProvider(Ljava/lang/String;)Lorg/jivesoftware/smackx/NodeInformationProvider;
    .locals 1
    .param p1, "node"    # Ljava/lang/String;

    .prologue
    .line 324
    if-nez p1, :cond_0

    .line 325
    const/4 v0, 0x0

    .line 327
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->nodeInformationProviders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/NodeInformationProvider;

    goto :goto_0
.end method

.method private renewEntityCapsVersion()V
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->capsManager:Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->capsManager:Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->entityCapsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->capsManager:Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->updateLocalEntityCaps()V

    .line 716
    :cond_0
    return-void
.end method

.method public static setDefaultIdentity(Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;)V
    .locals 0
    .param p0, "identity"    # Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

    .prologue
    .line 90
    sput-object p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->defaultIdentity:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

    .line 91
    return-void
.end method


# virtual methods
.method public addDiscoverInfoTo(Lorg/jivesoftware/smackx/packet/DiscoverInfo;)V
    .locals 3
    .param p1, "response"    # Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    .prologue
    .line 301
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getIdentities()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->addIdentities(Ljava/util/Collection;)V

    .line 304
    iget-object v2, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->features:Ljava/util/Set;

    monitor-enter v2

    .line 305
    :try_start_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getFeatures()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 308
    iget-object v1, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->extendedInfo:Lorg/jivesoftware/smackx/packet/DataForm;

    invoke-virtual {p1, v1}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 304
    monitor-exit v2

    .line 310
    return-void

    .line 306
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->addFeature(Ljava/lang/String;)V

    goto :goto_0

    .line 304
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addFeature(Ljava/lang/String;)V
    .locals 2
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    .line 395
    iget-object v1, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->features:Ljava/util/Set;

    monitor-enter v1

    .line 396
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->features:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 397
    invoke-direct {p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->renewEntityCapsVersion()V

    .line 395
    monitor-exit v1

    .line 399
    return-void

    .line 395
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addIdentity(Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;)V
    .locals 1
    .param p1, "identity"    # Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

    .prologue
    .line 248
    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->identities:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 249
    invoke-direct {p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->renewEntityCapsVersion()V

    .line 250
    return-void
.end method

.method public canPublishItems(Ljava/lang/String;)Z
    .locals 2
    .param p1, "entityID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 626
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->discoverInfo(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    move-result-object v0

    .line 627
    .local v0, "info":Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    invoke-static {v0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->canPublishItems(Lorg/jivesoftware/smackx/packet/DiscoverInfo;)Z

    move-result v1

    return v1
.end method

.method public discoverInfo(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    .locals 4
    .param p1, "entityID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 494
    if-nez p1, :cond_1

    .line 495
    invoke-virtual {p0, v2, v2}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->discoverInfo(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    move-result-object v0

    .line 520
    :cond_0
    :goto_0
    return-object v0

    .line 498
    :cond_1
    invoke-static {p1}, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->getDiscoverInfoByUser(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    move-result-object v0

    .line 500
    .local v0, "info":Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    if-nez v0, :cond_0

    .line 508
    invoke-static {p1}, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->getNodeVerHashByJid(Ljava/lang/String;)Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager$NodeVerHash;

    move-result-object v1

    .line 512
    .local v1, "nvh":Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager$NodeVerHash;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager$NodeVerHash;->getNodeVer()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {p0, p1, v2}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->discoverInfo(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    move-result-object v0

    .line 515
    if-eqz v1, :cond_0

    .line 516
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager$NodeVerHash;->getVer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager$NodeVerHash;->getHash()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->verifyDiscoverInfoVersion(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/packet/DiscoverInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 517
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager$NodeVerHash;->getNodeVer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->addDiscoverInfoByNode(Ljava/lang/String;Lorg/jivesoftware/smackx/packet/DiscoverInfo;)V

    goto :goto_0
.end method

.method public discoverInfo(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    .locals 6
    .param p1, "entityID"    # Ljava/lang/String;
    .param p2, "node"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 537
    iget-object v4, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->connection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/Connection;

    .line 538
    .local v1, "connection":Lorg/jivesoftware/smack/Connection;
    if-nez v1, :cond_0

    new-instance v4, Lorg/jivesoftware/smack/XMPPException;

    const-string v5, "Connection instance already gc\'ed"

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 541
    :cond_0
    new-instance v2, Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    invoke-direct {v2}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;-><init>()V

    .line 542
    .local v2, "disco":Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    sget-object v4, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 543
    invoke-virtual {v2, p1}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->setTo(Ljava/lang/String;)V

    .line 544
    invoke-virtual {v2, p2}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->setNode(Ljava/lang/String;)V

    .line 548
    new-instance v4, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->getPacketID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 550
    .local v0, "collector":Lorg/jivesoftware/smack/PacketCollector;
    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 553
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/packet/IQ;

    .line 555
    .local v3, "result":Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 556
    if-nez v3, :cond_1

    .line 557
    new-instance v4, Lorg/jivesoftware/smack/XMPPException;

    const-string v5, "No response from the server."

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 559
    :cond_1
    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v4

    sget-object v5, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v4, v5, :cond_2

    .line 560
    new-instance v4, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v4

    .line 562
    :cond_2
    check-cast v3, Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    .end local v3    # "result":Lorg/jivesoftware/smack/packet/IQ;
    return-object v3
.end method

.method public discoverItems(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverItems;
    .locals 1
    .param p1, "entityID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 573
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->discoverItems(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverItems;

    move-result-object v0

    return-object v0
.end method

.method public discoverItems(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverItems;
    .locals 6
    .param p1, "entityID"    # Ljava/lang/String;
    .param p2, "node"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 587
    iget-object v4, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->connection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/Connection;

    .line 588
    .local v1, "connection":Lorg/jivesoftware/smack/Connection;
    if-nez v1, :cond_0

    new-instance v4, Lorg/jivesoftware/smack/XMPPException;

    const-string v5, "Connection instance already gc\'ed"

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 591
    :cond_0
    new-instance v2, Lorg/jivesoftware/smackx/packet/DiscoverItems;

    invoke-direct {v2}, Lorg/jivesoftware/smackx/packet/DiscoverItems;-><init>()V

    .line 592
    .local v2, "disco":Lorg/jivesoftware/smackx/packet/DiscoverItems;
    sget-object v4, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 593
    invoke-virtual {v2, p1}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->setTo(Ljava/lang/String;)V

    .line 594
    invoke-virtual {v2, p2}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->setNode(Ljava/lang/String;)V

    .line 598
    new-instance v4, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->getPacketID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 600
    .local v0, "collector":Lorg/jivesoftware/smack/PacketCollector;
    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 603
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/packet/IQ;

    .line 605
    .local v3, "result":Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 606
    if-nez v3, :cond_1

    .line 607
    new-instance v4, Lorg/jivesoftware/smack/XMPPException;

    const-string v5, "No response from the server."

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 609
    :cond_1
    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v4

    sget-object v5, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v4, v5, :cond_2

    .line 610
    new-instance v4, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v4

    .line 612
    :cond_2
    check-cast v3, Lorg/jivesoftware/smackx/packet/DiscoverItems;

    .end local v3    # "result":Lorg/jivesoftware/smack/packet/IQ;
    return-object v3
.end method

.method public getExtendedInfo()Lorg/jivesoftware/smackx/packet/DataForm;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->extendedInfo:Lorg/jivesoftware/smackx/packet/DataForm;

    return-object v0
.end method

.method public getExtendedInfoAsList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/packet/PacketExtension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 465
    const/4 v0, 0x0

    .line 466
    .local v0, "res":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/PacketExtension;>;"
    iget-object v1, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->extendedInfo:Lorg/jivesoftware/smackx/packet/DataForm;

    if-eqz v1, :cond_0

    .line 467
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "res":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/PacketExtension;>;"
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 468
    .restart local v0    # "res":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/PacketExtension;>;"
    iget-object v1, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->extendedInfo:Lorg/jivesoftware/smackx/packet/DataForm;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    :cond_0
    return-object v0
.end method

.method public getFeatures()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 367
    iget-object v1, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->features:Ljava/util/Set;

    monitor-enter v1

    .line 368
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->features:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFeaturesList()Ljava/util/List;
    .locals 3
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
    .line 378
    iget-object v1, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->features:Ljava/util/Set;

    monitor-enter v1

    .line 379
    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    iget-object v2, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->features:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 378
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIdentities()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->identities:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 274
    .local v0, "res":Ljava/util/Set;, "Ljava/util/Set<Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;>;"
    sget-object v1, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->defaultIdentity:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 275
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public getIdentityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->identity:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdentityType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->identity:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public includesFeature(Ljava/lang/String;)Z
    .locals 2
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    .line 423
    iget-object v1, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->features:Ljava/util/Set;

    monitor-enter v1

    .line 424
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->features:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 423
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public publishItems(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/packet/DiscoverItems;)V
    .locals 6
    .param p1, "entityID"    # Ljava/lang/String;
    .param p2, "node"    # Ljava/lang/String;
    .param p3, "discoverItems"    # Lorg/jivesoftware/smackx/packet/DiscoverItems;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 671
    iget-object v3, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->connection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/Connection;

    .line 672
    .local v1, "connection":Lorg/jivesoftware/smack/Connection;
    if-nez v1, :cond_0

    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    const-string v4, "Connection instance already gc\'ed"

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 674
    :cond_0
    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p3, v3}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 675
    invoke-virtual {p3, p1}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->setTo(Ljava/lang/String;)V

    .line 676
    invoke-virtual {p3, p2}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->setNode(Ljava/lang/String;)V

    .line 680
    new-instance v3, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {p3}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->getPacketID()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 682
    .local v0, "collector":Lorg/jivesoftware/smack/PacketCollector;
    invoke-virtual {v1, p3}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 685
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/packet/IQ;

    .line 687
    .local v2, "result":Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 688
    if-nez v2, :cond_1

    .line 689
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    const-string v4, "No response from the server."

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 691
    :cond_1
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v3

    sget-object v4, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v3, v4, :cond_2

    .line 692
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v3

    .line 694
    :cond_2
    return-void
.end method

.method public publishItems(Ljava/lang/String;Lorg/jivesoftware/smackx/packet/DiscoverItems;)V
    .locals 1
    .param p1, "entityID"    # Ljava/lang/String;
    .param p2, "discoverItems"    # Lorg/jivesoftware/smackx/packet/DiscoverItems;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 655
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->publishItems(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/packet/DiscoverItems;)V

    .line 656
    return-void
.end method

.method public removeExtendedInfo()V
    .locals 1

    .prologue
    .line 481
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->extendedInfo:Lorg/jivesoftware/smackx/packet/DataForm;

    .line 482
    invoke-direct {p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->renewEntityCapsVersion()V

    .line 483
    return-void
.end method

.method public removeFeature(Ljava/lang/String;)V
    .locals 2
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    .line 410
    iget-object v1, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->features:Ljava/util/Set;

    monitor-enter v1

    .line 411
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->features:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 412
    invoke-direct {p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->renewEntityCapsVersion()V

    .line 410
    monitor-exit v1

    .line 414
    return-void

    .line 410
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeIdentity(Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;)Z
    .locals 1
    .param p1, "identity"    # Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

    .prologue
    .line 260
    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->identity:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 263
    :goto_0
    return v0

    .line 261
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->identities:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 262
    invoke-direct {p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->renewEntityCapsVersion()V

    .line 263
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public removeNodeInformationProvider(Ljava/lang/String;)V
    .locals 1
    .param p1, "node"    # Ljava/lang/String;

    .prologue
    .line 358
    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->nodeInformationProviders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    return-void
.end method

.method public setEntityCapsManager(Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;)V
    .locals 0
    .param p1, "manager"    # Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;

    .prologue
    .line 706
    iput-object p1, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->capsManager:Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;

    .line 707
    return-void
.end method

.method public setExtendedInfo(Lorg/jivesoftware/smackx/packet/DataForm;)V
    .locals 0
    .param p1, "info"    # Lorg/jivesoftware/smackx/packet/DataForm;

    .prologue
    .line 444
    iput-object p1, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->extendedInfo:Lorg/jivesoftware/smackx/packet/DataForm;

    .line 445
    invoke-direct {p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->renewEntityCapsVersion()V

    .line 446
    return-void
.end method

.method public setIdentityName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 213
    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->identity:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->setName(Ljava/lang/String;)V

    .line 214
    invoke-direct {p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->renewEntityCapsVersion()V

    .line 215
    return-void
.end method

.method public setIdentityType(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 238
    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->identity:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->setType(Ljava/lang/String;)V

    .line 239
    invoke-direct {p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->renewEntityCapsVersion()V

    .line 240
    return-void
.end method

.method public setNodeInformationProvider(Ljava/lang/String;Lorg/jivesoftware/smackx/NodeInformationProvider;)V
    .locals 1
    .param p1, "node"    # Ljava/lang/String;
    .param p2, "listener"    # Lorg/jivesoftware/smackx/NodeInformationProvider;

    .prologue
    .line 344
    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->nodeInformationProviders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    return-void
.end method
