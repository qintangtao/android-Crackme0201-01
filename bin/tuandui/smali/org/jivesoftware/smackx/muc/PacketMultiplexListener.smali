.class Lorg/jivesoftware/smackx/muc/PacketMultiplexListener;
.super Ljava/lang/Object;
.source "PacketMultiplexListener.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# static fields
.field private static final DECLINES_FILTER:Lorg/jivesoftware/smack/filter/PacketFilter;

.field private static final MESSAGE_FILTER:Lorg/jivesoftware/smack/filter/PacketFilter;

.field private static final PRESENCE_FILTER:Lorg/jivesoftware/smack/filter/PacketFilter;

.field private static final SUBJECT_FILTER:Lorg/jivesoftware/smack/filter/PacketFilter;


# instance fields
.field private declinesListener:Lorg/jivesoftware/smack/PacketListener;

.field private messageCollector:Lorg/jivesoftware/smackx/muc/ConnectionDetachedPacketCollector;

.field private presenceListener:Lorg/jivesoftware/smack/PacketListener;

.field private subjectListener:Lorg/jivesoftware/smack/PacketListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Lorg/jivesoftware/smack/filter/MessageTypeFilter;

    sget-object v1, Lorg/jivesoftware/smack/packet/Message$Type;->groupchat:Lorg/jivesoftware/smack/packet/Message$Type;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/filter/MessageTypeFilter;-><init>(Lorg/jivesoftware/smack/packet/Message$Type;)V

    .line 40
    sput-object v0, Lorg/jivesoftware/smackx/muc/PacketMultiplexListener;->MESSAGE_FILTER:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 42
    new-instance v0, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v1, Lorg/jivesoftware/smack/packet/Presence;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/jivesoftware/smackx/muc/PacketMultiplexListener;->PRESENCE_FILTER:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 43
    new-instance v0, Lorg/jivesoftware/smackx/muc/PacketMultiplexListener$1;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/muc/PacketMultiplexListener$1;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/muc/PacketMultiplexListener;->SUBJECT_FILTER:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 50
    new-instance v0, Lorg/jivesoftware/smack/filter/PacketExtensionFilter;

    const-string v1, "x"

    .line 51
    const-string v2, "http://jabber.org/protocol/muc#user"

    .line 50
    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smack/filter/PacketExtensionFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    sput-object v0, Lorg/jivesoftware/smackx/muc/PacketMultiplexListener;->DECLINES_FILTER:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/muc/ConnectionDetachedPacketCollector;Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/PacketListener;)V
    .locals 2
    .param p1, "messageCollector"    # Lorg/jivesoftware/smackx/muc/ConnectionDetachedPacketCollector;
    .param p2, "presenceListener"    # Lorg/jivesoftware/smack/PacketListener;
    .param p3, "subjectListener"    # Lorg/jivesoftware/smack/PacketListener;
    .param p4, "declinesListener"    # Lorg/jivesoftware/smack/PacketListener;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    if-nez p1, :cond_0

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MessageCollector is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    if-nez p2, :cond_1

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Presence listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_1
    if-nez p3, :cond_2

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Subject listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_2
    if-nez p4, :cond_3

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Declines listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_3
    iput-object p1, p0, Lorg/jivesoftware/smackx/muc/PacketMultiplexListener;->messageCollector:Lorg/jivesoftware/smackx/muc/ConnectionDetachedPacketCollector;

    .line 75
    iput-object p2, p0, Lorg/jivesoftware/smackx/muc/PacketMultiplexListener;->presenceListener:Lorg/jivesoftware/smack/PacketListener;

    .line 76
    iput-object p3, p0, Lorg/jivesoftware/smackx/muc/PacketMultiplexListener;->subjectListener:Lorg/jivesoftware/smack/PacketListener;

    .line 77
    iput-object p4, p0, Lorg/jivesoftware/smackx/muc/PacketMultiplexListener;->declinesListener:Lorg/jivesoftware/smack/PacketListener;

    .line 78
    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 1
    .param p1, "p"    # Lorg/jivesoftware/smack/packet/Packet;

    .prologue
    .line 81
    sget-object v0, Lorg/jivesoftware/smackx/muc/PacketMultiplexListener;->PRESENCE_FILTER:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-interface {v0, p1}, Lorg/jivesoftware/smack/filter/PacketFilter;->accept(Lorg/jivesoftware/smack/packet/Packet;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/PacketMultiplexListener;->presenceListener:Lorg/jivesoftware/smack/PacketListener;

    invoke-interface {v0, p1}, Lorg/jivesoftware/smack/PacketListener;->processPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    sget-object v0, Lorg/jivesoftware/smackx/muc/PacketMultiplexListener;->MESSAGE_FILTER:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-interface {v0, p1}, Lorg/jivesoftware/smack/filter/PacketFilter;->accept(Lorg/jivesoftware/smack/packet/Packet;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/PacketMultiplexListener;->messageCollector:Lorg/jivesoftware/smackx/muc/ConnectionDetachedPacketCollector;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/muc/ConnectionDetachedPacketCollector;->processPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 87
    sget-object v0, Lorg/jivesoftware/smackx/muc/PacketMultiplexListener;->SUBJECT_FILTER:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-interface {v0, p1}, Lorg/jivesoftware/smack/filter/PacketFilter;->accept(Lorg/jivesoftware/smack/packet/Packet;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/PacketMultiplexListener;->subjectListener:Lorg/jivesoftware/smack/PacketListener;

    invoke-interface {v0, p1}, Lorg/jivesoftware/smack/PacketListener;->processPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0

    .line 91
    :cond_2
    sget-object v0, Lorg/jivesoftware/smackx/muc/PacketMultiplexListener;->DECLINES_FILTER:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-interface {v0, p1}, Lorg/jivesoftware/smack/filter/PacketFilter;->accept(Lorg/jivesoftware/smack/packet/Packet;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/PacketMultiplexListener;->declinesListener:Lorg/jivesoftware/smack/PacketListener;

    invoke-interface {v0, p1}, Lorg/jivesoftware/smack/PacketListener;->processPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0
.end method
