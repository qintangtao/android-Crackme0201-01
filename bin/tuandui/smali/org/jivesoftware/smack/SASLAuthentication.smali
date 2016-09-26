.class public Lorg/jivesoftware/smack/SASLAuthentication;
.super Ljava/lang/Object;
.source "SASLAuthentication.java"

# interfaces
.implements Lorg/jivesoftware/smack/UserAuthentication;


# static fields
.field private static implementedMechanisms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/jivesoftware/smack/sasl/SASLMechanism;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mechanismsPreferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private connection:Lorg/jivesoftware/smack/Connection;

.field private currentMechanism:Lorg/jivesoftware/smack/sasl/SASLMechanism;

.field private errorCondition:Ljava/lang/String;

.field private resourceBinded:Z

.field private saslFailed:Z

.field private saslNegotiated:Z

.field private serverMechanisms:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sessionSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smack/SASLAuthentication;->implementedMechanisms:Ljava/util/Map;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/jivesoftware/smack/SASLAuthentication;->mechanismsPreferences:Ljava/util/List;

    .line 91
    const-string v0, "EXTERNAL"

    const-class v1, Lorg/jivesoftware/smack/sasl/SASLExternalMechanism;

    invoke-static {v0, v1}, Lorg/jivesoftware/smack/SASLAuthentication;->registerSASLMechanism(Ljava/lang/String;Ljava/lang/Class;)V

    .line 92
    const-string v0, "GSSAPI"

    const-class v1, Lorg/jivesoftware/smack/sasl/SASLGSSAPIMechanism;

    invoke-static {v0, v1}, Lorg/jivesoftware/smack/SASLAuthentication;->registerSASLMechanism(Ljava/lang/String;Ljava/lang/Class;)V

    .line 93
    const-string v0, "DIGEST-MD5"

    const-class v1, Lorg/jivesoftware/smack/sasl/SASLDigestMD5Mechanism;

    invoke-static {v0, v1}, Lorg/jivesoftware/smack/SASLAuthentication;->registerSASLMechanism(Ljava/lang/String;Ljava/lang/Class;)V

    .line 94
    const-string v0, "CRAM-MD5"

    const-class v1, Lorg/jivesoftware/smack/sasl/SASLCramMD5Mechanism;

    invoke-static {v0, v1}, Lorg/jivesoftware/smack/SASLAuthentication;->registerSASLMechanism(Ljava/lang/String;Ljava/lang/Class;)V

    .line 95
    const-string v0, "PLAIN"

    const-class v1, Lorg/jivesoftware/smack/sasl/SASLPlainMechanism;

    invoke-static {v0, v1}, Lorg/jivesoftware/smack/SASLAuthentication;->registerSASLMechanism(Ljava/lang/String;Ljava/lang/Class;)V

    .line 96
    const-string v0, "ANONYMOUS"

    const-class v1, Lorg/jivesoftware/smack/sasl/SASLAnonymous;

    invoke-static {v0, v1}, Lorg/jivesoftware/smack/SASLAuthentication;->registerSASLMechanism(Ljava/lang/String;Ljava/lang/Class;)V

    .line 99
    const-string v0, "DIGEST-MD5"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/jivesoftware/smack/SASLAuthentication;->supportSASLMechanism(Ljava/lang/String;I)V

    .line 101
    const-string v0, "PLAIN"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/jivesoftware/smack/SASLAuthentication;->supportSASLMechanism(Ljava/lang/String;I)V

    .line 102
    const-string v0, "ANONYMOUS"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/jivesoftware/smack/SASLAuthentication;->supportSASLMechanism(Ljava/lang/String;I)V

    .line 104
    return-void
.end method

.method constructor <init>(Lorg/jivesoftware/smack/Connection;)V
    .locals 1
    .param p1, "connection"    # Lorg/jivesoftware/smack/Connection;

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->serverMechanisms:Ljava/util/Collection;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->currentMechanism:Lorg/jivesoftware/smack/sasl/SASLMechanism;

    .line 180
    iput-object p1, p0, Lorg/jivesoftware/smack/SASLAuthentication;->connection:Lorg/jivesoftware/smack/Connection;

    .line 181
    invoke-virtual {p0}, Lorg/jivesoftware/smack/SASLAuthentication;->init()V

    .line 182
    return-void
