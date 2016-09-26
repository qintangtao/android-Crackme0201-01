.class public Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;
.super Ljava/lang/Object;
.source "Socks5BytestreamRequest.java"

# interfaces
.implements Lorg/jivesoftware/smackx/bytestreams/BytestreamRequest;


# static fields
.field private static final ADDRESS_BLACKLIST:Lorg/jivesoftware/smack/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jivesoftware/smack/util/Cache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final BLACKLIST_LIFETIME:J = 0x6ddd00L

.field private static final BLACKLIST_MAX_SIZE:I = 0x64

.field private static CONNECTION_FAILURE_THRESHOLD:I


# instance fields
.field private bytestreamRequest:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;

.field private manager:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;

.field private minimumConnectTimeout:I

.field private totalConnectTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 43
    new-instance v0, Lorg/jivesoftware/smack/util/Cache;

    .line 44
    const/16 v1, 0x64

    const-wide/32 v2, 0x6ddd00

    .line 43
    invoke-direct {v0, v1, v2, v3}, Lorg/jivesoftware/smack/util/Cache;-><init>(IJ)V

    sput-object v0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->ADDRESS_BLACKLIST:Lorg/jivesoftware/smack/util/Cache;

    .line 51
    const/4 v0, 0x2

    sput v0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->CONNECTION_FAILURE_THRESHOLD:I

    return-void
.end method

.method protected constructor <init>(Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;)V
    .locals 1
    .param p1, "manager"    # Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;
    .param p2, "bytestreamRequest"    # Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/16 v0, 0x2710

    iput v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->totalConnectTimeout:I

    .line 63
    const/16 v0, 0x7d0

    iput v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->minimumConnectTimeout:I

    .line 98
    iput-object p1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->manager:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;

    .line 99
    iput-object p2, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->bytestreamRequest:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;

    .line 100
    return-void
.end method

