.class Lorg/jivesoftware/smackx/bytestreams/ibb/DataListener;
.super Ljava/lang/Object;
.source "DataListener.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# instance fields
.field private final dataFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

.field private final manager:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;)V
    .locals 5
    .param p1, "manager"    # Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/jivesoftware/smack/filter/PacketFilter;

    const/4 v2, 0x0

    .line 44
    new-instance v3, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v4, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Data;

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/PacketFilter;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/DataListener;->dataFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 52
    iput-object p1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/DataListener;->manager:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;

    .line 53
    return-void
.end method


# virtual methods
.method protected getFilter()Lorg/jivesoftware/smack/filter/PacketFilter;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/DataListener;->dataFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    return-object v0
.end method

.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 4
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Packet;

    .prologue
    .line 56
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Data;

    .line 57
    .local v0, "data":Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Data;
    iget-object v2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/DataListener;->manager:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->getSessions()Ljava/util/Map;

    move-result-object v2

    .line 58
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Data;->getDataPacketExtension()Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;->getSessionID()Ljava/lang/String;

    move-result-object v3

    .line 57
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;

    .line 59
    .local v1, "ibbSession":Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;
    if-nez v1, :cond_0

    .line 60
    iget-object v2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/DataListener;->manager:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->replyItemNotFoundPacket(Lorg/jivesoftware/smack/packet/IQ;)V

    .line 62
    :cond_0
    return-void
.end method
