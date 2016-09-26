.class public Lorg/jivesoftware/smackx/OfflineMessageManager;
.super Ljava/lang/Object;
.source "OfflineMessageManager.java"


# static fields
.field private static final namespace:Ljava/lang/String; = "http://jabber.org/protocol/offline"


# instance fields
.field private connection:Lorg/jivesoftware/smack/Connection;

.field private packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/Connection;)V
    .locals 6
    .param p1, "connection"    # Lorg/jivesoftware/smack/Connection;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/jivesoftware/smackx/OfflineMessageManager;->connection:Lorg/jivesoftware/smack/Connection;

    .line 67
    new-instance v0, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/jivesoftware/smack/filter/PacketFilter;

    const/4 v2, 0x0

    new-instance v3, Lorg/jivesoftware/smack/filter/PacketExtensionFilter;

    const-string v4, "offline"

    const-string v5, "http://jabber.org/protocol/offline"

    invoke-direct {v3, v4, v5}, Lorg/jivesoftware/smack/filter/PacketExtensionFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 68
    new-instance v3, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v4, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    .line 67
    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 66
    iput-object v0, p0, Lorg/jivesoftware/smackx/OfflineMessageManager;->packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 69
    return-void
.end method


# virtual methods
.method public deleteMessages()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 266
    new-instance v1, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;-><init>()V

    .line 267
    .local v1, "request":Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;->setPurge(Z)V

    .line 269
    new-instance v3, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;->getPacketID()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    .line 270
    .local v3, "responseFilter":Lorg/jivesoftware/smack/filter/PacketFilter;
    iget-object v4, p0, Lorg/jivesoftware/smackx/OfflineMessageManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v4, v3}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v2

    .line 272
    .local v2, "response":Lorg/jivesoftware/smack/PacketCollector;
    iget-object v4, p0, Lorg/jivesoftware/smackx/OfflineMessageManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v4, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 274
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/IQ;

    .line 276
    .local v0, "answer":Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v2}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 278
    if-nez v0, :cond_0

    .line 279
    new-instance v4, Lorg/jivesoftware/smack/XMPPException;

    const-string v5, "No response from server."

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 280
    :cond_0
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 281
    new-instance v4, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v4

    .line 283
    :cond_1
    return-void
.end method

.method public deleteMessages(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 236
    .local p1, "nodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;-><init>()V

    .line 237
    .local v3, "request":Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 243
    new-instance v5, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;->getPacketID()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    .line 244
    .local v5, "responseFilter":Lorg/jivesoftware/smack/filter/PacketFilter;
    iget-object v6, p0, Lorg/jivesoftware/smackx/OfflineMessageManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v6, v5}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v4

    .line 246
    .local v4, "response":Lorg/jivesoftware/smack/PacketCollector;
    iget-object v6, p0, Lorg/jivesoftware/smackx/OfflineMessageManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v6, v3}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 248
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/IQ;

    .line 250
    .local v0, "answer":Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v4}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 252
    if-nez v0, :cond_1

    .line 253
    new-instance v6, Lorg/jivesoftware/smack/XMPPException;

    const-string v7, "No response from server."

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 237
    .end local v0    # "answer":Lorg/jivesoftware/smack/packet/IQ;
    .end local v4    # "response":Lorg/jivesoftware/smack/PacketCollector;
    .end local v5    # "responseFilter":Lorg/jivesoftware/smack/filter/PacketFilter;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 238
    .local v2, "node":Ljava/lang/String;
    new-instance v1, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest$Item;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest$Item;-><init>(Ljava/lang/String;)V

    .line 239
    .local v1, "item":Lorg/jivesoftware/smackx/packet/OfflineMessageRequest$Item;
    const-string v7, "remove"

    invoke-virtual {v1, v7}, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest$Item;->setAction(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v3, v1}, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;->addItem(Lorg/jivesoftware/smackx/packet/OfflineMessageRequest$Item;)V

    goto :goto_0

    .line 254
    .end local v1    # "item":Lorg/jivesoftware/smackx/packet/OfflineMessageRequest$Item;
    .end local v2    # "node":Ljava/lang/String;
    .restart local v0    # "answer":Lorg/jivesoftware/smack/packet/IQ;
    .restart local v4    # "response":Lorg/jivesoftware/smack/PacketCollector;
    .restart local v5    # "responseFilter":Lorg/jivesoftware/smack/filter/PacketFilter;
    :cond_1
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 255
    new-instance v6, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v6

    .line 257
    :cond_2
    return-void
.end method