.method private cancelRequest()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 273
    const-string v2, "Could not establish socket with any provided host"

    .line 274
    .local v2, "errorMessage":Ljava/lang/String;
    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError;

    sget-object v3, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->item_not_found:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    invoke-direct {v0, v3, v2}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;Ljava/lang/String;)V

    .line 275
    .local v0, "error":Lorg/jivesoftware/smack/packet/XMPPError;
    iget-object v3, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->bytestreamRequest:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;

    invoke-static {v3, v0}, Lorg/jivesoftware/smack/packet/IQ;->createErrorResponse(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/packet/XMPPError;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v1

    .line 276
    .local v1, "errorIQ":Lorg/jivesoftware/smack/packet/IQ;
    iget-object v3, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->manager:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->getConnection()Lorg/jivesoftware/smack/Connection;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 277
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    invoke-direct {v3, v2, v0}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v3
.end method

.method private createUsedHostResponse(Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;)Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;
    .locals 2
    .param p1, "selectedHost"    # Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;

    .prologue
    .line 287
    new-instance v0, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;

    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->bytestreamRequest:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->getSessionID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;-><init>(Ljava/lang/String;)V

    .line 288
    .local v0, "response":Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;
    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->bytestreamRequest:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->setTo(Ljava/lang/String;)V

    .line 289
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 290
    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->bytestreamRequest:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->getPacketID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->setPacketID(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;->getJID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->setUsedHost(Ljava/lang/String;)V

    .line 292
    return-object v0
.end method

.method public static getConnectFailureThreshold()I
    .locals 1

    .prologue
    .line 74
    sget v0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->CONNECTION_FAILURE_THRESHOLD:I

    return v0
.end method

.method private getConnectionFailures(Ljava/lang/String;)I
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 312
    sget-object v1, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->ADDRESS_BLACKLIST:Lorg/jivesoftware/smack/util/Cache;

    invoke-virtual {v1, p1}, Lorg/jivesoftware/smack/util/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 313
    .local v0, "count":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private incrementConnectionFailures(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 301
    sget-object v1, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->ADDRESS_BLACKLIST:Lorg/jivesoftware/smack/util/Cache;

    invoke-virtual {v1, p1}, Lorg/jivesoftware/smack/util/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 302
    .local v0, "count":Ljava/lang/Integer;
    sget-object v2, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->ADDRESS_BLACKLIST:Lorg/jivesoftware/smack/util/Cache;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Lorg/jivesoftware/smack/util/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    return-void

    .line 302
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static setConnectFailureThreshold(I)V
    .locals 0
    .param p0, "connectFailureThreshold"    # I

    .prologue
    .line 88
    sput p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->CONNECTION_FAILURE_THRESHOLD:I

    .line 89
    return-void
.end method


# virtual methods
.method public bridge synthetic accept()Lorg/jivesoftware/smackx/bytestreams/BytestreamSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->accept()Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamSession;

    move-result-object v0

    return-object v0
.end method

.method public accept()Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamSession;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 190
    iget-object v10, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->bytestreamRequest:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;

    invoke-virtual {v10}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->getStreamHosts()Ljava/util/Collection;

    move-result-object v8

    .line 193
    .local v8, "streamHosts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;>;"
    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v10

    if-nez v10, :cond_0

    .line 194
    invoke-direct {p0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->cancelRequest()V

    .line 197
    :cond_0
    const/4 v4, 0x0

    .line 198
    .local v4, "selectedHost":Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;
    const/4 v5, 0x0

    .line 200
    .local v5, "socket":Ljava/net/Socket;
    iget-object v10, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->bytestreamRequest:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;

    invoke-virtual {v10}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->getSessionID()Ljava/lang/String;

    move-result-object v10

    .line 201
    iget-object v11, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->bytestreamRequest:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;

    invoke-virtual {v11}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->getFrom()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->manager:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;

    invoke-virtual {v12}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->getConnection()Lorg/jivesoftware/smack/Connection;

    move-result-object v12

    invoke-virtual {v12}, Lorg/jivesoftware/smack/Connection;->getUser()Ljava/lang/String;

    move-result-object v12

    .line 200
    invoke-static {v10, v11, v12}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Utils;->createDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, "digest":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->getTotalConnectTimeout()I

    move-result v10

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v11

    div-int/2addr v10, v11

    .line 208
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->getMinimumConnectTimeout()I

    move-result v11

    .line 207
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 210
    .local v9, "timeout":I
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_4

    .line 246
    :goto_1
    if-eqz v4, :cond_2

    if-nez v5, :cond_3

    .line 247
    :cond_2
    invoke-direct {p0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->cancelRequest()V

    .line 251
    :cond_3
    invoke-direct {p0, v4}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->createUsedHostResponse(Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;)Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;

    move-result-object v3

    .line 252
    .local v3, "response":Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;
    iget-object v10, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->manager:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;

    invoke-virtual {v10}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->getConnection()Lorg/jivesoftware/smack/Connection;

    move-result-object v10

    invoke-virtual {v10, v3}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 254
    new-instance v10, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamSession;

    invoke-virtual {v4}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;->getJID()Ljava/lang/String;

    move-result-object v11

    .line 255
    iget-object v12, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->bytestreamRequest:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;

    invoke-virtual {v12}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->getFrom()Ljava/lang/String;

    move-result-object v12

    .line 254
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    invoke-direct {v10, v5, v11}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamSession;-><init>(Ljava/net/Socket;Z)V

    return-object v10

    .line 210
    .end local v3    # "response":Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;
    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;

    .line 211
    .local v7, "streamHost":Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;->getAddress()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;->getPort()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "address":Ljava/lang/String;
    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->getConnectionFailures(Ljava/lang/String;)I

    move-result v2

    .line 215
    .local v2, "failures":I
    sget v11, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->CONNECTION_FAILURE_THRESHOLD:I

    if-lez v11, :cond_5

    sget v11, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->CONNECTION_FAILURE_THRESHOLD:I

    if-ge v2, v11, :cond_1

    .line 223
    :cond_5
    :try_start_0
    new-instance v6, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client;

    invoke-direct {v6, v7, v1}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client;-><init>(Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;Ljava/lang/String;)V

    .line 226
    .local v6, "socks5Client":Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client;
    invoke-virtual {v6, v9}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client;->getSocket(I)Ljava/net/Socket;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    .line 229
    move-object v4, v7

    goto :goto_1

    .line 234
    .end local v6    # "socks5Client":Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client;
    :catch_0
    move-exception v11

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->incrementConnectionFailures(Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :catch_1
    move-exception v11

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->incrementConnectionFailures(Ljava/lang/String;)V

    goto :goto_0

    .line 240
    :catch_2
    move-exception v11

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->incrementConnectionFailures(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->bytestreamRequest:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->getFrom()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMinimumConnectTimeout()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->minimumConnectTimeout:I

    if-gtz v0, :cond_0

    .line 145
    const/16 v0, 0x7d0

    .line 147
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->minimumConnectTimeout:I

    goto :goto_0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->bytestreamRequest:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->getSessionID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTotalConnectTimeout()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->totalConnectTimeout:I

    if-gtz v0, :cond_0

    .line 116
    const/16 v0, 0x2710

    .line 118
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->totalConnectTimeout:I

    goto :goto_0
.end method

.method public reject()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->manager:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;

    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->bytestreamRequest:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->replyRejectPacket(Lorg/jivesoftware/smack/packet/IQ;)V

    .line 264
    return-void
.end method

.method public setMinimumConnectTimeout(I)V
    .locals 0
    .param p1, "minimumConnectTimeout"    # I

    .prologue
    .line 157
    iput p1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->minimumConnectTimeout:I

    .line 158
    return-void
.end method

.method public setTotalConnectTimeout(I)V
    .locals 0
    .param p1, "totalConnectTimeout"    # I

    .prologue
    .line 134
    iput p1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;->totalConnectTimeout:I

    .line 135
    return-void
.end method
