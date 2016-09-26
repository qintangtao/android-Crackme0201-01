.class public Lorg/jivesoftware/smackx/GatewayManager;
.super Ljava/lang/Object;
.source "GatewayManager.java"


# static fields
.field private static instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/jivesoftware/smack/Connection;",
            "Lorg/jivesoftware/smackx/GatewayManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private connection:Lorg/jivesoftware/smack/Connection;

.field private gateways:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smackx/Gateway;",
            ">;"
        }
    .end annotation
.end field

.field private localGateways:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smackx/Gateway;",
            ">;"
        }
    .end annotation
.end field

.field private nonLocalGateways:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smackx/Gateway;",
            ">;"
        }
    .end annotation
.end field

.field private roster:Lorg/jivesoftware/smack/Roster;

.field private sdManager:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 30
    sput-object v0, Lorg/jivesoftware/smackx/GatewayManager;->instances:Ljava/util/Map;

    .line 31
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/GatewayManager;->localGateways:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/GatewayManager;->nonLocalGateways:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/GatewayManager;->gateways:Ljava/util/Map;

    .line 47
    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/Connection;)V
    .locals 1
    .param p1, "connection"    # Lorg/jivesoftware/smack/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/GatewayManager;->localGateways:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/GatewayManager;->nonLocalGateways:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/GatewayManager;->gateways:Ljava/util/Map;

    .line 55
    iput-object p1, p0, Lorg/jivesoftware/smackx/GatewayManager;->connection:Lorg/jivesoftware/smack/Connection;

    .line 56
    invoke-virtual {p1}, Lorg/jivesoftware/smack/Connection;->getRoster()Lorg/jivesoftware/smack/Roster;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/GatewayManager;->roster:Lorg/jivesoftware/smack/Roster;

    .line 57
    invoke-static {p1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/GatewayManager;->sdManager:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    .line 58
    return-void
.end method

.method private discoverGateway(Ljava/lang/String;)V
    .locals 7
    .param p1, "itemJID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v4, p0, Lorg/jivesoftware/smackx/GatewayManager;->sdManager:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    invoke-virtual {v4, p1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->discoverInfo(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    move-result-object v3

    .line 81
    .local v3, "info":Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->getIdentities()Ljava/util/Iterator;

    move-result-object v1

    .line 83
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 99
    :goto_0
    return-void

    .line 84
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

    .line 85
    .local v2, "identity":Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->getCategory()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "category":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "gateway"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 87
    iget-object v4, p0, Lorg/jivesoftware/smackx/GatewayManager;->gateways:Ljava/util/Map;

    new-instance v5, Lorg/jivesoftware/smackx/Gateway;

    iget-object v6, p0, Lorg/jivesoftware/smackx/GatewayManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-direct {v5, v6, p1}, Lorg/jivesoftware/smackx/Gateway;-><init>(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;)V

    invoke-interface {v4, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v4, p0, Lorg/jivesoftware/smackx/GatewayManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/Connection;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 89
    iget-object v4, p0, Lorg/jivesoftware/smackx/GatewayManager;->localGateways:Ljava/util/Map;

    .line 90
    new-instance v5, Lorg/jivesoftware/smackx/Gateway;

    iget-object v6, p0, Lorg/jivesoftware/smackx/GatewayManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-direct {v5, v6, p1, v3, v2}, Lorg/jivesoftware/smackx/Gateway;-><init>(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;Lorg/jivesoftware/smackx/packet/DiscoverInfo;Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;)V

    .line 89
    invoke-interface {v4, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 93
    :cond_2
    iget-object v4, p0, Lorg/jivesoftware/smackx/GatewayManager;->nonLocalGateways:Ljava/util/Map;

    .line 94
    new-instance v5, Lorg/jivesoftware/smackx/Gateway;

    iget-object v6, p0, Lorg/jivesoftware/smackx/GatewayManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-direct {v5, v6, p1, v3, v2}, Lorg/jivesoftware/smackx/Gateway;-><init>(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;Lorg/jivesoftware/smackx/packet/DiscoverInfo;Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;)V

    .line 93
    invoke-interface {v4, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private loadLocalGateways()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v3, p0, Lorg/jivesoftware/smackx/GatewayManager;->sdManager:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    iget-object v4, p0, Lorg/jivesoftware/smackx/GatewayManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/Connection;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->discoverItems(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverItems;

    move-result-object v1

    .line 66
    .local v1, "items":Lorg/jivesoftware/smackx/packet/DiscoverItems;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->getItems()Ljava/util/Iterator;

    move-result-object v2

    .line 67
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 71
    return-void

    .line 68
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;->getEntityID()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "itemJID":Ljava/lang/String;
    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/GatewayManager;->discoverGateway(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadNonLocalGateways()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v1, p0, Lorg/jivesoftware/smackx/GatewayManager;->roster:Lorg/jivesoftware/smack/Roster;

    if-eqz v1, :cond_1

    .line 108
    iget-object v1, p0, Lorg/jivesoftware/smackx/GatewayManager;->roster:Lorg/jivesoftware/smack/Roster;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/Roster;->getEntries()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 115
    :cond_1
    return-void

    .line 108
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/RosterEntry;

    .line 109
    .local v0, "entry":Lorg/jivesoftware/smack/RosterEntry;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/RosterEntry;->getUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jivesoftware/smack/RosterEntry;->getUser()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jivesoftware/smack/util/StringUtils;->parseServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    invoke-virtual {v0}, Lorg/jivesoftware/smack/RosterEntry;->getUser()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/jivesoftware/smackx/GatewayManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/Connection;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 111
    invoke-virtual {v0}, Lorg/jivesoftware/smack/RosterEntry;->getUser()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/jivesoftware/smackx/GatewayManager;->discoverGateway(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getGateway(Ljava/lang/String;)Lorg/jivesoftware/smackx/Gateway;
    .locals 2
    .param p1, "entityJID"    # Ljava/lang/String;

    .prologue
    .line 179
    iget-object v1, p0, Lorg/jivesoftware/smackx/GatewayManager;->localGateways:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lorg/jivesoftware/smackx/GatewayManager;->localGateways:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/Gateway;

    .line 196
    :goto_0
    return-object v1

    .line 182
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/GatewayManager;->nonLocalGateways:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    iget-object v1, p0, Lorg/jivesoftware/smackx/GatewayManager;->nonLocalGateways:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/Gateway;

    goto :goto_0

    .line 185
    :cond_1
    iget-object v1, p0, Lorg/jivesoftware/smackx/GatewayManager;->gateways:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 186
    iget-object v1, p0, Lorg/jivesoftware/smackx/GatewayManager;->gateways:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/Gateway;

    goto :goto_0

    .line 188
    :cond_2
    new-instance v0, Lorg/jivesoftware/smackx/Gateway;

    iget-object v1, p0, Lorg/jivesoftware/smackx/GatewayManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-direct {v0, v1, p1}, Lorg/jivesoftware/smackx/Gateway;-><init>(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;)V

    .line 189
    .local v0, "gateway":Lorg/jivesoftware/smackx/Gateway;
    iget-object v1, p0, Lorg/jivesoftware/smackx/GatewayManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/Connection;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 190
    iget-object v1, p0, Lorg/jivesoftware/smackx/GatewayManager;->localGateways:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :goto_1
    iget-object v1, p0, Lorg/jivesoftware/smackx/GatewayManager;->gateways:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 196
    goto :goto_0

    .line 193
    :cond_3
    iget-object v1, p0, Lorg/jivesoftware/smackx/GatewayManager;->nonLocalGateways:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/GatewayManager;
    .locals 3
    .param p1, "connection"    # Lorg/jivesoftware/smack/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 125
    sget-object v2, Lorg/jivesoftware/smackx/GatewayManager;->instances:Ljava/util/Map;

    monitor-enter v2

    .line 126
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/GatewayManager;->instances:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    sget-object v1, Lorg/jivesoftware/smackx/GatewayManager;->instances:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/GatewayManager;

    monitor-exit v2

    .line 131
    :goto_0
    return-object v1

    .line 129
    :cond_0
    new-instance v0, Lorg/jivesoftware/smackx/GatewayManager;

    invoke-direct {v0, p1}, Lorg/jivesoftware/smackx/GatewayManager;-><init>(Lorg/jivesoftware/smack/Connection;)V

    .line 130
    .local v0, "instance":Lorg/jivesoftware/smackx/GatewayManager;
    sget-object v1, Lorg/jivesoftware/smackx/GatewayManager;->instances:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    monitor-exit v2

    move-object v1, v0

    goto :goto_0

    .line 125
    .end local v0    # "instance":Lorg/jivesoftware/smackx/GatewayManager;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLocalGateways()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/Gateway;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lorg/jivesoftware/smackx/GatewayManager;->localGateways:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 143
    invoke-direct {p0}, Lorg/jivesoftware/smackx/GatewayManager;->loadLocalGateways()V

    .line 145
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/jivesoftware/smackx/GatewayManager;->localGateways:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getNonLocalGateways()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/Gateway;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lorg/jivesoftware/smackx/GatewayManager;->nonLocalGateways:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 157
    invoke-direct {p0}, Lorg/jivesoftware/smackx/GatewayManager;->loadNonLocalGateways()V

    .line 159
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/jivesoftware/smackx/GatewayManager;->nonLocalGateways:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public refreshNonLocalGateways()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-direct {p0}, Lorg/jivesoftware/smackx/GatewayManager;->loadNonLocalGateways()V

    .line 168
    return-void
.end method
