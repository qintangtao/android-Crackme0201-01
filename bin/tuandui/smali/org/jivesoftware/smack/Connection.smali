.class public abstract Lorg/jivesoftware/smack/Connection;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/Connection$InterceptorWrapper;,
        Lorg/jivesoftware/smack/Connection$ListenerWrapper;
    }
.end annotation


# static fields
.field public static DEBUG_ENABLED:Z

.field protected static final compressionHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/compression/XMPPInputOutputStream;",
            ">;"
        }
    .end annotation
.end field

.field private static final connectionCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final connectionEstablishedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/jivesoftware/smack/ConnectionCreationListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private accountManager:Lorg/jivesoftware/smack/AccountManager;

.field protected chatManager:Lorg/jivesoftware/smack/ChatManager;

.field protected final collectors:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smack/PacketCollector;",
            ">;"
        }
    .end annotation
.end field

.field protected compressionHandler:Lorg/jivesoftware/smack/compression/XMPPInputOutputStream;

.field protected final config:Lorg/jivesoftware/smack/ConnectionConfiguration;

.field protected final connectionCounterValue:I

.field protected final connectionListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smack/ConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field protected debugger:Lorg/jivesoftware/smack/debugger/SmackDebugger;

.field protected final interceptors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/jivesoftware/smack/PacketInterceptor;",
            "Lorg/jivesoftware/smack/Connection$InterceptorWrapper;",
            ">;"
        }
    .end annotation
.end field

.field protected reader:Ljava/io/Reader;

.field protected final recvListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/jivesoftware/smack/PacketListener;",
            "Lorg/jivesoftware/smack/Connection$ListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field protected rosterStorage:Lorg/jivesoftware/smack/RosterStorage;

.field protected saslAuthentication:Lorg/jivesoftware/smack/SASLAuthentication;

.field protected final sendListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/jivesoftware/smack/PacketListener;",
            "Lorg/jivesoftware/smack/Connection$ListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private serviceCapsNode:Ljava/lang/String;