.method public getHeaders()Ljava/util/Iterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/jivesoftware/smackx/OfflineMessageHeader;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v0, "answer":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/OfflineMessageHeader;>;"
    iget-object v4, p0, Lorg/jivesoftware/smackx/OfflineMessageManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-static {v4}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v4

    .line 115
    const/4 v5, 0x0

    const-string v6, "http://jabber.org/protocol/offline"

    .line 114
    invoke-virtual {v4, v5, v6}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->discoverItems(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverItems;

    move-result-object v3

    .line 116
    .local v3, "items":Lorg/jivesoftware/smackx/packet/DiscoverItems;
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->getItems()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 120
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    return-object v4

    .line 117
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;

    .line 118
    .local v2, "item":Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;
    new-instance v4, Lorg/jivesoftware/smackx/OfflineMessageHeader;

    invoke-direct {v4, v2}, Lorg/jivesoftware/smackx/OfflineMessageHeader;-><init>(Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getMessageCount()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v3, p0, Lorg/jivesoftware/smackx/OfflineMessageManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-static {v3}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v3

    const/4 v4, 0x0

    .line 93
    const-string v5, "http://jabber.org/protocol/offline"

    .line 92
    invoke-virtual {v3, v4, v5}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->discoverInfo(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    move-result-object v1

    .line 94
    .local v1, "info":Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    invoke-static {v1}, Lorg/jivesoftware/smackx/Form;->getFormFrom(Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smackx/Form;

    move-result-object v0

    .line 95
    .local v0, "extendedInfo":Lorg/jivesoftware/smackx/Form;
    if-eqz v0, :cond_0

    .line 96
    const-string v3, "number_of_messages"

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smackx/Form;->getField(Ljava/lang/String;)Lorg/jivesoftware/smackx/FormField;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/FormField;->getValues()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 97
    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 99
    .end local v2    # "value":Ljava/lang/String;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getMessages()Ljava/util/Iterator;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/jivesoftware/smack/packet/Message;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 192
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v3, "messages":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/Message;>;"
    new-instance v4, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;-><init>()V

    .line 194
    .local v4, "request":Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;->setFetch(Z)V

    .line 196
    new-instance v6, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v4}, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;->getPacketID()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    .line 197
    .local v6, "responseFilter":Lorg/jivesoftware/smack/filter/PacketFilter;
    iget-object v7, p0, Lorg/jivesoftware/smackx/OfflineMessageManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v7, v6}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v5

    .line 199
    .local v5, "response":Lorg/jivesoftware/smack/PacketCollector;
    iget-object v7, p0, Lorg/jivesoftware/smackx/OfflineMessageManager;->connection:Lorg/jivesoftware/smack/Connection;

    iget-object v8, p0, Lorg/jivesoftware/smackx/OfflineMessageManager;->packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-virtual {v7, v8}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v2

    .line 201
    .local v2, "messageCollector":Lorg/jivesoftware/smack/PacketCollector;
    iget-object v7, p0, Lorg/jivesoftware/smackx/OfflineMessageManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v7, v4}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 203
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v5, v8, v9}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/IQ;

    .line 205
    .local v0, "answer":Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v5}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 207
    if-nez v0, :cond_0

    .line 208
    new-instance v7, Lorg/jivesoftware/smack/XMPPException;

    const-string v8, "No response from server."

    invoke-direct {v7, v8}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 209
    :cond_0
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 210
    new-instance v7, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v7

    .line 215
    :cond_1
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v7

    int-to-long v8, v7

    .line 214
    invoke-virtual {v2, v8, v9}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/Message;

    .line 216
    .local v1, "message":Lorg/jivesoftware/smack/packet/Message;
    :goto_0
    if-nez v1, :cond_2

    .line 223
    invoke-virtual {v2}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 224
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    return-object v7

    .line 217
    :cond_2
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v7

    int-to-long v8, v7

    .line 219
    invoke-virtual {v2, v8, v9}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v1

    .end local v1    # "message":Lorg/jivesoftware/smack/packet/Message;
    check-cast v1, Lorg/jivesoftware/smack/packet/Message;

    .line 218
    .restart local v1    # "message":Lorg/jivesoftware/smack/packet/Message;
    goto :goto_0
.end method

