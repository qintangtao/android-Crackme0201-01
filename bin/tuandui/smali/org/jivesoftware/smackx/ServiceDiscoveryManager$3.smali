.class Lorg/jivesoftware/smackx/ServiceDiscoveryManager$3;
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
    iput-object p1, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager$3;->this$0:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 6
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Packet;

    .prologue
    .line 151
    iget-object v4, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager$3;->this$0:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    # getter for: Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->connection:Ljava/lang/ref/WeakReference;
    invoke-static {v4}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->access$0(Lorg/jivesoftware/smackx/ServiceDiscoveryManager;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/Connection;

    .line 152
    .local v0, "connection":Lorg/jivesoftware/smack/Connection;
    if-nez v0, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, p1

    .line 153
    check-cast v1, Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    .line 155
    .local v1, "discoverInfo":Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v4

    sget-object v5, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v4, v5, :cond_0

    .line 156
    new-instance v3, Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;-><init>()V

    .line 157
    .local v3, "response":Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    sget-object v4, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 158
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->getFrom()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->setTo(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->getPacketID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->setPacketID(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->getNode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->setNode(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->getNode()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 166
    iget-object v4, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager$3;->this$0:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    invoke-virtual {v4, v3}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->addDiscoverInfoTo(Lorg/jivesoftware/smackx/packet/DiscoverInfo;)V

    .line 187
    :goto_1
    invoke-virtual {v0, v3}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0

    .line 172
    :cond_2
    iget-object v4, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager$3;->this$0:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->getNode()Ljava/lang/String;

    move-result-object v5

    # invokes: Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getNodeInformationProvider(Ljava/lang/String;)Lorg/jivesoftware/smackx/NodeInformationProvider;
    invoke-static {v4, v5}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->access$1(Lorg/jivesoftware/smackx/ServiceDiscoveryManager;Ljava/lang/String;)Lorg/jivesoftware/smackx/NodeInformationProvider;

    move-result-object v2

    .line 173
    .local v2, "nodeInformationProvider":Lorg/jivesoftware/smackx/NodeInformationProvider;
    if-eqz v2, :cond_3

    .line 175
    invoke-interface {v2}, Lorg/jivesoftware/smackx/NodeInformationProvider;->getNodeFeatures()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->addFeatures(Ljava/util/Collection;)V

    .line 177
    invoke-interface {v2}, Lorg/jivesoftware/smackx/NodeInformationProvider;->getNodeIdentities()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->addIdentities(Ljava/util/Collection;)V

    .line 179
    invoke-interface {v2}, Lorg/jivesoftware/smackx/NodeInformationProvider;->getNodePacketExtensions()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->addExtensions(Ljava/util/Collection;)V

    goto :goto_1

    .line 183
    :cond_3
    sget-object v4, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 184
    new-instance v4, Lorg/jivesoftware/smack/packet/XMPPError;

    sget-object v5, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->item_not_found:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;)V

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->setError(Lorg/jivesoftware/smack/packet/XMPPError;)V

    goto :goto_1
.end method
