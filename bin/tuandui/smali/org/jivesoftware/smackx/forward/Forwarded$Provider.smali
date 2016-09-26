.class public Lorg/jivesoftware/smackx/forward/Forwarded$Provider;
.super Ljava/lang/Object;
.source "Forwarded.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/PacketExtensionProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/forward/Forwarded;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Provider"
.end annotation


# instance fields
.field dip:Lorg/jivesoftware/smackx/provider/DelayInfoProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Lorg/jivesoftware/smackx/provider/DelayInfoProvider;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/provider/DelayInfoProvider;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/forward/Forwarded$Provider;->dip:Lorg/jivesoftware/smackx/provider/DelayInfoProvider;

    .line 100
    return-void
.end method


# virtual methods
.method public parseExtension(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, "di":Lorg/jivesoftware/smackx/packet/DelayInfo;
    const/4 v3, 0x0

    .line 107
    .local v3, "packet":Lorg/jivesoftware/smack/packet/Packet;
    const/4 v1, 0x0

    .line 108
    .local v1, "done":Z
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 120
    if-nez v3, :cond_5

    .line 121
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "forwarded extension must contain a packet"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 109
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 110
    .local v2, "eventType":I
    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    .line 111
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "delay"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 112
    iget-object v4, p0, Lorg/jivesoftware/smackx/forward/Forwarded$Provider;->dip:Lorg/jivesoftware/smackx/provider/DelayInfoProvider;

    invoke-virtual {v4, p1}, Lorg/jivesoftware/smackx/provider/DelayInfoProvider;->parseExtension(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v0

    .end local v0    # "di":Lorg/jivesoftware/smackx/packet/DelayInfo;
    check-cast v0, Lorg/jivesoftware/smackx/packet/DelayInfo;

    .restart local v0    # "di":Lorg/jivesoftware/smackx/packet/DelayInfo;
    goto :goto_0

    .line 113
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "message"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 114
    invoke-static {p1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseMessage(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v3

    goto :goto_0

    .line 115
    :cond_3
    new-instance v4, Ljava/lang/Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unsupported forwarded packet type: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 117
    :cond_4
    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "forwarded"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 118
    const/4 v1, 0x1

    goto :goto_0

    .line 122
    .end local v2    # "eventType":I
    :cond_5
    new-instance v4, Lorg/jivesoftware/smackx/forward/Forwarded;

    invoke-direct {v4, v0, v3}, Lorg/jivesoftware/smackx/forward/Forwarded;-><init>(Lorg/jivesoftware/smackx/packet/DelayInfo;Lorg/jivesoftware/smack/packet/Packet;)V

    return-object v4
.end method
