.class Lorg/jivesoftware/smackx/ServiceDiscoveryManager$2;
.super Ljava/lang/Object;
.source "ServiceDiscoveryManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/ServiceDiscoveryManager;-><init>(Lorg/jivesoftware/smack/Connection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/ServiceDiscoveryManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager$2;->this$0:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 6
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Packet;

    .prologue
    .line 114
    iget-object v4, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager$2;->this$0:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    # getter for: Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->connection:Ljava/lang/ref/WeakReference;
    invoke-static {v4}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->access$0(Lorg/jivesoftware/smackx/ServiceDiscoveryManager;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/Connection;

    .line 115
    .local v0, "connection":Lorg/jivesoftware/smack/Connection;
    if-nez v0, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, p1

    .line 116
    check-cast v1, Lorg/jivesoftware/smackx/packet/DiscoverItems;

    .line 118
    .local v1, "discoverItems":Lorg/jivesoftware/smackx/packet/DiscoverItems;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v4

    sget-object v5, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v4, v5, :cond_0

    .line 119
    new-instance v3, Lorg/jivesoftware/smackx/packet/DiscoverItems;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/packet/DiscoverItems;-><init>()V

    .line 120
    .local v3, "response":Lorg/jivesoftware/smackx/packet/DiscoverItems;
    sget-object v4, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 121
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->getFrom()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->setTo(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->getPacketID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->setPacketID(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->getNode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->setNode(Ljava/lang/String;)V

    .line 128
    iget-object v4, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager$2;->this$0:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->getNode()Ljava/lang/String;

    move-result-object v5

    # invokes: Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getNodeInformationProvider(Ljava/lang/String;)Lorg/jivesoftware/smackx/NodeInformationProvider;
    invoke-static {v4, v5}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->access$1(Lorg/jivesoftware/smackx/ServiceDiscoveryManager;Ljava/lang/String;)Lorg/jivesoftware/smackx/NodeInformationProvider;

    move-result-object v2

    .line 129
    .local v2, "nodeInformationProvider":Lorg/jivesoftware/smackx/NodeInformationProvider;
    if-eqz v2, :cond_3

    .line 131
    invoke-interface {v2}, Lorg/jivesoftware/smackx/NodeInformationProvider;->getNodeItems()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->addItems(Ljava/util/Collection;)V

    .line 133
    invoke-interface {v2}, Lorg/jivesoftware/smackx/NodeInformationProvider;->getNodePacketExtensions()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->addExtensions(Ljava/util/Collection;)V

    .line 140
    :cond_2
    :goto_1
    invoke-virtual {v0, v3}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0

    .line 134
    :cond_3
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->getNode()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 137
    sget-object v4, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 138
    new-instance v4, Lorg/jivesoftware/smack/packet/XMPPError;

    sget-object v5, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->item_not_found:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;)V

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->setError(Lorg/jivesoftware/smack/packet/XMPPError;)V

    goto :goto_1
.end method
