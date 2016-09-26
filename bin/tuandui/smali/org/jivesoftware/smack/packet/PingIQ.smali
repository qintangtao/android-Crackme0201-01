.class public Lorg/jivesoftware/smack/packet/PingIQ;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "PingIQ.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "to"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 8
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/packet/PingIQ;->setTo(Ljava/lang/String;)V

    .line 9
    return-void
.end method


# virtual methods
.method public getChildElementXML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    const-string v0, "<ping xmlns=\'urn:xmpp:ping\'/>"

    return-object v0
.end method