.field protected writer:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 90
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lorg/jivesoftware/smack/Connection;->connectionCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 96
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 95
    sput-object v0, Lorg/jivesoftware/smack/Connection;->connectionEstablishedListeners:Ljava/util/Set;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lorg/jivesoftware/smack/Connection;->compressionHandlers:Ljava/util/List;

    .line 113
    sput-boolean v2, Lorg/jivesoftware/smack/Connection;->DEBUG_ENABLED:Z

    .line 119
    :try_start_0
    const-string v0, "smack.debugEnabled"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/jivesoftware/smack/Connection;->DEBUG_ENABLED:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getVersion()Ljava/lang/String;

    .line 127
    sget-object v0, Lorg/jivesoftware/smack/Connection;->compressionHandlers:Ljava/util/List;

    new-instance v1, Lorg/jivesoftware/smack/compression/Java7ZlibInputOutputStream;

    invoke-direct {v1}, Lorg/jivesoftware/smack/compression/Java7ZlibInputOutputStream;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    sget-object v0, Lorg/jivesoftware/smack/Connection;->compressionHandlers:Ljava/util/List;

    new-instance v1, Lorg/jivesoftware/smack/compression/JzlibInputOutputStream;

    invoke-direct {v1}, Lorg/jivesoftware/smack/compression/JzlibInputOutputStream;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/jivesoftware/smack/ConnectionConfiguration;)V
    .locals 2
    .param p1, "configuration"    # Lorg/jivesoftware/smack/ConnectionConfiguration;

    .prologue
    const/4 v1, 0x0

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/Connection;->connectionListeners:Ljava/util/Collection;

    .line 143
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/Connection;->collectors:Ljava/util/Collection;

    .line 149
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/Connection;->recvListeners:Ljava/util/Map;

    .line 155
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/Connection;->sendListeners:Ljava/util/Map;

    .line 163
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/Connection;->interceptors:Ljava/util/Map;

    .line 168
    iput-object v1, p0, Lorg/jivesoftware/smack/Connection;->accountManager:Lorg/jivesoftware/smack/AccountManager;

    .line 173
    iput-object v1, p0, Lorg/jivesoftware/smack/Connection;->chatManager:Lorg/jivesoftware/smack/ChatManager;

    .line 178
    iput-object v1, p0, Lorg/jivesoftware/smack/Connection;->debugger:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    .line 199
    new-instance v0, Lorg/jivesoftware/smack/SASLAuthentication;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/SASLAuthentication;-><init>(Lorg/jivesoftware/smack/Connection;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/Connection;->saslAuthentication:Lorg/jivesoftware/smack/SASLAuthentication;

    .line 205
    sget-object v0, Lorg/jivesoftware/smack/Connection;->connectionCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lorg/jivesoftware/smack/Connection;->connectionCounterValue:I

    .line 225
    iput-object p1, p0, Lorg/jivesoftware/smack/Connection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    .line 226
    return-void
.end method

.method public static addConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V
    .locals 1
    .param p0, "connectionCreationListener"    # Lorg/jivesoftware/smack/ConnectionCreationListener;

    .prologue
    .line 519
    sget-object v0, Lorg/jivesoftware/smack/Connection;->connectionEstablishedListeners:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 520
    return-void
.end method

.method protected static getConnectionCreationListeners()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smack/ConnectionCreationListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 538
    sget-object v0, Lorg/jivesoftware/smack/Connection;->connectionEstablishedListeners:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static removeConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V
    .locals 1
    .param p0, "connectionCreationListener"    # Lorg/jivesoftware/smack/ConnectionCreationListener;

    .prologue
    .line 529
    sget-object v0, Lorg/jivesoftware/smack/Connection;->connectionEstablishedListeners:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 530
    return-void
.end method


# virtual methods
.method public addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V
    .locals 1
    .param p1, "connectionListener"    # Lorg/jivesoftware/smack/ConnectionListener;

    .prologue
    .line 548
    if-nez p1, :cond_1

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 551
    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->connectionListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 552
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->connectionListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addPacketInterceptor(Lorg/jivesoftware/smack/PacketInterceptor;Lorg/jivesoftware/smack/filter/PacketFilter;)V
    .locals 2
    .param p1, "packetInterceptor"    # Lorg/jivesoftware/smack/PacketInterceptor;
    .param p2, "packetFilter"    # Lorg/jivesoftware/smack/filter/PacketFilter;

    .prologue
    .line 703
    if-nez p1, :cond_0

    .line 704
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Packet interceptor is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 706
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->interceptors:Ljava/util/Map;

    new-instance v1, Lorg/jivesoftware/smack/Connection$InterceptorWrapper;

    invoke-direct {v1, p1, p2}, Lorg/jivesoftware/smack/Connection$InterceptorWrapper;-><init>(Lorg/jivesoftware/smack/PacketInterceptor;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    return-void
.end method

.method public addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V
    .locals 3
    .param p1, "packetListener"    # Lorg/jivesoftware/smack/PacketListener;
    .param p2, "packetFilter"    # Lorg/jivesoftware/smack/filter/PacketFilter;

    .prologue
    .line 617
    if-nez p1, :cond_0

    .line 618
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Packet listener is null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 620
    :cond_0
    new-instance v0, Lorg/jivesoftware/smack/Connection$ListenerWrapper;

    invoke-direct {v0, p1, p2}, Lorg/jivesoftware/smack/Connection$ListenerWrapper;-><init>(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 621
    .local v0, "wrapper":Lorg/jivesoftware/smack/Connection$ListenerWrapper;
    iget-object v1, p0, Lorg/jivesoftware/smack/Connection;->recvListeners:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    return-void
.end method

.method public addPacketSendingListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V
    .locals 3
    .param p1, "packetListener"    # Lorg/jivesoftware/smack/PacketListener;
    .param p2, "packetFilter"    # Lorg/jivesoftware/smack/filter/PacketFilter;

    .prologue
    .line 654
    if-nez p1, :cond_0

    .line 655
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Packet listener is null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 657
    :cond_0
    new-instance v0, Lorg/jivesoftware/smack/Connection$ListenerWrapper;

    invoke-direct {v0, p1, p2}, Lorg/jivesoftware/smack/Connection$ListenerWrapper;-><init>(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 658
    .local v0, "wrapper":Lorg/jivesoftware/smack/Connection$ListenerWrapper;
    iget-object v1, p0, Lorg/jivesoftware/smack/Connection;->sendListeners:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    return-void
.end method

.method public abstract connect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation
.end method

.method public createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;
    .locals 2
    .param p1, "packetFilter"    # Lorg/jivesoftware/smack/filter/PacketFilter;

    .prologue
    .line 584
    new-instance v0, Lorg/jivesoftware/smack/PacketCollector;

    invoke-direct {v0, p0, p1}, Lorg/jivesoftware/smack/PacketCollector;-><init>(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 586
    .local v0, "collector":Lorg/jivesoftware/smack/PacketCollector;
    iget-object v1, p0, Lorg/jivesoftware/smack/Connection;->collectors:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 587
    return-object v0
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 490
    new-instance v0, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->unavailable:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/Connection;->disconnect(Lorg/jivesoftware/smack/packet/Presence;)V

    .line 491
    return-void
.end method

.method public abstract disconnect(Lorg/jivesoftware/smack/packet/Presence;)V
.end method

.method protected firePacketInterceptors(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 3
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Packet;

    .prologue
    .line 740
    if-eqz p1, :cond_0

    .line 741
    iget-object v1, p0, Lorg/jivesoftware/smack/Connection;->interceptors:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 745
    :cond_0
    return-void

    .line 741
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/Connection$InterceptorWrapper;

    .line 742
    .local v0, "interceptorWrapper":Lorg/jivesoftware/smack/Connection$InterceptorWrapper;
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/Connection$InterceptorWrapper;->notifyListener(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0
.end method

.method protected firePacketSendingListeners(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 3
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Packet;

    .prologue
    .line 687
    iget-object v1, p0, Lorg/jivesoftware/smack/Connection;->sendListeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 690
    return-void

    .line 687
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/Connection$ListenerWrapper;

    .line 688
    .local v0, "listenerWrapper":Lorg/jivesoftware/smack/Connection$ListenerWrapper;
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/Connection$ListenerWrapper;->notifyListener(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0
.end method

.method public getAccountManager()Lorg/jivesoftware/smack/AccountManager;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->accountManager:Lorg/jivesoftware/smack/AccountManager;

    if-nez v0, :cond_0

    .line 428
    new-instance v0, Lorg/jivesoftware/smack/AccountManager;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/AccountManager;-><init>(Lorg/jivesoftware/smack/Connection;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/Connection;->accountManager:Lorg/jivesoftware/smack/AccountManager;

    .line 430
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->accountManager:Lorg/jivesoftware/smack/AccountManager;

    return-object v0
.end method

.method public declared-synchronized getChatManager()Lorg/jivesoftware/smack/ChatManager;
    .locals 1

    .prologue
    .line 440
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->chatManager:Lorg/jivesoftware/smack/ChatManager;

    if-nez v0, :cond_0

    .line 441
    new-instance v0, Lorg/jivesoftware/smack/ChatManager;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/ChatManager;-><init>(Lorg/jivesoftware/smack/Connection;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/Connection;->chatManager:Lorg/jivesoftware/smack/ChatManager;

    .line 443
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->chatManager:Lorg/jivesoftware/smack/ChatManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 440
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getConfiguration()Lorg/jivesoftware/smack/ConnectionConfiguration;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    return-object v0
.end method

.method public abstract getConnectionID()Ljava/lang/String;
.end method

.method protected getConnectionListeners()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smack/ConnectionListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 571
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->connectionListeners:Ljava/util/Collection;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPacketCollectors()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smack/PacketCollector;",
            ">;"
        }
    .end annotation

    .prologue
    .line 605
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->collectors:Ljava/util/Collection;

    return-object v0
.end method

.method protected getPacketInterceptors()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lorg/jivesoftware/smack/PacketInterceptor;",
            "Lorg/jivesoftware/smack/Connection$InterceptorWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 728
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->interceptors:Ljava/util/Map;

    return-object v0
.end method

.method protected getPacketListeners()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lorg/jivesoftware/smack/PacketListener;",
            "Lorg/jivesoftware/smack/Connection$ListenerWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 639
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->recvListeners:Ljava/util/Map;

    return-object v0
.end method

.method protected getPacketSendingListeners()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lorg/jivesoftware/smack/PacketListener;",
            "Lorg/jivesoftware/smack/Connection$ListenerWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 676
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->sendListeners:Ljava/util/Map;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getPort()I

    move-result v0

    return v0
.end method

.method public abstract getRoster()Lorg/jivesoftware/smack/Roster;
.end method

.method public getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->saslAuthentication:Lorg/jivesoftware/smack/SASLAuthentication;

    return-object v0
.end method

.method public getServiceCapsNode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->serviceCapsNode:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getServiceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getUser()Ljava/lang/String;
.end method

.method protected initDebugger()V
    .locals 8

    .prologue
    .line 755
    iget-object v5, p0, Lorg/jivesoftware/smack/Connection;->reader:Ljava/io/Reader;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/jivesoftware/smack/Connection;->writer:Ljava/io/Writer;

    if-nez v5, :cond_1

    .line 756
    :cond_0
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "Reader or writer isn\'t initialized."

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 759
    :cond_1
    iget-object v5, p0, Lorg/jivesoftware/smack/Connection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v5}, Lorg/jivesoftware/smack/ConnectionConfiguration;->isDebuggerEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 760
    iget-object v5, p0, Lorg/jivesoftware/smack/Connection;->debugger:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    if-nez v5, :cond_5

    .line 762
    const/4 v0, 0x0

    .line 766
    .local v0, "className":Ljava/lang/String;
    :try_start_0
    const-string v5, "smack.debuggerClass"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    .line 771
    :goto_0
    const/4 v2, 0x0

    .line 772
    .local v2, "debuggerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_2

    .line 774
    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 780
    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 783
    :try_start_2
    const-string v5, "de.measite.smack.AndroidDebugger"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    .line 798
    :cond_3
    :goto_2
    const/4 v5, 0x3

    :try_start_3
    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    .line 799
    const-class v7, Lorg/jivesoftware/smack/Connection;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/io/Writer;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Ljava/io/Reader;

    aput-object v7, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 800
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lorg/jivesoftware/smack/Connection;->writer:Ljava/io/Writer;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lorg/jivesoftware/smack/Connection;->reader:Ljava/io/Reader;

    aput-object v7, v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jivesoftware/smack/debugger/SmackDebugger;

    iput-object v5, p0, Lorg/jivesoftware/smack/Connection;->debugger:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    .line 801
    iget-object v5, p0, Lorg/jivesoftware/smack/Connection;->debugger:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    invoke-interface {v5}, Lorg/jivesoftware/smack/debugger/SmackDebugger;->getReader()Ljava/io/Reader;

    move-result-object v5

    iput-object v5, p0, Lorg/jivesoftware/smack/Connection;->reader:Ljava/io/Reader;

    .line 802
    iget-object v5, p0, Lorg/jivesoftware/smack/Connection;->debugger:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    invoke-interface {v5}, Lorg/jivesoftware/smack/debugger/SmackDebugger;->getWriter()Ljava/io/Writer;

    move-result-object v5

    iput-object v5, p0, Lorg/jivesoftware/smack/Connection;->writer:Ljava/io/Writer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 815
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v2    # "debuggerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    :goto_3
    return-void

    .line 776
    .restart local v0    # "className":Ljava/lang/String;
    .restart local v2    # "debuggerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v3

    .line 777
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 788
    :try_start_4
    const-string v5, "org.jivesoftware.smack.debugger.ConsoleDebugger"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v2

    .line 787
    goto :goto_2

    .line 790
    :catch_2
    move-exception v4

    .line 791
    .local v4, "ex2":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 804
    .end local v4    # "ex2":Ljava/lang/Exception;
    :catch_3
    move-exception v3

    .line 805
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Can\'t initialize the configured debugger!"

    invoke-direct {v5, v6, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 810
    .end local v0    # "className":Ljava/lang/String;
    .end local v2    # "debuggerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_5
    iget-object v5, p0, Lorg/jivesoftware/smack/Connection;->debugger:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    iget-object v6, p0, Lorg/jivesoftware/smack/Connection;->reader:Ljava/io/Reader;

    invoke-interface {v5, v6}, Lorg/jivesoftware/smack/debugger/SmackDebugger;->newConnectionReader(Ljava/io/Reader;)Ljava/io/Reader;

    move-result-object v5

    iput-object v5, p0, Lorg/jivesoftware/smack/Connection;->reader:Ljava/io/Reader;

    .line 811
    iget-object v5, p0, Lorg/jivesoftware/smack/Connection;->debugger:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    iget-object v6, p0, Lorg/jivesoftware/smack/Connection;->writer:Ljava/io/Writer;

    invoke-interface {v5, v6}, Lorg/jivesoftware/smack/debugger/SmackDebugger;->newConnectionWriter(Ljava/io/Writer;)Ljava/io/Writer;

    move-result-object v5

    iput-object v5, p0, Lorg/jivesoftware/smack/Connection;->writer:Ljava/io/Writer;

    goto :goto_3

    .restart local v0    # "className":Ljava/lang/String;
    :catch_4
    move-exception v5

    goto :goto_0
.end method

.method public abstract isAnonymous()Z
.end method

.method public abstract isAuthenticated()Z
.end method

.method public abstract isConnected()Z
.end method

.method protected isReconnectionAllowed()Z
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/ConnectionConfiguration;->isReconnectionAllowed()Z

    move-result v0

    return v0
.end method

.method public abstract isSecureConnection()Z
.end method

.method public isSendPresence()Z
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/ConnectionConfiguration;->isSendPresence()Z

    move-result v0

    return v0
.end method

.method public abstract isUsingCompression()Z
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 371
    const-string v0, "android"

    invoke-virtual {p0, p1, p2, v0}, Lorg/jivesoftware/smack/Connection;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    return-void
.end method

.method public abstract login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation
.end method

.method public abstract loginAnonymously()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation
.end method

.method public removeConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V
    .locals 1
    .param p1, "connectionListener"    # Lorg/jivesoftware/smack/ConnectionListener;

    .prologue
    .line 562
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->connectionListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 563
    return-void
.end method

.method protected removePacketCollector(Lorg/jivesoftware/smack/PacketCollector;)V
    .locals 1
    .param p1, "collector"    # Lorg/jivesoftware/smack/PacketCollector;

    .prologue
    .line 596
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->collectors:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 597
    return-void
.end method

.method public removePacketInterceptor(Lorg/jivesoftware/smack/PacketInterceptor;)V
    .locals 1
    .param p1, "packetInterceptor"    # Lorg/jivesoftware/smack/PacketInterceptor;

    .prologue
    .line 715
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->interceptors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    return-void
.end method

.method public removePacketListener(Lorg/jivesoftware/smack/PacketListener;)V
    .locals 1
    .param p1, "packetListener"    # Lorg/jivesoftware/smack/PacketListener;

    .prologue
    .line 630
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->recvListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    return-void
.end method

.method public removePacketSendingListener(Lorg/jivesoftware/smack/PacketListener;)V
    .locals 1
    .param p1, "packetListener"    # Lorg/jivesoftware/smack/PacketListener;

    .prologue
    .line 667
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->sendListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    return-void
.end method

.method public abstract sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V
.end method

.method public abstract setRosterStorage(Lorg/jivesoftware/smack/RosterStorage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method protected setServiceCapsNode(Ljava/lang/String;)V
    .locals 0
    .param p1, "node"    # Ljava/lang/String;

    .prologue
    .line 826
    iput-object p1, p0, Lorg/jivesoftware/smack/Connection;->serviceCapsNode:Ljava/lang/String;

    .line 827
    return-void
.end method
