.class public Lorg/jivesoftware/smackx/ping/packet/Ping;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "Ping.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "to"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 28
    invoke-virtual {p0, p2}, Lorg/jivesoftware/smackx/ping/packet/Ping;->setTo(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/ping/packet/Ping;->setFrom(Ljava/lang/String;)V

    .line 30
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/ping/packet/Ping;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 31
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/ping/packet/Ping;->getPacketID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/ping/packet/Ping;->setPacketID(Ljava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getChildElementXML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "<ping xmlns=\'urn:xmpp:ping\' />"

    return-object v0
.end method