.method public getMessages(Ljava/util/List;)Ljava/util/Iterator;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Iterator",
            "<",
            "Lorg/jivesoftware/smack/packet/Message;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "nodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v5, "messages":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/Message;>;"
    new-instance v7, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;

    invoke-direct {v7}, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;-><init>()V

    .line 138
    .local v7, "request":Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_0

    .line 144
    new-instance v9, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v7}, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;->getPacketID()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    .line 145
    .local v9, "responseFilter":Lorg/jivesoftware/smack/filter/PacketFilter;
    iget-object v10, p0, Lorg/jivesoftware/smackx/OfflineMessageManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v10, v9}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v8

    .line 147
    .local v8, "response":Lorg/jivesoftware/smack/PacketCollector;
    new-instance v4, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v10, 0x2

    new-array v10, v10, [Lorg/jivesoftware/smack/filter/PacketFilter;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/jivesoftware/smackx/OfflineMessageManager;->packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    new-instance v12, Lorg/jivesoftware/smackx/OfflineMessageManager$1;

    invoke-direct {v12, p0, p1}, Lorg/jivesoftware/smackx/OfflineMessageManager$1;-><init>(Lorg/jivesoftware/smackx/OfflineMessageManager;Ljava/util/List;)V

    aput-object v12, v10, v11

    invoke-direct {v4, v10}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 154
    .local v4, "messageFilter":Lorg/jivesoftware/smack/filter/PacketFilter;
    iget-object v10, p0, Lorg/jivesoftware/smackx/OfflineMessageManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v10, v4}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v3

    .line 156
    .local v3, "messageCollector":Lorg/jivesoftware/smack/PacketCollector;
    iget-object v10, p0, Lorg/jivesoftware/smackx/OfflineMessageManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v10, v7}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 158
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v8, v10, v11}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/IQ;

    .line 160
    .local v0, "answer":Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v8}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 162
    if-nez v0, :cond_1

    .line 163
    new-instance v10, Lorg/jivesoftware/smack/XMPPException;

    const-string v11, "No response from server."

    invoke-direct {v10, v11}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 138
    .end local v0    # "answer":Lorg/jivesoftware/smack/packet/IQ;
    .end local v3    # "messageCollector":Lorg/jivesoftware/smack/PacketCollector;
    .end local v4    # "messageFilter":Lorg/jivesoftware/smack/filter/PacketFilter;
    .end local v8    # "response":Lorg/jivesoftware/smack/PacketCollector;
    .end local v9    # "responseFilter":Lorg/jivesoftware/smack/filter/PacketFilter;
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 139
    .local v6, "node":Ljava/lang/String;
    new-instance v1, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest$Item;

    invoke-direct {v1, v6}, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest$Item;-><init>(Ljava/lang/String;)V

    .line 140
    .local v1, "item":Lorg/jivesoftware/smackx/packet/OfflineMessageRequest$Item;
    const-string v11, "view"

    invoke-virtual {v1, v11}, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest$Item;->setAction(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v7, v1}, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;->addItem(Lorg/jivesoftware/smackx/packet/OfflineMessageRequest$Item;)V

    goto :goto_0

    .line 164
    .end local v1    # "item":Lorg/jivesoftware/smackx/packet/OfflineMessageRequest$Item;
    .end local v6    # "node":Ljava/lang/String;
    .restart local v0    # "answer":Lorg/jivesoftware/smack/packet/IQ;
    .restart local v3    # "messageCollector":Lorg/jivesoftware/smack/PacketCollector;
    .restart local v4    # "messageFilter":Lorg/jivesoftware/smack/filter/PacketFilter;
    .restart local v8    # "response":Lorg/jivesoftware/smack/PacketCollector;
    .restart local v9    # "responseFilter":Lorg/jivesoftware/smack/filter/PacketFilter;
    :cond_1
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 165
    new-instance v10, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v10

    .line 170
    :cond_2
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v10

    int-to-long v10, v10

    .line 169
    invoke-virtual {v3, v10, v11}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/packet/Message;

    .line 171
    .local v2, "message":Lorg/jivesoftware/smack/packet/Message;
    :goto_1
    if-nez v2, :cond_3

    .line 178
    invoke-virtual {v3}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 179
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    return-object v10

    .line 172
    :cond_3
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v10

    int-to-long v10, v10

    .line 174
    invoke-virtual {v3, v10, v11}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v2

    .end local v2    # "message":Lorg/jivesoftware/smack/packet/Message;
    check-cast v2, Lorg/jivesoftware/smack/packet/Message;

    .line 173
    .restart local v2    # "message":Lorg/jivesoftware/smack/packet/Message;
    goto :goto_1
.end method

.method public supportsFlexibleRetrieval()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v1, p0, Lorg/jivesoftware/smackx/OfflineMessageManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-static {v1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smackx/OfflineMessageManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/Connection;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->discoverInfo(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    move-result-object v0

    .line 81
    .local v0, "info":Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    const-string v1, "http://jabber.org/protocol/offline"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->containsFeature(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method
