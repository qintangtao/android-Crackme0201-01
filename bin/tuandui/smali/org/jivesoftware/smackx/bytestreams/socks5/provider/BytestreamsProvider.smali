.class public Lorg/jivesoftware/smackx/bytestreams/socks5/provider/BytestreamsProvider;
.super Ljava/lang/Object;
.source "BytestreamsProvider.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/IQProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 29
    const/4 v1, 0x0

    .line 31
    .local v1, "done":Z
    new-instance v8, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;

    invoke-direct {v8}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;-><init>()V

    .line 33
    .local v8, "toReturn":Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;
    const-string v9, ""

    const-string v10, "sid"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 34
    .local v5, "id":Ljava/lang/String;
    const-string v9, ""

    const-string v10, "mode"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 37
    .local v6, "mode":Ljava/lang/String;
    const/4 v0, 0x0

    .line 38
    .local v0, "JID":Ljava/lang/String;
    const/4 v4, 0x0

    .line 39
    .local v4, "host":Ljava/lang/String;
    const/4 v7, 0x0

    .line 43
    .local v7, "port":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 77
    invoke-static {v6}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$Mode;->fromName(Ljava/lang/String;)Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$Mode;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->setMode(Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$Mode;)V

    .line 78
    invoke-virtual {v8, v5}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->setSessionID(Ljava/lang/String;)V

    .line 79
    return-object v8

    .line 44
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 45
    .local v3, "eventType":I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "elementName":Ljava/lang/String;
    const/4 v9, 0x2

    if-ne v3, v9, :cond_4

    .line 47
    sget-object v9, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;->ELEMENTNAME:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 48
    const-string v9, ""

    const-string v10, "jid"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    const-string v9, ""

    const-string v10, "host"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 50
    const-string v9, ""

    const-string v10, "port"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    sget-object v9, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHostUsed;->ELEMENTNAME:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 53
    const-string v9, ""

    const-string v10, "jid"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->setUsedHost(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_3
    sget-object v9, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$Activate;->ELEMENTNAME:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 56
    const-string v9, ""

    const-string v10, "jid"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->setToActivate(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_4
    const/4 v9, 0x3

    if-ne v3, v9, :cond_0

    .line 60
    const-string v9, "streamhost"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 61
    if-nez v7, :cond_5

    .line 62
    invoke-virtual {v8, v0, v4}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->addStreamHost(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;

    .line 67
    :goto_1
    const/4 v0, 0x0

    .line 68
    const/4 v4, 0x0

    .line 69
    const/4 v7, 0x0

    .line 70
    goto :goto_0

    .line 65
    :cond_5
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v0, v4, v9}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->addStreamHost(Ljava/lang/String;Ljava/lang/String;I)Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;

    goto :goto_1

    .line 71
    :cond_6
    const-string v9, "query"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 72
    const/4 v1, 0x1

    goto/16 :goto_0
.end method
