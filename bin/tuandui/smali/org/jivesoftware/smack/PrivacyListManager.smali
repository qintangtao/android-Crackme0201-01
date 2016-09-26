.class public Lorg/jivesoftware/smack/PrivacyListManager;
.super Ljava/lang/Object;
.source "PrivacyListManager.java"


# static fields
.field private static instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/jivesoftware/smack/Connection;",
            "Lorg/jivesoftware/smack/PrivacyListManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
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

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/PrivacyListListener;",
            ">;"
        }
    .end annotation
.end field

.field packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 47
    sput-object v0, Lorg/jivesoftware/smack/PrivacyListManager;->instances:Ljava/util/Map;

    .line 59
    new-instance v0, Lorg/jivesoftware/smack/PrivacyListManager$1;

    invoke-direct {v0}, Lorg/jivesoftware/smack/PrivacyListManager$1;-><init>()V

    invoke-static {v0}, Lorg/jivesoftware/smack/Connection;->addConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V

    .line 64
    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/Connection;)V
    .locals 6
    .param p1, "connection"    # Lorg/jivesoftware/smack/Connection;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/PrivacyListManager;->listeners:Ljava/util/List;

    .line 52
    new-instance v0, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/jivesoftware/smack/filter/PacketFilter;

    const/4 v2, 0x0

    new-instance v3, Lorg/jivesoftware/smack/filter/IQTypeFilter;

    sget-object v4, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/filter/IQTypeFilter;-><init>(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 53
    new-instance v3, Lorg/jivesoftware/smack/filter/PacketExtensionFilter;

    const-string v4, "query"

    const-string v5, "jabber:iq:privacy"

    invoke-direct {v3, v4, v5}, Lorg/jivesoftware/smack/filter/PacketExtensionFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/PacketFilter;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/PrivacyListManager;->packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 73
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/PrivacyListManager;->connection:Ljava/lang/ref/WeakReference;

    .line 75
    sget-object v0, Lorg/jivesoftware/smack/PrivacyListManager;->instances:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    new-instance v0, Lorg/jivesoftware/smack/PrivacyListManager$2;

    invoke-direct {v0, p0, p1}, Lorg/jivesoftware/smack/PrivacyListManager$2;-><init>(Lorg/jivesoftware/smack/PrivacyListManager;Lorg/jivesoftware/smack/Connection;)V

    .line 117
    iget-object v1, p0, Lorg/jivesoftware/smack/PrivacyListManager;->packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 77
    invoke-virtual {p1, v0, v1}, Lorg/jivesoftware/smack/Connection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 117
    return-void
.end method

.method static synthetic access$0(Lorg/jivesoftware/smack/PrivacyListManager;)Ljava/util/List;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/jivesoftware/smack/PrivacyListManager;->listeners:Ljava/util/List;

    return-object v0
.end method

.method public static declared-synchronized getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smack/PrivacyListManager;
    .locals 3
    .param p0, "connection"    # Lorg/jivesoftware/smack/Connection;

    .prologue
    .line 133
    const-class v2, Lorg/jivesoftware/smack/PrivacyListManager;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lorg/jivesoftware/smack/PrivacyListManager;->instances:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/PrivacyListManager;

    .line 134
    .local v0, "plm":Lorg/jivesoftware/smack/PrivacyListManager;
    if-nez v0, :cond_0

    new-instance v0, Lorg/jivesoftware/smack/PrivacyListManager;

    .end local v0    # "plm":Lorg/jivesoftware/smack/PrivacyListManager;
    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/PrivacyListManager;-><init>(Lorg/jivesoftware/smack/Connection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    .restart local v0    # "plm":Lorg/jivesoftware/smack/PrivacyListManager;
    :cond_0
    monitor-exit v2

    return-object v0

    .line 133
    .end local v0    # "plm":Lorg/jivesoftware/smack/PrivacyListManager;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getPrivacyListItems(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "listName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/packet/PrivacyItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 273
    new-instance v1, Lorg/jivesoftware/smack/packet/Privacy;

    invoke-direct {v1}, Lorg/jivesoftware/smack/packet/Privacy;-><init>()V

    .line 274
    .local v1, "request":Lorg/jivesoftware/smack/packet/Privacy;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p1, v2}, Lorg/jivesoftware/smack/packet/Privacy;->setPrivacyList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 277
    invoke-direct {p0, v1}, Lorg/jivesoftware/smack/PrivacyListManager;->getRequest(Lorg/jivesoftware/smack/packet/Privacy;)Lorg/jivesoftware/smack/packet/Privacy;

    move-result-object v0

    .line 279
    .local v0, "privacyAnswer":Lorg/jivesoftware/smack/packet/Privacy;
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/packet/Privacy;->getPrivacyList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private getPrivacyWithListNames()Lorg/jivesoftware/smack/packet/Privacy;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 225
    new-instance v0, Lorg/jivesoftware/smack/packet/Privacy;

    invoke-direct {v0}, Lorg/jivesoftware/smack/packet/Privacy;-><init>()V

    .line 228
    .local v0, "request":Lorg/jivesoftware/smack/packet/Privacy;
    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PrivacyListManager;->getRequest(Lorg/jivesoftware/smack/packet/Privacy;)Lorg/jivesoftware/smack/packet/Privacy;

    move-result-object v1

    return-object v1
.end method

.method private getRequest(Lorg/jivesoftware/smack/packet/Privacy;)Lorg/jivesoftware/smack/packet/Privacy;
    .locals 6
    .param p1, "requestPrivacy"    # Lorg/jivesoftware/smack/packet/Privacy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 148
    iget-object v4, p0, Lorg/jivesoftware/smack/PrivacyListManager;->connection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/Connection;

    .line 149
    .local v0, "connection":Lorg/jivesoftware/smack/Connection;
    if-nez v0, :cond_0

    new-instance v4, Lorg/jivesoftware/smack/XMPPException;

    const-string v5, "Connection instance already gc\'ed"

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 151
    :cond_0
    sget-object v4, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p1, v4}, Lorg/jivesoftware/smack/packet/Privacy;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 152
    invoke-direct {p0}, Lorg/jivesoftware/smack/PrivacyListManager;->getUser()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/jivesoftware/smack/packet/Privacy;->setFrom(Ljava/lang/String;)V

    .line 155
    new-instance v3, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Privacy;->getPacketID()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    .line 156
    .local v3, "responseFilter":Lorg/jivesoftware/smack/filter/PacketFilter;
    invoke-virtual {v0, v3}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v2

    .line 159
    .local v2, "response":Lorg/jivesoftware/smack/PacketCollector;
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 163
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/Privacy;

    .line 166
    .local v1, "privacyAnswer":Lorg/jivesoftware/smack/packet/Privacy;
    invoke-virtual {v2}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 169
    if-nez v1, :cond_1

    .line 170
    new-instance v4, Lorg/jivesoftware/smack/XMPPException;

    const-string v5, "No response from server."

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 172
    :cond_1
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Privacy;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 173
    new-instance v4, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Privacy;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v4

    .line 175
    :cond_2
    return-object v1