.end method

.method private bindResourceAndEstablishSession(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "resource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 425
    monitor-enter p0

    .line 426
    :try_start_0
    iget-boolean v6, p0, Lorg/jivesoftware/smack/SASLAuthentication;->resourceBinded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_0

    .line 428
    const-wide/16 v6, 0x7530

    :try_start_1
    invoke-virtual {p0, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 425
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 436
    iget-boolean v6, p0, Lorg/jivesoftware/smack/SASLAuthentication;->resourceBinded:Z

    if-nez v6, :cond_1

    .line 438
    new-instance v6, Lorg/jivesoftware/smack/XMPPException;

    const-string v7, "Resource binding not offered by server"

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 425
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .line 441
    :cond_1
    new-instance v1, Lorg/jivesoftware/smack/packet/Bind;

    invoke-direct {v1}, Lorg/jivesoftware/smack/packet/Bind;-><init>()V

    .line 442
    .local v1, "bindResource":Lorg/jivesoftware/smack/packet/Bind;
    invoke-virtual {v1, p1}, Lorg/jivesoftware/smack/packet/Bind;->setResource(Ljava/lang/String;)V

    .line 444
    iget-object v6, p0, Lorg/jivesoftware/smack/SASLAuthentication;->connection:Lorg/jivesoftware/smack/Connection;

    .line 445
    new-instance v7, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Bind;->getPacketID()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v2

    .line 447
    .local v2, "collector":Lorg/jivesoftware/smack/PacketCollector;
    iget-object v6, p0, Lorg/jivesoftware/smack/SASLAuthentication;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v6, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 449
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v2, v6, v7}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/packet/Bind;

    .line 450
    .local v3, "response":Lorg/jivesoftware/smack/packet/Bind;
    invoke-virtual {v2}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 451
    if-nez v3, :cond_2

    .line 452
    new-instance v6, Lorg/jivesoftware/smack/XMPPException;

    const-string v7, "No response from the server."

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 455
    :cond_2
    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/Bind;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v6

    sget-object v7, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v6, v7, :cond_3

    .line 456
    new-instance v6, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/Bind;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v6

    .line 458
    :cond_3
    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/Bind;->getJid()Ljava/lang/String;

    move-result-object v5

    .line 460
    .local v5, "userJID":Ljava/lang/String;
    iget-boolean v6, p0, Lorg/jivesoftware/smack/SASLAuthentication;->sessionSupported:Z

    if-eqz v6, :cond_5

    .line 461
    new-instance v4, Lorg/jivesoftware/smack/packet/Session;

    invoke-direct {v4}, Lorg/jivesoftware/smack/packet/Session;-><init>()V

    .line 462
    .local v4, "session":Lorg/jivesoftware/smack/packet/Session;
    iget-object v6, p0, Lorg/jivesoftware/smack/SASLAuthentication;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v7, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/packet/Session;->getPacketID()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v2

    .line 464
    iget-object v6, p0, Lorg/jivesoftware/smack/SASLAuthentication;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v6, v4}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 466
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v2, v6, v7}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/IQ;

    .line 467
    .local v0, "ack":Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v2}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 468
    if-nez v0, :cond_4

    .line 469
    new-instance v6, Lorg/jivesoftware/smack/XMPPException;

    const-string v7, "No response from the server."

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 472
    :cond_4
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v6

    sget-object v7, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v6, v7, :cond_5

    .line 473
    new-instance v6, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v6

    .end local v0    # "ack":Lorg/jivesoftware/smack/packet/IQ;
    .end local v1    # "bindResource":Lorg/jivesoftware/smack/packet/Bind;
    .end local v2    # "collector":Lorg/jivesoftware/smack/PacketCollector;
    .end local v3    # "response":Lorg/jivesoftware/smack/packet/Bind;
    .end local v4    # "session":Lorg/jivesoftware/smack/packet/Session;
    .end local v5    # "userJID":Ljava/lang/String;
    :catch_0
    move-exception v6

    goto/16 :goto_0

    .line 476
    .restart local v1    # "bindResource":Lorg/jivesoftware/smack/packet/Bind;
    .restart local v2    # "collector":Lorg/jivesoftware/smack/PacketCollector;
    .restart local v3    # "response":Lorg/jivesoftware/smack/packet/Bind;
    .restart local v5    # "userJID":Ljava/lang/String;
    :cond_5
    return-object v5
