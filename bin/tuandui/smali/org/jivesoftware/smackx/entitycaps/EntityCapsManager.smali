.class public Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;
.super Ljava/lang/Object;
.source "EntityCapsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager$NodeVerHash;
    }
.end annotation


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "c"

.field private static final ENTITY_NODE:Ljava/lang/String; = "http://www.igniterealtime.org/projects/smack"

.field public static final NAMESPACE:Ljava/lang/String; = "http://jabber.org/protocol/caps"

.field private static final SUPPORTED_HASHES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/MessageDigest;",
            ">;"
        }
    .end annotation
.end field

.field protected static caps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smackx/packet/DiscoverInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/jivesoftware/smack/Connection;",
            "Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;",
            ">;"
        }
    .end annotation
.end field

.field protected static jidCaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager$NodeVerHash;",
            ">;"
        }
    .end annotation
.end field

.field protected static persistentCache:Lorg/jivesoftware/smackx/entitycaps/cache/EntityCapsPersistentCache;


# instance fields
.field private currentCapsVersion:Ljava/lang/String;

.field private entityCapsEnabled:Z

.field private lastLocalCapsVersions:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private presenceSend:Z

.field private sdm:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

.field private weakRefConnection:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/jivesoftware/smack/Connection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 80
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->SUPPORTED_HASHES:Ljava/util/Map;

    .line 85
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 84
    sput-object v1, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->instances:Ljava/util/Map;

    .line 90
    new-instance v1, Lorg/jivesoftware/smack/util/Cache;

    const/16 v2, 0x3e8

    invoke-direct {v1, v2, v4, v5}, Lorg/jivesoftware/smack/util/Cache;-><init>(IJ)V

    sput-object v1, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->caps:Ljava/util/Map;

    .line 98
    new-instance v1, Lorg/jivesoftware/smack/util/Cache;

    const/16 v2, 0x2710

    invoke-direct {v1, v2, v4, v5}, Lorg/jivesoftware/smack/util/Cache;-><init>(IJ)V

    sput-object v1, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->jidCaps:Ljava/util/Map;

    .line 101
    new-instance v1, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager$1;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager$1;-><init>()V

    invoke-static {v1}, Lorg/jivesoftware/smack/Connection;->addConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V

    .line 108
    :try_start_0
    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 109
    .local v0, "sha1MessageDigest":Ljava/security/MessageDigest;
    sget-object v1, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->SUPPORTED_HASHES:Ljava/util/Map;

    const-string v2, "sha-1"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/Connection;)V
    .locals 10
    .param p1, "connection"    # Lorg/jivesoftware/smack/Connection;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-boolean v7, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->presenceSend:Z

    .line 120
    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v3, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->lastLocalCapsVersions:Ljava/util/Queue;

    .line 226
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->weakRefConnection:Ljava/lang/ref/WeakReference;

    .line 227
    invoke-static {p1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v3

    iput-object v3, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->sdm:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    .line 228
    sget-object v3, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->instances:Ljava/util/Map;

    invoke-interface {v3, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    new-instance v3, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager$2;

    invoke-direct {v3, p0}, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager$2;-><init>(Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;)V

    invoke-virtual {p1, v3}, Lorg/jivesoftware/smack/Connection;->addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V

    .line 253
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->updateLocalEntityCaps()V

    .line 255
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->autoEnableEntityCaps()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 256
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->enableEntityCaps()V

    .line 258
    :cond_0
    new-instance v1, Lorg/jivesoftware/smack/filter/AndFilter;

    new-array v3, v9, [Lorg/jivesoftware/smack/filter/PacketFilter;

    new-instance v4, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v5, Lorg/jivesoftware/smack/packet/Presence;

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    aput-object v4, v3, v7

    new-instance v4, Lorg/jivesoftware/smack/filter/PacketExtensionFilter;

    .line 259
    const-string v5, "c"

    const-string v6, "http://jabber.org/protocol/caps"

    invoke-direct {v4, v5, v6}, Lorg/jivesoftware/smack/filter/PacketExtensionFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    aput-object v4, v3, v8

    invoke-direct {v1, v3}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 260
    .local v1, "packetFilter":Lorg/jivesoftware/smack/filter/PacketFilter;
    new-instance v3, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager$3;

    invoke-direct {v3, p0}, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager$3;-><init>(Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;)V

    invoke-virtual {p1, v3, v1}, Lorg/jivesoftware/smack/Connection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 284
    new-instance v1, Lorg/jivesoftware/smack/filter/AndFilter;

    .end local v1    # "packetFilter":Lorg/jivesoftware/smack/filter/PacketFilter;
    new-array v3, v9, [Lorg/jivesoftware/smack/filter/PacketFilter;

    new-instance v4, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v5, Lorg/jivesoftware/smack/packet/Presence;

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    aput-object v4, v3, v7

    new-instance v4, Lorg/jivesoftware/smack/filter/NotFilter;

    new-instance v5, Lorg/jivesoftware/smack/filter/PacketExtensionFilter;

    .line 285
    const-string v6, "c"

    const-string v7, "http://jabber.org/protocol/caps"

    invoke-direct {v5, v6, v7}, Lorg/jivesoftware/smack/filter/PacketExtensionFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/filter/NotFilter;-><init>(Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 284
    aput-object v4, v3, v8

    invoke-direct {v1, v3}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 286
    .restart local v1    # "packetFilter":Lorg/jivesoftware/smack/filter/PacketFilter;
    new-instance v3, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager$4;

    invoke-direct {v3, p0}, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager$4;-><init>(Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;)V

    invoke-virtual {p1, v3, v1}, Lorg/jivesoftware/smack/Connection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 296
    new-instance v1, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    .end local v1    # "packetFilter":Lorg/jivesoftware/smack/filter/PacketFilter;
    const-class v3, Lorg/jivesoftware/smack/packet/Presence;

    invoke-direct {v1, v3}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    .line 297
    .restart local v1    # "packetFilter":Lorg/jivesoftware/smack/filter/PacketFilter;
    new-instance v3, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager$5;

    invoke-direct {v3, p0}, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager$5;-><init>(Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;)V

    invoke-virtual {p1, v3, v1}, Lorg/jivesoftware/smack/Connection;->addPacketSendingListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 307
    new-instance v0, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v3, Lorg/jivesoftware/smack/packet/Presence;

    invoke-direct {v0, v3}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    .line 308
    .local v0, "capsPacketFilter":Lorg/jivesoftware/smack/filter/PacketFilter;
    new-instance v2, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager$6;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager$6;-><init>(Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;)V

    .line 317
    .local v2, "packetInterceptor":Lorg/jivesoftware/smack/PacketInterceptor;
    invoke-virtual {p1, v2, v0}, Lorg/jivesoftware/smack/Connection;->addPacketInterceptor(Lorg/jivesoftware/smack/PacketInterceptor;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 320
    iget-object v3, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->sdm:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    invoke-virtual {v3, p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->setEntityCapsManager(Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;)V

    .line 321
    return-void
.end method

.method static synthetic access$0(Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;Z)V
    .locals 0

    .prologue
    .line 119
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->presenceSend:Z

    return-void
.end method

.method static synthetic access$1()Ljava/util/Map;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->SUPPORTED_HASHES:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2(Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;)Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->entityCapsEnabled:Z

    return v0
.end method

.method static synthetic access$3(Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->sdm:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    return-object v0
.end method

.method public static addDiscoverInfoByNode(Ljava/lang/String;Lorg/jivesoftware/smackx/packet/DiscoverInfo;)V
    .locals 1
    .param p0, "nodeVer"    # Ljava/lang/String;
    .param p1, "info"    # Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    .prologue
    .line 132
    sget-object v0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->caps:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->persistentCache:Lorg/jivesoftware/smackx/entitycaps/cache/EntityCapsPersistentCache;

    if-eqz v0, :cond_0

    .line 135
    sget-object v0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->persistentCache:Lorg/jivesoftware/smackx/entitycaps/cache/EntityCapsPersistentCache;

    invoke-interface {v0, p0, p1}, Lorg/jivesoftware/smackx/entitycaps/cache/EntityCapsPersistentCache;->addDiscoverInfoByNodePersistent(Ljava/lang/String;Lorg/jivesoftware/smackx/packet/DiscoverInfo;)V

    .line 136
    :cond_0
    return-void
.end method

.method private static formFieldValuesToCaps(Ljava/util/Iterator;Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 662
    .local p0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 663
    .local v1, "fvs":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 666
    invoke-interface {v1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 670
    return-void

    .line 664
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 666
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 667
    .local v0, "fv":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    const-string v3, "<"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method protected static generateVerificationString(Lorg/jivesoftware/smackx/packet/DiscoverInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "discoverInfo"    # Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    .param p1, "hash"    # Ljava/lang/String;

    .prologue
    .line 557
    sget-object v13, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->SUPPORTED_HASHES:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/MessageDigest;

    .line 558
    .local v10, "md":Ljava/security/MessageDigest;
    if-nez v10, :cond_0

    .line 559
    const/4 v13, 0x0

    .line 658
    :goto_0
    return-object v13

    .line 561
    :cond_0
    const-string v13, "x"

    const-string v14, "jabber:x:data"

    invoke-virtual {p0, v13, v14}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/packet/DataForm;

    .line 564
    .local v1, "extendedInfo":Lorg/jivesoftware/smackx/packet/DataForm;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 573
    .local v11, "sb":Ljava/lang/StringBuilder;
    new-instance v12, Ljava/util/TreeSet;

    invoke-direct {v12}, Ljava/util/TreeSet;-><init>()V

    .line 575
    .local v12, "sortedIdentities":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;>;"
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->getIdentities()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;>;"
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_3

    .line 580
    invoke-interface {v12}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_4

    .line 593
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    .line 594
    .local v3, "features":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->getFeatures()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jivesoftware/smackx/packet/DiscoverInfo$Feature;>;"
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_7

    .line 599
    invoke-interface {v3}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_8

    .line 607
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/DataForm;->hasHiddenFormTypeField()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 608
    monitor-enter v1

    .line 612
    :try_start_0
    new-instance v4, Ljava/util/TreeSet;

    new-instance v13, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager$8;

    invoke-direct {v13}, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager$8;-><init>()V

    invoke-direct {v4, v13}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 618
    .local v4, "fs":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lorg/jivesoftware/smackx/FormField;>;"
    const/4 v5, 0x0

    .line 620
    .local v5, "ft":Lorg/jivesoftware/smackx/FormField;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/DataForm;->getFields()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jivesoftware/smackx/FormField;>;"
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_9

    .line 630
    if-eqz v5, :cond_1

    .line 631
    invoke-virtual {v5}, Lorg/jivesoftware/smackx/FormField;->getValues()Ljava/util/Iterator;

    move-result-object v13

    invoke-static {v13, v11}, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->formFieldValuesToCaps(Ljava/util/Iterator;Ljava/lang/StringBuilder;)V

    .line 641
    :cond_1
    invoke-interface {v4}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_b

    .line 608
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 657
    .end local v4    # "fs":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lorg/jivesoftware/smackx/FormField;>;"
    .end local v5    # "ft":Lorg/jivesoftware/smackx/FormField;
    .end local v6    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jivesoftware/smackx/FormField;>;"
    :cond_2
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 658
    .local v0, "digest":[B
    invoke-static {v0}, Lorg/jivesoftware/smack/util/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0

    .line 576
    .end local v0    # "digest":[B
    .end local v3    # "features":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    .end local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jivesoftware/smackx/packet/DiscoverInfo$Feature;>;"
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

    invoke-interface {v12, v13}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 581
    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

    .line 582
    .local v7, "identity":Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;
    invoke-virtual {v7}, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->getCategory()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    const-string v13, "/"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    invoke-virtual {v7}, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->getType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    const-string v13, "/"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    invoke-virtual {v7}, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->getLanguage()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_5

    const-string v13, ""

    :goto_7
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    const-string v13, "/"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    invoke-virtual {v7}, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->getName()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_6

    const-string v13, ""

    :goto_8
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    const-string v13, "<"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 586
    :cond_5
    invoke-virtual {v7}, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->getLanguage()Ljava/lang/String;

    move-result-object v13

    goto :goto_7

    .line 588
    :cond_6
    invoke-virtual {v7}, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->getName()Ljava/lang/String;

    move-result-object v13

    goto :goto_8

    .line 595
    .end local v7    # "identity":Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;
    .restart local v3    # "features":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    .restart local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jivesoftware/smackx/packet/DiscoverInfo$Feature;>;"
    :cond_7
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Feature;

    invoke-virtual {v13}, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Feature;->getVar()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 599
    :cond_8
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 600
    .local v2, "f":Ljava/lang/String;
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    const-string v14, "<"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 621
    .end local v2    # "f":Ljava/lang/String;
    .restart local v4    # "fs":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lorg/jivesoftware/smackx/FormField;>;"
    .restart local v5    # "ft":Lorg/jivesoftware/smackx/FormField;
    .restart local v6    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jivesoftware/smackx/FormField;>;"
    :cond_9
    :try_start_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/FormField;

    .line 622
    .local v2, "f":Lorg/jivesoftware/smackx/FormField;
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/FormField;->getVariable()Ljava/lang/String;

    move-result-object v13

    const-string v14, "FORM_TYPE"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a

    .line 623
    invoke-interface {v4, v2}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 608
    .end local v2    # "f":Lorg/jivesoftware/smackx/FormField;
    .end local v4    # "fs":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lorg/jivesoftware/smackx/FormField;>;"
    .end local v5    # "ft":Lorg/jivesoftware/smackx/FormField;
    .end local v6    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jivesoftware/smackx/FormField;>;"
    :catchall_0
    move-exception v13

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v13

    .line 625
    .restart local v2    # "f":Lorg/jivesoftware/smackx/FormField;
    .restart local v4    # "fs":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lorg/jivesoftware/smackx/FormField;>;"
    .restart local v5    # "ft":Lorg/jivesoftware/smackx/FormField;
    .restart local v6    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jivesoftware/smackx/FormField;>;"
    :cond_a
    move-object v5, v2

    goto/16 :goto_5

    .line 641
    .end local v2    # "f":Lorg/jivesoftware/smackx/FormField;
    :cond_b
    :try_start_2
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/FormField;

    .line 642
    .restart local v2    # "f":Lorg/jivesoftware/smackx/FormField;
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/FormField;->getVariable()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    const-string v14, "<"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/FormField;->getValues()Ljava/util/Iterator;

    move-result-object v14

    invoke-static {v14, v11}, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->formFieldValuesToCaps(Ljava/util/Iterator;Ljava/lang/StringBuilder;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_6
.end method

.method public static getDiscoverInfoByUser(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    .locals 2
    .param p0, "user"    # Ljava/lang/String;

    .prologue
    .line 169
    sget-object v1, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->jidCaps:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager$NodeVerHash;

    .line 170
    .local v0, "nvh":Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager$NodeVerHash;
    if-nez v0, :cond_0

    .line 171
    const/4 v1, 0x0

    .line 173
    :goto_0
    return-object v1

    :cond_0
    # getter for: Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager$NodeVerHash;->nodeVer:Ljava/lang/String;
    invoke-static {v0}, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager$NodeVerHash;->access$0(Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager$NodeVerHash;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->getDiscoveryInfoByNodeVer(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    move-result-object v1

    goto :goto_0
.end method

.method public static getDiscoveryInfoByNodeVer(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    .locals 3
    .param p0, "nodeVer"    # Ljava/lang/String;

    .prologue
    .line 185
    sget-object v2, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->caps:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    .line 186
    .local v0, "info":Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    if-eqz v0, :cond_0

    .line 187
    new-instance v1, Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    invoke-direct {v1, v0}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;-><init>(Lorg/jivesoftware/smackx/packet/DiscoverInfo;)V

    .end local v0    # "info":Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    .local v1, "info":Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    move-object v0, v1

    .line 189
    .end local v1    # "info":Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    .restart local v0    # "info":Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    :cond_0
    return-object v0
.end method

.method public static declared-synchronized getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;
    .locals 4
    .param p0, "connection"    # Lorg/jivesoftware/smack/Connection;

    .prologue
    .line 324
    const-class v2, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->SUPPORTED_HASHES:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 325
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "No supported hashes for EntityCapsManager"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 327
    :cond_0
    :try_start_1
    sget-object v1, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->instances:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;

    .line 329
    .local v0, "entityCapsManager":Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;
    if-nez v0, :cond_1

    .line 330
    new-instance v0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;

    .end local v0    # "entityCapsManager":Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;
    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;-><init>(Lorg/jivesoftware/smack/Connection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 333
    .restart local v0    # "entityCapsManager":Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;
    :cond_1
    monitor-exit v2

    return-object v0
.end method

.method public static getNodeVerHashByJid(Ljava/lang/String;)Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager$NodeVerHash;
    .locals 1
    .param p0, "jid"    # Ljava/lang/String;

    .prologue
    .line 156
    sget-object v0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->jidCaps:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager$NodeVerHash;

    return-object v0
.end method

.method public static getNodeVersionByJid(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "jid"    # Ljava/lang/String;

    .prologue
    .line 147
    sget-object v1, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->jidCaps:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager$NodeVerHash;

    .line 148
    .local v0, "nvh":Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager$NodeVerHash;
    if-eqz v0, :cond_0

    .line 149
    # getter for: Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager$NodeVerHash;->nodeVer:Ljava/lang/String;
    invoke-static {v0}, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager$NodeVerHash;->access$0(Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager$NodeVerHash;)Ljava/lang/String;

    move-result-object v1

    .line 151
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setCapsMaxCacheSize(I)V
    .locals 1
    .param p0, "maxCacheSize"    # I

    .prologue
    .line 222
    sget-object v0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->caps:Ljava/util/Map;

    check-cast v0, Lorg/jivesoftware/smack/util/Cache;

    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/util/Cache;->setMaxCacheSize(I)V

    .line 223
    return-void
.end method

.method public static setJidCapsMaxCacheSize(I)V
    .locals 1
    .param p0, "maxCacheSize"    # I

    .prologue
    .line 212
    sget-object v0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->jidCaps:Ljava/util/Map;

    check-cast v0, Lorg/jivesoftware/smack/util/Cache;

    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/util/Cache;->setMaxCacheSize(I)V

    .line 213
    return-void
.end method

.method public static setPersistentCache(Lorg/jivesoftware/smackx/entitycaps/cache/EntityCapsPersistentCache;)V
    .locals 2
    .param p0, "cache"    # Lorg/jivesoftware/smackx/entitycaps/cache/EntityCapsPersistentCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    sget-object v0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->persistentCache:Lorg/jivesoftware/smackx/entitycaps/cache/EntityCapsPersistentCache;

    if-eqz v0, :cond_0

    .line 200
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Entity Caps Persistent Cache was already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_0
    sput-object p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->persistentCache:Lorg/jivesoftware/smackx/entitycaps/cache/EntityCapsPersistentCache;

    .line 202
    sget-object v0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->persistentCache:Lorg/jivesoftware/smackx/entitycaps/cache/EntityCapsPersistentCache;

    invoke-interface {v0}, Lorg/jivesoftware/smackx/entitycaps/cache/EntityCapsPersistentCache;->replay()V

    .line 203
    return-void
.end method

.method public static verifyDiscoverInfoVersion(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/packet/DiscoverInfo;)Z
    .locals 3
    .param p0, "ver"    # Ljava/lang/String;
    .param p1, "hash"    # Ljava/lang/String;
    .param p2, "info"    # Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    .prologue
    const/4 v1, 0x0

    .line 499
    invoke-virtual {p2}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->containsDuplicateIdentities()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 515
    :cond_0
    :goto_0
    return v1

    .line 503
    :cond_1
    invoke-virtual {p2}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->containsDuplicateFeatures()Z

    move-result v2

    if-nez v2, :cond_0

    .line 507
    invoke-static {p2}, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->verifyPacketExtensions(Lorg/jivesoftware/smackx/packet/DiscoverInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 510
    invoke-static {p2, p1}, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->generateVerificationString(Lorg/jivesoftware/smackx/packet/DiscoverInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 512
    .local v0, "calculatedVer":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 515
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected static verifyPacketExtensions(Lorg/jivesoftware/smackx/packet/DiscoverInfo;)Z
    .locals 9
    .param p0, "info"    # Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    .prologue
    .line 524
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 525
    .local v3, "foundFormTypes":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/FormField;>;"
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->getExtensions()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jivesoftware/smack/packet/PacketExtension;>;"
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 541
    const/4 v7, 0x0

    :goto_0
    return v7

    .line 526
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jivesoftware/smack/packet/PacketExtension;

    .line 527
    .local v6, "pe":Lorg/jivesoftware/smack/packet/PacketExtension;
    invoke-interface {v6}, Lorg/jivesoftware/smack/packet/PacketExtension;->getNamespace()Ljava/lang/String;

    move-result-object v7

    const-string v8, "jabber:x:data"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v0, v6

    .line 528
    check-cast v0, Lorg/jivesoftware/smackx/packet/DataForm;

    .line 529
    .local v0, "df":Lorg/jivesoftware/smackx/packet/DataForm;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/DataForm;->getFields()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jivesoftware/smackx/FormField;>;"
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 530
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/FormField;

    .line 531
    .local v1, "f":Lorg/jivesoftware/smackx/FormField;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/FormField;->getVariable()Ljava/lang/String;

    move-result-object v7

    const-string v8, "FORM_TYPE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 532
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_4

    .line 536
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 532
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/FormField;

    .line 533
    .local v2, "fft":Lorg/jivesoftware/smackx/FormField;
    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/FormField;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 534
    const/4 v7, 0x1

    goto :goto_0
.end method


# virtual methods
.method public areEntityCapsSupported(Ljava/lang/String;)Z
    .locals 3
    .param p1, "jid"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 390
    if-nez p1, :cond_0

    .line 397
    :goto_0
    return v1

    .line 394
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->sdm:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    invoke-virtual {v2, p1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->discoverInfo(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    move-result-object v0

    .line 395
    .local v0, "result":Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    const-string v2, "http://jabber.org/protocol/caps"

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->containsFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 397
    .end local v0    # "result":Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public areEntityCapsSupportedByServer()Z
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->weakRefConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/Connection;->getServiceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->areEntityCapsSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public disableEntityCaps()V
    .locals 2

    .prologue
    .line 344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->entityCapsEnabled:Z

    .line 345
    iget-object v0, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->sdm:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    const-string v1, "http://jabber.org/protocol/caps"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->removeFeature(Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method public enableEntityCaps()V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->sdm:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    const-string v1, "http://jabber.org/protocol/caps"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->addFeature(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->updateLocalEntityCaps()V

    .line 340
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->entityCapsEnabled:Z

    .line 341
    return-void
.end method

.method public entityCapsEnabled()Z
    .locals 1

    .prologue
    .line 349
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->entityCapsEnabled:Z

    return v0
.end method

.method public getCapsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->currentCapsVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalNodeVer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://www.igniterealtime.org/projects/smack#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->getCapsVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeUserCapsNode(Ljava/lang/String;)V
    .locals 1
    .param p1, "user"    # Ljava/lang/String;

    .prologue
    .line 359
    sget-object v0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->jidCaps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    return-void
.end method

.method public updateLocalEntityCaps()V
    .locals 11

    .prologue
    .line 427
    iget-object v5, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->weakRefConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/Connection;

    .line 429
    .local v0, "connection":Lorg/jivesoftware/smack/Connection;
    new-instance v1, Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;-><init>()V

    .line 430
    .local v1, "discoverInfo":Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    sget-object v5, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v5}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 431
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->getLocalNodeVer()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->setNode(Ljava/lang/String;)V

    .line 432
    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {v0}, Lorg/jivesoftware/smack/Connection;->getUser()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->setFrom(Ljava/lang/String;)V

    .line 434
    :cond_0
    iget-object v5, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->sdm:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    invoke-virtual {v5, v1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->addDiscoverInfoTo(Lorg/jivesoftware/smackx/packet/DiscoverInfo;)V

    .line 436
    const-string v5, "sha-1"

    invoke-static {v1, v5}, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->generateVerificationString(Lorg/jivesoftware/smackx/packet/DiscoverInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->currentCapsVersion:Ljava/lang/String;

    .line 437
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http://www.igniterealtime.org/projects/smack#"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->currentCapsVersion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->addDiscoverInfoByNode(Ljava/lang/String;Lorg/jivesoftware/smackx/packet/DiscoverInfo;)V

    .line 438
    iget-object v5, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->lastLocalCapsVersions:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v5

    const/16 v6, 0xa

    if-le v5, v6, :cond_1

    .line 439
    iget-object v5, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->lastLocalCapsVersions:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 440
    .local v3, "oldCapsVersion":Ljava/lang/String;
    iget-object v5, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->sdm:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "http://www.igniterealtime.org/projects/smack#"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->removeNodeInformationProvider(Ljava/lang/String;)V

    .line 442
    .end local v3    # "oldCapsVersion":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->lastLocalCapsVersions:Ljava/util/Queue;

    iget-object v6, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->currentCapsVersion:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 444
    sget-object v5, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->caps:Ljava/util/Map;

    iget-object v6, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->currentCapsVersion:Ljava/lang/String;

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    if-eqz v0, :cond_2

    .line 446
    sget-object v5, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->jidCaps:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/Connection;->getUser()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager$NodeVerHash;

    const-string v8, "http://www.igniterealtime.org/projects/smack"

    iget-object v9, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->currentCapsVersion:Ljava/lang/String;

    const-string v10, "sha-1"

    invoke-direct {v7, v8, v9, v10}, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager$NodeVerHash;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    :cond_2
    new-instance v2, Ljava/util/LinkedList;

    invoke-static {v0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getIdentities()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 449
    .local v2, "identities":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;>;"
    iget-object v5, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->sdm:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "http://www.igniterealtime.org/projects/smack#"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->currentCapsVersion:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager$7;

    invoke-direct {v7, p0, v2}, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager$7;-><init>(Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;Ljava/util/List;)V

    invoke-virtual {v5, v6, v7}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->setNodeInformationProvider(Ljava/lang/String;Lorg/jivesoftware/smackx/NodeInformationProvider;)V

    .line 479
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/jivesoftware/smack/Connection;->isAuthenticated()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->presenceSend:Z

    if-eqz v5, :cond_3

    .line 480
    new-instance v4, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v5, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 481
    .local v4, "presence":Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v0, v4}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 483
    .end local v4    # "presence":Lorg/jivesoftware/smack/packet/Presence;
    :cond_3
    return-void
.end method