.end method

.method private getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/jivesoftware/smack/PrivacyListManager;->connection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/Connection;->getUser()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setRequest(Lorg/jivesoftware/smack/packet/Privacy;)Lorg/jivesoftware/smack/packet/Packet;
    .locals 6
    .param p1, "requestPrivacy"    # Lorg/jivesoftware/smack/packet/Privacy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 188
    iget-object v4, p0, Lorg/jivesoftware/smack/PrivacyListManager;->connection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/Connection;

    .line 189
    .local v0, "connection":Lorg/jivesoftware/smack/Connection;
    if-nez v0, :cond_0

    new-instance v4, Lorg/jivesoftware/smack/XMPPException;

    const-string v5, "Connection instance already gc\'ed"

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 191
    :cond_0
    sget-object v4, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p1, v4}, Lorg/jivesoftware/smack/packet/Privacy;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 192
    invoke-direct {p0}, Lorg/jivesoftware/smack/PrivacyListManager;->getUser()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/jivesoftware/smack/packet/Privacy;->setFrom(Ljava/lang/String;)V

    .line 195
    new-instance v3, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Privacy;->getPacketID()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    .line 196
    .local v3, "responseFilter":Lorg/jivesoftware/smack/filter/PacketFilter;
    invoke-virtual {v0, v3}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v2

    .line 199
    .local v2, "response":Lorg/jivesoftware/smack/PacketCollector;
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 202
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v1

    .line 205
    .local v1, "privacyAnswer":Lorg/jivesoftware/smack/packet/Packet;
    invoke-virtual {v2}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 208
    if-nez v1, :cond_1

    .line 209
    new-instance v4, Lorg/jivesoftware/smack/XMPPException;

    const-string v5, "No response from server."

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 210
    :cond_1
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Packet;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 211
    new-instance v4, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Packet;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v4

    .line 213
    :cond_2
    return-object v1
.end method


