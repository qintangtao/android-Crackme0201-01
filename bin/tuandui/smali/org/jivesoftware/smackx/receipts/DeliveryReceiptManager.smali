.class public Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;
.super Ljava/lang/Object;
.source "DeliveryReceiptManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# static fields
.field private static instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/jivesoftware/smack/Connection;",
            "Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private auto_receipts_enabled:Z

.field private connection:Lorg/jivesoftware/smack/Connection;

.field private receiptReceivedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/jivesoftware/smackx/receipts/ReceiptReceivedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 44
    sput-object v0, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;->instances:Ljava/util/Map;

    .line 48
    new-instance v0, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$1;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$1;-><init>()V

    invoke-static {v0}, Lorg/jivesoftware/smack/Connection;->addConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V

    .line 53
    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/Connection;)V
    .locals 3
    .param p1, "connection"    # Lorg/jivesoftware/smack/Connection;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;->auto_receipts_enabled:Z

    .line 58
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;->receiptReceivedListeners:Ljava/util/Set;

    .line 61
    invoke-static {p1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v0

    .line 62
    .local v0, "sdm":Lorg/jivesoftware/smackx/ServiceDiscoveryManager;
    const-string v1, "urn:xmpp:receipts"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->addFeature(Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;->connection:Lorg/jivesoftware/smack/Connection;

    .line 64
    sget-object v1, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;->instances:Ljava/util/Map;

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance v1, Lorg/jivesoftware/smack/filter/PacketExtensionFilter;

    const-string v2, "urn:xmpp:receipts"

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/filter/PacketExtensionFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v1}, Lorg/jivesoftware/smack/Connection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 68
    return-void
.end method

.method public static addDeliveryReceiptRequest(Lorg/jivesoftware/smack/packet/Message;)V
    .locals 1
    .param p0, "m"    # Lorg/jivesoftware/smack/packet/Message;

    .prologue
    .line 200
    new-instance v0, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptRequest;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptRequest;-><init>()V

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/packet/Message;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 201
    return-void
.end method

.method public static declared-synchronized getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;
    .locals 3
    .param p0, "connection"    # Lorg/jivesoftware/smack/Connection;

    .prologue
    .line 78
    const-class v2, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;->instances:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;

    .line 80
    .local v0, "receiptManager":Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;
    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;

    .end local v0    # "receiptManager":Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;
    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;-><init>(Lorg/jivesoftware/smack/Connection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .restart local v0    # "receiptManager":Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;
    :cond_0
    monitor-exit v2

    return-object v0

    .line 78
    .end local v0    # "receiptManager":Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static hasDeliveryReceiptRequest(Lorg/jivesoftware/smack/packet/Packet;)Z
    .locals 2
    .param p0, "p"    # Lorg/jivesoftware/smack/packet/Packet;

    .prologue
    .line 187
    const-string v0, "request"

    .line 188
    const-string v1, "urn:xmpp:receipts"

    .line 187
    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/packet/Packet;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addReceiptReceivedListener(Lorg/jivesoftware/smackx/receipts/ReceiptReceivedListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/jivesoftware/smackx/receipts/ReceiptReceivedListener;

    .prologue
    .line 167
    iget-object v0, p0, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;->receiptReceivedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 168
    return-void
.end method

.method public disableAutoReceipts()V
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;->setAutoReceiptsEnabled(Z)V

    .line 152
    return-void
.end method

.method public enableAutoReceipts()V
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;->setAutoReceiptsEnabled(Z)V

    .line 145
    return-void
.end method

.method public getAutoReceiptsEnabled()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;->auto_receipts_enabled:Z

    return v0
.end method

.method public isSupported(Ljava/lang/String;)Z
    .locals 2
    .param p1, "jid"    # Ljava/lang/String;

    .prologue
    .line 96
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-static {v1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->discoverInfo(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    move-result-object v0

    .line 97
    .local v0, "result":Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    const-string v1, "urn:xmpp:receipts"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->containsFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 100
    .end local v0    # "result":Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    :goto_0
    return v1

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 8
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Packet;

    .prologue
    .line 107
    .line 108
    const-string v4, "received"

    const-string v5, "urn:xmpp:receipts"

    .line 107
    invoke-virtual {p1, v4, v5}, Lorg/jivesoftware/smack/packet/Packet;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/receipts/DeliveryReceipt;

    .line 109
    .local v1, "dr":Lorg/jivesoftware/smackx/receipts/DeliveryReceipt;
    if-eqz v1, :cond_0

    .line 111
    iget-object v4, p0, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;->receiptReceivedListeners:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 118
    :cond_0
    iget-boolean v4, p0, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;->auto_receipts_enabled:Z

    if-eqz v4, :cond_1

    .line 120
    const-string v4, "request"

    const-string v5, "urn:xmpp:receipts"

    .line 119
    invoke-virtual {p1, v4, v5}, Lorg/jivesoftware/smack/packet/Packet;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptRequest;

    .line 121
    .local v2, "drr":Lorg/jivesoftware/smackx/receipts/DeliveryReceiptRequest;
    if-eqz v2, :cond_1

    .line 122
    new-instance v0, Lorg/jivesoftware/smack/packet/Message;

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getFrom()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/jivesoftware/smack/packet/Message$Type;->normal:Lorg/jivesoftware/smack/packet/Message$Type;

    invoke-direct {v0, v4, v5}, Lorg/jivesoftware/smack/packet/Message;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/packet/Message$Type;)V

    .line 123
    .local v0, "ack":Lorg/jivesoftware/smack/packet/Message;
    new-instance v4, Lorg/jivesoftware/smackx/receipts/DeliveryReceipt;

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getPacketID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jivesoftware/smackx/receipts/DeliveryReceipt;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lorg/jivesoftware/smack/packet/Message;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 124
    iget-object v4, p0, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v4, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 127
    .end local v0    # "ack":Lorg/jivesoftware/smack/packet/Message;
    .end local v2    # "drr":Lorg/jivesoftware/smackx/receipts/DeliveryReceiptRequest;
    :cond_1
    return-void

    .line 111
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smackx/receipts/ReceiptReceivedListener;

    .line 112
    .local v3, "l":Lorg/jivesoftware/smackx/receipts/ReceiptReceivedListener;
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getFrom()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getTo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/receipts/DeliveryReceipt;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v5, v6, v7}, Lorg/jivesoftware/smackx/receipts/ReceiptReceivedListener;->onReceiptReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeReceiptReceivedListener(Lorg/jivesoftware/smackx/receipts/ReceiptReceivedListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/jivesoftware/smackx/receipts/ReceiptReceivedListener;

    .prologue
    .line 176
    iget-object v0, p0, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;->receiptReceivedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 177
    return-void
.end method

.method public setAutoReceiptsEnabled(Z)V
    .locals 0
    .param p1, "new_state"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;->auto_receipts_enabled:Z

    .line 138
    return-void
.end method
