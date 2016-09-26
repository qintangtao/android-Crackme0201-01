.class public Lorg/jivesoftware/smackx/Gateway;
.super Ljava/lang/Object;
.source "Gateway.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/Gateway$GatewayPresenceListener;
    }
.end annotation


# instance fields
.field private connection:Lorg/jivesoftware/smack/Connection;

.field private entityJID:Ljava/lang/String;

.field private identity:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

.field private info:Lorg/jivesoftware/smackx/packet/DiscoverInfo;

.field private registerInfo:Lorg/jivesoftware/smack/packet/Registration;

.field private roster:Lorg/jivesoftware/smack/Roster;

.field private sdManager:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;)V
    .locals 1
    .param p1, "connection"    # Lorg/jivesoftware/smack/Connection;
    .param p2, "entityJID"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/jivesoftware/smackx/Gateway;->connection:Lorg/jivesoftware/smack/Connection;

    .line 43
    invoke-virtual {p1}, Lorg/jivesoftware/smack/Connection;->getRoster()Lorg/jivesoftware/smack/Roster;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/Gateway;->roster:Lorg/jivesoftware/smack/Roster;

    .line 44
    invoke-static {p1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/Gateway;->sdManager:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    .line 45
    iput-object p2, p0, Lorg/jivesoftware/smackx/Gateway;->entityJID:Ljava/lang/String;

    .line 46
    return-void
.end method

.method constructor <init>(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;Lorg/jivesoftware/smackx/packet/DiscoverInfo;Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;)V
    .locals 0
    .param p1, "connection"    # Lorg/jivesoftware/smack/Connection;
    .param p2, "entityJID"    # Ljava/lang/String;
    .param p3, "info"    # Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    .param p4, "identity"    # Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smackx/Gateway;-><init>(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;)V

    .line 50
    iput-object p3, p0, Lorg/jivesoftware/smackx/Gateway;->info:Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    .line 51
    iput-object p4, p0, Lorg/jivesoftware/smackx/Gateway;->identity:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

    .line 52
    return-void
.end method

.method static synthetic access$0(Lorg/jivesoftware/smackx/Gateway;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/jivesoftware/smackx/Gateway;->entityJID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lorg/jivesoftware/smackx/Gateway;)Lorg/jivesoftware/smack/Roster;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lorg/jivesoftware/smackx/Gateway;->roster:Lorg/jivesoftware/smack/Roster;

    return-object v0
.end method

.method static synthetic access$2(Lorg/jivesoftware/smackx/Gateway;)Lorg/jivesoftware/smack/Connection;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/jivesoftware/smackx/Gateway;->connection:Lorg/jivesoftware/smack/Connection;

    return-object v0
.end method

.method private discoverInfo()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v2, p0, Lorg/jivesoftware/smackx/Gateway;->sdManager:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    iget-object v3, p0, Lorg/jivesoftware/smackx/Gateway;->entityJID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->discoverInfo(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    move-result-object v2

    iput-object v2, p0, Lorg/jivesoftware/smackx/Gateway;->info:Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    .line 56
    iget-object v2, p0, Lorg/jivesoftware/smackx/Gateway;->info:Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->getIdentities()Ljava/util/Iterator;

    move-result-object v0

    .line 57
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 64
    :goto_0
    return-void

    .line 58
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

    .line 59
    .local v1, "temp":Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->getCategory()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gateway"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    iput-object v1, p0, Lorg/jivesoftware/smackx/Gateway;->identity:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

    goto :goto_0
.end method

.method private getIdentity()Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lorg/jivesoftware/smackx/Gateway;->identity:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

    if-nez v0, :cond_0

    .line 68
    invoke-direct {p0}, Lorg/jivesoftware/smackx/Gateway;->discoverInfo()V

    .line 70
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/Gateway;->identity:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

    return-object v0
.end method

.method private getRegisterInfo()Lorg/jivesoftware/smack/packet/Registration;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/jivesoftware/smackx/Gateway;->registerInfo:Lorg/jivesoftware/smack/packet/Registration;

    if-nez v0, :cond_0

    .line 75
    invoke-direct {p0}, Lorg/jivesoftware/smackx/Gateway;->refreshRegisterInfo()V

    .line 77
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/Gateway;->registerInfo:Lorg/jivesoftware/smack/packet/Registration;

    return-object v0
.end method

.method private refreshRegisterInfo()V
    .locals 7

    .prologue
    .line 81
    new-instance v1, Lorg/jivesoftware/smack/packet/Registration;

    invoke-direct {v1}, Lorg/jivesoftware/smack/packet/Registration;-><init>()V

    .line 82
    .local v1, "packet":Lorg/jivesoftware/smack/packet/Registration;
    iget-object v4, p0, Lorg/jivesoftware/smackx/Gateway;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/Connection;->getUser()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/jivesoftware/smack/packet/Registration;->setFrom(Ljava/lang/String;)V

    .line 83
    sget-object v4, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v4}, Lorg/jivesoftware/smack/packet/Registration;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 84
    iget-object v4, p0, Lorg/jivesoftware/smackx/Gateway;->entityJID:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lorg/jivesoftware/smack/packet/Registration;->setTo(Ljava/lang/String;)V

    .line 86
    iget-object v4, p0, Lorg/jivesoftware/smackx/Gateway;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v5, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Registration;->getPacketID()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 87
    .local v0, "collector":Lorg/jivesoftware/smack/PacketCollector;
    iget-object v4, p0, Lorg/jivesoftware/smackx/Gateway;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v4, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 88
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v3

    .line 89
    .local v3, "result":Lorg/jivesoftware/smack/packet/Packet;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 90
    instance-of v4, v3, Lorg/jivesoftware/smack/packet/Registration;

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/Packet;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v4

    if-nez v4, :cond_0

    move-object v2, v3

    .line 91
    check-cast v2, Lorg/jivesoftware/smack/packet/Registration;

    .line 92
    .local v2, "register":Lorg/jivesoftware/smack/packet/Registration;
    iput-object v2, p0, Lorg/jivesoftware/smackx/Gateway;->registerInfo:Lorg/jivesoftware/smack/packet/Registration;

    .line 94
    .end local v2    # "register":Lorg/jivesoftware/smack/packet/Registration;
    :cond_0
    return-void
.end method


# virtual methods
.method public canRegister()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lorg/jivesoftware/smackx/Gateway;->info:Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    if-nez v0, :cond_0

    .line 103
    invoke-direct {p0}, Lorg/jivesoftware/smackx/Gateway;->discoverInfo()V

    .line 105
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/Gateway;->info:Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    const-string v1, "jabber:iq:register"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->containsFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 161
    invoke-direct {p0}, Lorg/jivesoftware/smackx/Gateway;->getRegisterInfo()Lorg/jivesoftware/smack/packet/Registration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/packet/Registration;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFieldNames()Ljava/util/List;
    .locals 1
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
    .line 169
    invoke-direct {p0}, Lorg/jivesoftware/smackx/Gateway;->getRegisterInfo()Lorg/jivesoftware/smack/packet/Registration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Registration;->getFieldNames()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInstructions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    invoke-direct {p0}, Lorg/jivesoftware/smackx/Gateway;->getRegisterInfo()Lorg/jivesoftware/smack/packet/Registration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Registration;->getInstructions()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lorg/jivesoftware/smackx/Gateway;->identity:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

    if-nez v0, :cond_0

    .line 124
    invoke-direct {p0}, Lorg/jivesoftware/smackx/Gateway;->discoverInfo()V

    .line 126
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/Gateway;->identity:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    const-string v0, "password"

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/Gateway;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequiredFields()Ljava/util/List;
    .locals 1
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
    .line 113
    invoke-direct {p0}, Lorg/jivesoftware/smackx/Gateway;->getRegisterInfo()Lorg/jivesoftware/smack/packet/Registration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Registration;->getRequiredFields()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lorg/jivesoftware/smackx/Gateway;->identity:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

    if-nez v0, :cond_0

    .line 138
    invoke-direct {p0}, Lorg/jivesoftware/smackx/Gateway;->discoverInfo()V

    .line 140
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/Gateway;->identity:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    const-string v0, "username"

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/Gateway;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isRegistered()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-direct {p0}, Lorg/jivesoftware/smackx/Gateway;->getRegisterInfo()Lorg/jivesoftware/smack/packet/Registration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Registration;->isRegistered()Z

    move-result v0

    return v0
.end method

.method public login()V
    .locals 2

    .prologue
    .line 288
    new-instance v0, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 289
    .local v0, "presence":Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/Gateway;->login(Lorg/jivesoftware/smack/packet/Presence;)V

    .line 290
    return-void
.end method

.method public login(Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 1
    .param p1, "presence"    # Lorg/jivesoftware/smack/packet/Presence;

    .prologue
    .line 298
    sget-object v0, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/Presence;->setType(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 299
    iget-object v0, p0, Lorg/jivesoftware/smackx/Gateway;->entityJID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lorg/jivesoftware/smackx/Gateway;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/Connection;->getUser()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/Presence;->setFrom(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lorg/jivesoftware/smackx/Gateway;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 302
    return-void
.end method

.method public logout()V
    .locals 2

    .prologue
    .line 309
    new-instance v0, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->unavailable:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 310
    .local v0, "presence":Lorg/jivesoftware/smack/packet/Presence;
    iget-object v1, p0, Lorg/jivesoftware/smackx/Gateway;->entityJID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    .line 311
    iget-object v1, p0, Lorg/jivesoftware/smackx/Gateway;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/Connection;->getUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;->setFrom(Ljava/lang/String;)V

    .line 312
    iget-object v1, p0, Lorg/jivesoftware/smackx/Gateway;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 313
    return-void
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 247
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lorg/jivesoftware/smackx/Gateway;->register(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 248
    return-void
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 9
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
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
    .line 204
    .local p3, "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lorg/jivesoftware/smackx/Gateway;->getRegisterInfo()Lorg/jivesoftware/smack/packet/Registration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jivesoftware/smack/packet/Registration;->isRegistered()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 205
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "You are already registered with this gateway"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 207
    :cond_0
    new-instance v0, Lorg/jivesoftware/smack/packet/Registration;

    invoke-direct {v0}, Lorg/jivesoftware/smack/packet/Registration;-><init>()V

    .line 208
    .local v0, "register":Lorg/jivesoftware/smack/packet/Registration;
    iget-object v5, p0, Lorg/jivesoftware/smackx/Gateway;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v5}, Lorg/jivesoftware/smack/Connection;->getUser()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/jivesoftware/smack/packet/Registration;->setFrom(Ljava/lang/String;)V

    .line 209
    iget-object v5, p0, Lorg/jivesoftware/smackx/Gateway;->entityJID:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lorg/jivesoftware/smack/packet/Registration;->setTo(Ljava/lang/String;)V

    .line 210
    sget-object v5, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v5}, Lorg/jivesoftware/smack/packet/Registration;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 211
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/packet/Registration;->setUsername(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0, p2}, Lorg/jivesoftware/smack/packet/Registration;->setPassword(Ljava/lang/String;)V

    .line 213
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 217
    iget-object v5, p0, Lorg/jivesoftware/smackx/Gateway;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v6, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Registration;->getPacketID()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v2

    .line 218
    .local v2, "resultCollector":Lorg/jivesoftware/smack/PacketCollector;
    iget-object v5, p0, Lorg/jivesoftware/smackx/Gateway;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v5, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 220
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v2, v6, v7}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v1

    .line 221
    .local v1, "result":Lorg/jivesoftware/smack/packet/Packet;
    invoke-virtual {v2}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 222
    if-eqz v1, :cond_4

    instance-of v5, v1, Lorg/jivesoftware/smack/packet/IQ;

    if-eqz v5, :cond_4

    move-object v3, v1

    .line 223
    check-cast v3, Lorg/jivesoftware/smack/packet/IQ;

    .line 224
    .local v3, "resultIQ":Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 225
    new-instance v5, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v5

    .line 213
    .end local v1    # "result":Lorg/jivesoftware/smack/packet/Packet;
    .end local v2    # "resultCollector":Lorg/jivesoftware/smack/PacketCollector;
    .end local v3    # "resultIQ":Lorg/jivesoftware/smack/packet/IQ;
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 214
    .local v4, "s":Ljava/lang/String;
    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/jivesoftware/smack/packet/Registration;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 227
    .end local v4    # "s":Ljava/lang/String;
    .restart local v1    # "result":Lorg/jivesoftware/smack/packet/Packet;
    .restart local v2    # "resultCollector":Lorg/jivesoftware/smack/PacketCollector;
    .restart local v3    # "resultIQ":Lorg/jivesoftware/smack/packet/IQ;
    :cond_2
    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v5

    sget-object v6, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v5, v6, :cond_3

    .line 228
    new-instance v5, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v5

    .line 230
    :cond_3
    iget-object v5, p0, Lorg/jivesoftware/smackx/Gateway;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v6, Lorg/jivesoftware/smackx/Gateway$GatewayPresenceListener;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lorg/jivesoftware/smackx/Gateway$GatewayPresenceListener;-><init>(Lorg/jivesoftware/smackx/Gateway;Lorg/jivesoftware/smackx/Gateway$GatewayPresenceListener;)V

    .line 231
    new-instance v7, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v8, Lorg/jivesoftware/smack/packet/Presence;

    invoke-direct {v7, v8}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    .line 230
    invoke-virtual {v5, v6, v7}, Lorg/jivesoftware/smack/Connection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 232
    iget-object v5, p0, Lorg/jivesoftware/smackx/Gateway;->roster:Lorg/jivesoftware/smack/Roster;

    iget-object v6, p0, Lorg/jivesoftware/smackx/Gateway;->entityJID:Ljava/lang/String;

    invoke-direct {p0}, Lorg/jivesoftware/smackx/Gateway;->getIdentity()Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

    move-result-object v7

    invoke-virtual {v7}, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8}, Lorg/jivesoftware/smack/Roster;->createEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 237
    return-void

    .line 235
    .end local v3    # "resultIQ":Lorg/jivesoftware/smack/packet/IQ;
    :cond_4
    new-instance v5, Lorg/jivesoftware/smack/XMPPException;

    const-string v6, "Packet reply timeout"

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public unregister()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 255
    new-instance v1, Lorg/jivesoftware/smack/packet/Registration;

    invoke-direct {v1}, Lorg/jivesoftware/smack/packet/Registration;-><init>()V

    .line 256
    .local v1, "register":Lorg/jivesoftware/smack/packet/Registration;
    iget-object v5, p0, Lorg/jivesoftware/smackx/Gateway;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v5}, Lorg/jivesoftware/smack/Connection;->getUser()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/jivesoftware/smack/packet/Registration;->setFrom(Ljava/lang/String;)V

    .line 257
    iget-object v5, p0, Lorg/jivesoftware/smackx/Gateway;->entityJID:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lorg/jivesoftware/smack/packet/Registration;->setTo(Ljava/lang/String;)V

    .line 258
    sget-object v5, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v5}, Lorg/jivesoftware/smack/packet/Registration;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 259
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lorg/jivesoftware/smack/packet/Registration;->setRemove(Z)V

    .line 261
    iget-object v5, p0, Lorg/jivesoftware/smackx/Gateway;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v6, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Registration;->getPacketID()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v3

    .line 262
    .local v3, "resultCollector":Lorg/jivesoftware/smack/PacketCollector;
    iget-object v5, p0, Lorg/jivesoftware/smackx/Gateway;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v5, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 263
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v3, v6, v7}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v2

    .line 264
    .local v2, "result":Lorg/jivesoftware/smack/packet/Packet;
    invoke-virtual {v3}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 265
    if-eqz v2, :cond_2

    instance-of v5, v2, Lorg/jivesoftware/smack/packet/IQ;

    if-eqz v5, :cond_2

    move-object v4, v2

    .line 266
    check-cast v4, Lorg/jivesoftware/smack/packet/IQ;

    .line 267
    .local v4, "resultIQ":Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v4}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 268
    new-instance v5, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v5

    .line 270
    :cond_0
    invoke-virtual {v4}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v5

    sget-object v6, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v5, v6, :cond_1

    .line 271
    new-instance v5, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v5

    .line 273
    :cond_1
    iget-object v5, p0, Lorg/jivesoftware/smackx/Gateway;->roster:Lorg/jivesoftware/smack/Roster;

    iget-object v6, p0, Lorg/jivesoftware/smackx/Gateway;->entityJID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/jivesoftware/smack/Roster;->getEntry(Ljava/lang/String;)Lorg/jivesoftware/smack/RosterEntry;

    move-result-object v0

    .line 274
    .local v0, "gatewayEntry":Lorg/jivesoftware/smack/RosterEntry;
    iget-object v5, p0, Lorg/jivesoftware/smackx/Gateway;->roster:Lorg/jivesoftware/smack/Roster;

    invoke-virtual {v5, v0}, Lorg/jivesoftware/smack/Roster;->removeEntry(Lorg/jivesoftware/smack/RosterEntry;)V

    .line 279
    return-void

    .line 277
    .end local v0    # "gatewayEntry":Lorg/jivesoftware/smack/RosterEntry;
    .end local v4    # "resultIQ":Lorg/jivesoftware/smack/packet/IQ;
    :cond_2
    new-instance v5, Lorg/jivesoftware/smack/XMPPException;

    const-string v6, "Packet reply timeout"

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v5
.end method