.end method

.method public static getRegisterSASLMechanisms()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lorg/jivesoftware/smack/sasl/SASLMechanism;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v0, "answer":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;>;"
    sget-object v2, Lorg/jivesoftware/smack/SASLAuthentication;->mechanismsPreferences:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 175
    return-object v0

    .line 172
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 173
    .local v1, "mechanismsPreference":Ljava/lang/String;
    sget-object v2, Lorg/jivesoftware/smack/SASLAuthentication;->implementedMechanisms:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static registerSASLMechanism(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/jivesoftware/smack/sasl/SASLMechanism;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "mClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    sget-object v0, Lorg/jivesoftware/smack/SASLAuthentication;->implementedMechanisms:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-void
.end method

.method public static supportSASLMechanism(Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 137
    sget-object v0, Lorg/jivesoftware/smack/SASLAuthentication;->mechanismsPreferences:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 138
    return-void
.end method

.method public static supportSASLMechanism(Ljava/lang/String;I)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "index"    # I

    .prologue
    .line 151
    sget-object v0, Lorg/jivesoftware/smack/SASLAuthentication;->mechanismsPreferences:Ljava/util/List;

    invoke-interface {v0, p1, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 152
    return-void
.end method

.method public static unregisterSASLMechanism(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 124
    sget-object v0, Lorg/jivesoftware/smack/SASLAuthentication;->implementedMechanisms:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lorg/jivesoftware/smack/SASLAuthentication;->mechanismsPreferences:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 126
    return-void
.end method

.method public static unsupportSASLMechanism(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 162
    sget-object v0, Lorg/jivesoftware/smack/SASLAuthentication;->mechanismsPreferences:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 163
    return-void
.end method


# virtual methods
.method public authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "resource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 301
    const/4 v4, 0x0

    .line 302
    .local v4, "selectedMechanism":Ljava/lang/String;
    sget-object v5, Lorg/jivesoftware/smack/SASLAuthentication;->mechanismsPreferences:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 309
    :goto_0
    if-eqz v4, :cond_6

    .line 313
    :try_start_0
    sget-object v5, Lorg/jivesoftware/smack/SASLAuthentication;->implementedMechanisms:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 314
    .local v3, "mechanismClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Lorg/jivesoftware/smack/SASLAuthentication;

    aput-object v7, v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 315
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jivesoftware/smack/sasl/SASLMechanism;

    iput-object v5, p0, Lorg/jivesoftware/smack/SASLAuthentication;->currentMechanism:Lorg/jivesoftware/smack/sasl/SASLMechanism;

    .line 319
    iget-object v5, p0, Lorg/jivesoftware/smack/SASLAuthentication;->currentMechanism:Lorg/jivesoftware/smack/sasl/SASLMechanism;

    iget-object v6, p0, Lorg/jivesoftware/smack/SASLAuthentication;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v6}, Lorg/jivesoftware/smack/Connection;->getServiceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p1, v6, p2}, Lorg/jivesoftware/smack/sasl/SASLMechanism;->authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    monitor-enter p0
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 323
    :try_start_1
    iget-boolean v5, p0, Lorg/jivesoftware/smack/SASLAuthentication;->saslNegotiated:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lorg/jivesoftware/smack/SASLAuthentication;->saslFailed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_1

    .line 325
    const-wide/16 v6, 0x7530

    :try_start_2
    invoke-virtual {p0, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 322
    :cond_1
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 333
    :try_start_4
    iget-boolean v5, p0, Lorg/jivesoftware/smack/SASLAuthentication;->saslFailed:Z

    if-eqz v5, :cond_4

    .line 336
    iget-object v5, p0, Lorg/jivesoftware/smack/SASLAuthentication;->errorCondition:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 337
    new-instance v5, Lorg/jivesoftware/smack/XMPPException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SASL authentication "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/jivesoftware/smack/SASLAuthentication;->errorCondition:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 337
    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_4
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 356
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    .end local v3    # "mechanismClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    :catch_0
    move-exception v1

    .line 357
    .local v1, "e":Lorg/jivesoftware/smack/XMPPException;
    throw v1

    .line 302
    .end local v1    # "e":Lorg/jivesoftware/smack/XMPPException;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 303
    .local v2, "mechanism":Ljava/lang/String;
    sget-object v6, Lorg/jivesoftware/smack/SASLAuthentication;->implementedMechanisms:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 304
    iget-object v6, p0, Lorg/jivesoftware/smack/SASLAuthentication;->serverMechanisms:Ljava/util/Collection;

    invoke-interface {v6, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 305
    move-object v4, v2

    .line 306
    goto :goto_0

    .line 322
    .end local v2    # "mechanism":Ljava/lang/String;
    .restart local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    .restart local v3    # "mechanismClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    :catchall_0
    move-exception v5

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v5
    :try_end_6
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 359
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    .end local v3    # "mechanismClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    :catch_1
    move-exception v1

    .line 360
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 362
    new-instance v5, Lorg/jivesoftware/smack/NonSASLAuthentication;

    iget-object v6, p0, Lorg/jivesoftware/smack/SASLAuthentication;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/NonSASLAuthentication;-><init>(Lorg/jivesoftware/smack/Connection;)V

    .line 363
    invoke-virtual {v5, p1, p2, p3}, Lorg/jivesoftware/smack/NonSASLAuthentication;->authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 368
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v5

    .line 341
    .restart local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    .restart local v3    # "mechanismClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    :cond_3
    :try_start_7
    new-instance v5, Lorg/jivesoftware/smack/XMPPException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SASL authentication failed using mechanism "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 341
    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 346
    :cond_4
    iget-boolean v5, p0, Lorg/jivesoftware/smack/SASLAuthentication;->saslNegotiated:Z

    if-eqz v5, :cond_5

    .line 348
    invoke-direct {p0, p3}, Lorg/jivesoftware/smack/SASLAuthentication;->bindResourceAndEstablishSession(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 352
    :cond_5
    new-instance v5, Lorg/jivesoftware/smack/NonSASLAuthentication;

    iget-object v6, p0, Lorg/jivesoftware/smack/SASLAuthentication;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/NonSASLAuthentication;-><init>(Lorg/jivesoftware/smack/Connection;)V

    .line 353
    invoke-virtual {v5, p1, p2, p3}, Lorg/jivesoftware/smack/NonSASLAuthentication;->authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-result-object v5

    goto :goto_2

    .line 368
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    .end local v3    # "mechanismClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    :cond_6
    new-instance v5, Lorg/jivesoftware/smack/NonSASLAuthentication;

    iget-object v6, p0, Lorg/jivesoftware/smack/SASLAuthentication;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/NonSASLAuthentication;-><init>(Lorg/jivesoftware/smack/Connection;)V

    invoke-virtual {v5, p1, p2, p3}, Lorg/jivesoftware/smack/NonSASLAuthentication;->authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .restart local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    .restart local v3    # "mechanismClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    :catch_2
    move-exception v5

    goto/16 :goto_1
.end method

.method public authenticate(Ljava/lang/String;Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)Ljava/lang/String;
    .locals 8
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "resource"    # Ljava/lang/String;
    .param p3, "cbh"    # Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 219
    const/4 v4, 0x0

    .line 220
    .local v4, "selectedMechanism":Ljava/lang/String;
    sget-object v5, Lorg/jivesoftware/smack/SASLAuthentication;->mechanismsPreferences:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 227
    :goto_0
    if-eqz v4, :cond_6

    .line 231
    :try_start_0
    sget-object v5, Lorg/jivesoftware/smack/SASLAuthentication;->implementedMechanisms:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 232
    .local v3, "mechanismClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Lorg/jivesoftware/smack/SASLAuthentication;

    aput-object v7, v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 233
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jivesoftware/smack/sasl/SASLMechanism;

    iput-object v5, p0, Lorg/jivesoftware/smack/SASLAuthentication;->currentMechanism:Lorg/jivesoftware/smack/sasl/SASLMechanism;

    .line 237
    iget-object v5, p0, Lorg/jivesoftware/smack/SASLAuthentication;->currentMechanism:Lorg/jivesoftware/smack/sasl/SASLMechanism;

    iget-object v6, p0, Lorg/jivesoftware/smack/SASLAuthentication;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v6}, Lorg/jivesoftware/smack/Connection;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p1, v6, p3}, Lorg/jivesoftware/smack/sasl/SASLMechanism;->authenticate(Ljava/lang/String;Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)V

    .line 240
    monitor-enter p0
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 241
    :try_start_1
    iget-boolean v5, p0, Lorg/jivesoftware/smack/SASLAuthentication;->saslNegotiated:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lorg/jivesoftware/smack/SASLAuthentication;->saslFailed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_1

    .line 243
    const-wide/16 v6, 0x7530

    :try_start_2
    invoke-virtual {p0, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 240
    :cond_1
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 251
    :try_start_4
    iget-boolean v5, p0, Lorg/jivesoftware/smack/SASLAuthentication;->saslFailed:Z

    if-eqz v5, :cond_5

    .line 254
    iget-object v5, p0, Lorg/jivesoftware/smack/SASLAuthentication;->errorCondition:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 255
    new-instance v5, Lorg/jivesoftware/smack/XMPPException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SASL authentication "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/jivesoftware/smack/SASLAuthentication;->errorCondition:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 255
    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_4
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 271
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    .end local v3    # "mechanismClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    :catch_0
    move-exception v1

    .line 272
    .local v1, "e":Lorg/jivesoftware/smack/XMPPException;
    throw v1

    .line 220
    .end local v1    # "e":Lorg/jivesoftware/smack/XMPPException;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 221
    .local v2, "mechanism":Ljava/lang/String;
    sget-object v6, Lorg/jivesoftware/smack/SASLAuthentication;->implementedMechanisms:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 222
    iget-object v6, p0, Lorg/jivesoftware/smack/SASLAuthentication;->serverMechanisms:Ljava/util/Collection;

    invoke-interface {v6, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 223
    move-object v4, v2

    .line 224
    goto :goto_0

    .line 240
    .end local v2    # "mechanism":Ljava/lang/String;
    .restart local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    .restart local v3    # "mechanismClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    :catchall_0
    move-exception v5

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v5
    :try_end_6
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 274
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    .end local v3    # "mechanismClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    :catch_1
    move-exception v1

    .line 275
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 281
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    new-instance v5, Lorg/jivesoftware/smack/XMPPException;

    const-string v6, "SASL authentication failed"

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 259
    .restart local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    .restart local v3    # "mechanismClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    :cond_4
    :try_start_7
    new-instance v5, Lorg/jivesoftware/smack/XMPPException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SASL authentication failed using mechanism "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 259
    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 264
    :cond_5
    iget-boolean v5, p0, Lorg/jivesoftware/smack/SASLAuthentication;->saslNegotiated:Z

    if-eqz v5, :cond_3

    .line 266
    invoke-direct {p0, p2}, Lorg/jivesoftware/smack/SASLAuthentication;->bindResourceAndEstablishSession(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-result-object v5

    return-object v5

    .line 279
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    .end local v3    # "mechanismClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    :cond_6
    new-instance v5, Lorg/jivesoftware/smack/XMPPException;

    const-string v6, "SASL Authentication failed. No known authentication mechanisims."

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v5

    .restart local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    .restart local v3    # "mechanismClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    :catch_2
    move-exception v5

    goto :goto_1
.end method

.method public authenticateAnonymously()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 385
    :try_start_0
    new-instance v0, Lorg/jivesoftware/smack/sasl/SASLAnonymous;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/sasl/SASLAnonymous;-><init>(Lorg/jivesoftware/smack/SASLAuthentication;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->currentMechanism:Lorg/jivesoftware/smack/sasl/SASLMechanism;

    .line 386
    iget-object v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->currentMechanism:Lorg/jivesoftware/smack/sasl/SASLMechanism;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/sasl/SASLMechanism;->authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    :try_start_1
    iget-boolean v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->saslNegotiated:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->saslFailed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    .line 392
    const-wide/16 v0, 0x1388

    :try_start_2
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 389
    :cond_0
    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 400
    :try_start_4
    iget-boolean v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->saslFailed:Z

    if-eqz v0, :cond_2

    .line 403
    iget-object v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->errorCondition:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 404
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SASL authentication failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/jivesoftware/smack/SASLAuthentication;->errorCondition:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 419
    :catch_0
    move-exception v0

    new-instance v0, Lorg/jivesoftware/smack/NonSASLAuthentication;

    iget-object v1, p0, Lorg/jivesoftware/smack/SASLAuthentication;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/NonSASLAuthentication;-><init>(Lorg/jivesoftware/smack/Connection;)V

    invoke-virtual {v0}, Lorg/jivesoftware/smack/NonSASLAuthentication;->authenticateAnonymously()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .line 389
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    .line 407
    :cond_1
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "SASL authentication failed"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :cond_2
    iget-boolean v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->saslNegotiated:Z

    if-eqz v0, :cond_3

    .line 413
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/SASLAuthentication;->bindResourceAndEstablishSession(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 416
    :cond_3
    new-instance v0, Lorg/jivesoftware/smack/NonSASLAuthentication;

    iget-object v1, p0, Lorg/jivesoftware/smack/SASLAuthentication;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/NonSASLAuthentication;-><init>(Lorg/jivesoftware/smack/Connection;)V

    invoke-virtual {v0}, Lorg/jivesoftware/smack/NonSASLAuthentication;->authenticateAnonymously()Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method authenticated()V
    .locals 1

    .prologue
    .line 518
    monitor-enter p0

    .line 519
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->saslNegotiated:Z

    .line 521
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 518
    monitor-exit p0

    .line 523
    return-void

    .line 518
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method authenticationFailed()V
    .locals 1

    .prologue
    .line 532
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/SASLAuthentication;->authenticationFailed(Ljava/lang/String;)V

    .line 533
    return-void
.end method

.method authenticationFailed(Ljava/lang/String;)V
    .locals 1
    .param p1, "condition"    # Ljava/lang/String;

    .prologue
    .line 542
    monitor-enter p0

    .line 543
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->saslFailed:Z

    .line 544
    iput-object p1, p0, Lorg/jivesoftware/smack/SASLAuthentication;->errorCondition:Ljava/lang/String;

    .line 546
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 542
    monitor-exit p0

    .line 548
    return-void

    .line 542
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method bindingRequired()V
    .locals 1

    .prologue
    .line 555
    monitor-enter p0

    .line 556
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->resourceBinded:Z

    .line 558
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 555
    monitor-exit p0

    .line 560
    return-void

    .line 555
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method challengeReceived(Ljava/lang/String;)V
    .locals 1
    .param p1, "challenge"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 510
    iget-object v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->currentMechanism:Lorg/jivesoftware/smack/sasl/SASLMechanism;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/sasl/SASLMechanism;->challengeReceived(Ljava/lang/String;)V

    .line 511
    return-void
.end method

.method public hasAnonymousAuthentication()Z
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->serverMechanisms:Ljava/util/Collection;

    const-string v1, "ANONYMOUS"

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasNonAnonymousAuthentication()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 199
    iget-object v1, p0, Lorg/jivesoftware/smack/SASLAuthentication;->serverMechanisms:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/jivesoftware/smack/SASLAuthentication;->serverMechanisms:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lorg/jivesoftware/smack/SASLAuthentication;->hasAnonymousAuthentication()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected init()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 581
    iput-boolean v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->saslNegotiated:Z

    .line 582
    iput-boolean v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->saslFailed:Z

    .line 583
    iput-boolean v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->resourceBinded:Z

    .line 584
    iput-boolean v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->sessionSupported:Z

    .line 585
    return-void
.end method

.method public isAuthenticated()Z
    .locals 1

    .prologue
    .line 497
    iget-boolean v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->saslNegotiated:Z

    return v0
.end method

.method public send(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 1
    .param p1, "stanza"    # Lorg/jivesoftware/smack/packet/Packet;

    .prologue
    .line 563
    iget-object v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 564
    return-void
.end method

.method sessionsSupported()V
    .locals 1

    .prologue
    .line 572
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->sessionSupported:Z

    .line 573
    return-void
.end method

.method setAvailableSASLMethods(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 488
    .local p1, "mechanisms":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/jivesoftware/smack/SASLAuthentication;->serverMechanisms:Ljava/util/Collection;

    .line 489
    return-void
.end method