# virtual methods
.method public addListener(Lorg/jivesoftware/smack/PrivacyListListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/jivesoftware/smack/PrivacyListListener;

    .prologue
    .line 436
    iget-object v1, p0, Lorg/jivesoftware/smack/PrivacyListManager;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 437
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/PrivacyListManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    monitor-exit v1

    .line 439
    return-void

    .line 436
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public createPrivacyList(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "listName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/packet/PrivacyItem;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 389
    .local p2, "privacyItems":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/PrivacyItem;>;"
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smack/PrivacyListManager;->updatePrivacyList(Ljava/lang/String;Ljava/util/List;)V

    .line 390
    return-void
.end method

.method public declineActiveList()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 342
    new-instance v0, Lorg/jivesoftware/smack/packet/Privacy;

    invoke-direct {v0}, Lorg/jivesoftware/smack/packet/Privacy;-><init>()V

    .line 343
    .local v0, "request":Lorg/jivesoftware/smack/packet/Privacy;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Privacy;->setDeclineActiveList(Z)V

    .line 346
    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PrivacyListManager;->setRequest(Lorg/jivesoftware/smack/packet/Privacy;)Lorg/jivesoftware/smack/packet/Packet;

    .line 347
    return-void
.end method

.method public declineDefaultList()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 373
    new-instance v0, Lorg/jivesoftware/smack/packet/Privacy;

    invoke-direct {v0}, Lorg/jivesoftware/smack/packet/Privacy;-><init>()V

    .line 374
    .local v0, "request":Lorg/jivesoftware/smack/packet/Privacy;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Privacy;->setDeclineDefaultList(Z)V

    .line 377
    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PrivacyListManager;->setRequest(Lorg/jivesoftware/smack/packet/Privacy;)Lorg/jivesoftware/smack/packet/Packet;

    .line 378
    return-void
.end method

.method public deletePrivacyList(Ljava/lang/String;)V
    .locals 2
    .param p1, "listName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 420
    new-instance v0, Lorg/jivesoftware/smack/packet/Privacy;

    invoke-direct {v0}, Lorg/jivesoftware/smack/packet/Privacy;-><init>()V

    .line 421
    .local v0, "request":Lorg/jivesoftware/smack/packet/Privacy;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1, v1}, Lorg/jivesoftware/smack/packet/Privacy;->setPrivacyList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 424
    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PrivacyListManager;->setRequest(Lorg/jivesoftware/smack/packet/Privacy;)Lorg/jivesoftware/smack/packet/Packet;

    .line 425
    return-void
.end method

.method public getActiveList()Lorg/jivesoftware/smack/PrivacyList;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 238
    invoke-direct {p0}, Lorg/jivesoftware/smack/PrivacyListManager;->getPrivacyWithListNames()Lorg/jivesoftware/smack/packet/Privacy;

    move-result-object v2

    .line 239
    .local v2, "privacyAnswer":Lorg/jivesoftware/smack/packet/Privacy;
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Privacy;->getActiveName()Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, "listName":Ljava/lang/String;
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Privacy;->getActiveName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 241
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Privacy;->getDefaultName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 242
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Privacy;->getActiveName()Ljava/lang/String;

    move-result-object v4

    .line 243
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Privacy;->getDefaultName()Ljava/lang/String;

    move-result-object v5

    .line 242
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 243
    if-eqz v4, :cond_0

    move v0, v3

    .line 244
    .local v0, "isDefaultAndActive":Z
    :goto_0
    new-instance v4, Lorg/jivesoftware/smack/PrivacyList;

    invoke-direct {p0, v1}, Lorg/jivesoftware/smack/PrivacyListManager;->getPrivacyListItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v3, v0, v1, v5}, Lorg/jivesoftware/smack/PrivacyList;-><init>(ZZLjava/lang/String;Ljava/util/List;)V

    return-object v4

    .line 240
    .end local v0    # "isDefaultAndActive":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDefaultList()Lorg/jivesoftware/smack/PrivacyList;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 254
    invoke-direct {p0}, Lorg/jivesoftware/smack/PrivacyListManager;->getPrivacyWithListNames()Lorg/jivesoftware/smack/packet/Privacy;

    move-result-object v2

    .line 255
    .local v2, "privacyAnswer":Lorg/jivesoftware/smack/packet/Privacy;
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Privacy;->getDefaultName()Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, "listName":Ljava/lang/String;
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Privacy;->getActiveName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 257
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Privacy;->getDefaultName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 258
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Privacy;->getActiveName()Ljava/lang/String;

    move-result-object v4

    .line 259
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Privacy;->getDefaultName()Ljava/lang/String;

    move-result-object v5

    .line 258
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 259
    if-eqz v4, :cond_0

    move v0, v3

    .line 260
    .local v0, "isDefaultAndActive":Z
    :goto_0
    new-instance v4, Lorg/jivesoftware/smack/PrivacyList;

    invoke-direct {p0, v1}, Lorg/jivesoftware/smack/PrivacyListManager;->getPrivacyListItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v0, v3, v1, v5}, Lorg/jivesoftware/smack/PrivacyList;-><init>(ZZLjava/lang/String;Ljava/util/List;)V

    return-object v4

    .line 256
    .end local v0    # "isDefaultAndActive":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPrivacyList(Ljava/lang/String;)Lorg/jivesoftware/smack/PrivacyList;
    .locals 3
    .param p1, "listName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 291
    new-instance v0, Lorg/jivesoftware/smack/PrivacyList;

    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/PrivacyListManager;->getPrivacyListItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v2, v2, p1, v1}, Lorg/jivesoftware/smack/PrivacyList;-><init>(ZZLjava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public getPrivacyLists()[Lorg/jivesoftware/smack/PrivacyList;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 301
    invoke-direct {p0}, Lorg/jivesoftware/smack/PrivacyListManager;->getPrivacyWithListNames()Lorg/jivesoftware/smack/packet/Privacy;

    move-result-object v6

    .line 302
    .local v6, "privacyAnswer":Lorg/jivesoftware/smack/packet/Privacy;
    invoke-virtual {v6}, Lorg/jivesoftware/smack/packet/Privacy;->getPrivacyListNames()Ljava/util/Set;

    move-result-object v5

    .line 303
    .local v5, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v7

    new-array v4, v7, [Lorg/jivesoftware/smack/PrivacyList;

    .line 306
    .local v4, "lists":[Lorg/jivesoftware/smack/PrivacyList;
    const/4 v0, 0x0

    .line 307
    .local v0, "index":I
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_0

    .line 314
    return-object v4

    .line 307
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 308
    .local v3, "listName":Ljava/lang/String;
    invoke-virtual {v6}, Lorg/jivesoftware/smack/packet/Privacy;->getActiveName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 309
    .local v1, "isActiveList":Z
    invoke-virtual {v6}, Lorg/jivesoftware/smack/packet/Privacy;->getDefaultName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 310
    .local v2, "isDefaultList":Z
    new-instance v8, Lorg/jivesoftware/smack/PrivacyList;

    .line 311
    invoke-direct {p0, v3}, Lorg/jivesoftware/smack/PrivacyListManager;->getPrivacyListItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v1, v2, v3, v9}, Lorg/jivesoftware/smack/PrivacyList;-><init>(ZZLjava/lang/String;Ljava/util/List;)V

    .line 310
    aput-object v8, v4, v0

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setActiveListName(Ljava/lang/String;)V
    .locals 1
    .param p1, "listName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 327
    new-instance v0, Lorg/jivesoftware/smack/packet/Privacy;

    invoke-direct {v0}, Lorg/jivesoftware/smack/packet/Privacy;-><init>()V

    .line 328
    .local v0, "request":Lorg/jivesoftware/smack/packet/Privacy;
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/packet/Privacy;->setActiveName(Ljava/lang/String;)V

    .line 331
    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PrivacyListManager;->setRequest(Lorg/jivesoftware/smack/packet/Privacy;)Lorg/jivesoftware/smack/packet/Packet;

    .line 332
    return-void
.end method

.method public setDefaultListName(Ljava/lang/String;)V
    .locals 1
    .param p1, "listName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 358
    new-instance v0, Lorg/jivesoftware/smack/packet/Privacy;

    invoke-direct {v0}, Lorg/jivesoftware/smack/packet/Privacy;-><init>()V

    .line 359
    .local v0, "request":Lorg/jivesoftware/smack/packet/Privacy;
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/packet/Privacy;->setDefaultName(Ljava/lang/String;)V

    .line 362
    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PrivacyListManager;->setRequest(Lorg/jivesoftware/smack/packet/Privacy;)Lorg/jivesoftware/smack/packet/Packet;

    .line 363
    return-void
.end method

.method public updatePrivacyList(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "listName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/packet/PrivacyItem;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 404
    .local p2, "privacyItems":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/PrivacyItem;>;"
    new-instance v0, Lorg/jivesoftware/smack/packet/Privacy;

    invoke-direct {v0}, Lorg/jivesoftware/smack/packet/Privacy;-><init>()V

    .line 405
    .local v0, "request":Lorg/jivesoftware/smack/packet/Privacy;
    invoke-virtual {v0, p1, p2}, Lorg/jivesoftware/smack/packet/Privacy;->setPrivacyList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 408
    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PrivacyListManager;->setRequest(Lorg/jivesoftware/smack/packet/Privacy;)Lorg/jivesoftware/smack/packet/Packet;

    .line 409
    return-void
.end method
