.class public Lorg/jivesoftware/smack/BOSHPacketReader;
.super Ljava/lang/Object;
.source "BOSHPacketReader.java"

# interfaces
.implements Lcom/kenai/jbosh/BOSHClientResponseListener;


# instance fields
.field private connection:Lorg/jivesoftware/smack/BOSHConnection;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/BOSHConnection;)V
    .locals 0
    .param p1, "connection"    # Lorg/jivesoftware/smack/BOSHConnection;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->connection:Lorg/jivesoftware/smack/BOSHConnection;

    .line 56
    return-void
.end method

.method private parseFeatures(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 168
    return-void

    .line 140
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 142
    .local v1, "eventType":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 143
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mechanisms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 149
    iget-object v2, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->connection:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/BOSHConnection;->getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;

    move-result-object v2

    .line 150
    invoke-static {p1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseMechanisms(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Collection;

    move-result-object v3

    .line 149
    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/SASLAuthentication;->setAvailableSASLMethods(Ljava/util/Collection;)V

    goto :goto_0

    .line 151
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "bind"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 154
    iget-object v2, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->connection:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/BOSHConnection;->getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smack/SASLAuthentication;->bindingRequired()V

    goto :goto_0

    .line 155
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "session"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 157
    iget-object v2, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->connection:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/BOSHConnection;->getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smack/SASLAuthentication;->sessionsSupported()V

    goto :goto_0

    .line 158
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "register"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    iget-object v2, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->connection:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/BOSHConnection;->getAccountManager()Lorg/jivesoftware/smack/AccountManager;

    move-result-object v2

    .line 160
    const/4 v3, 0x1

    .line 159
    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/AccountManager;->setSupportsAccountCreation(Z)V

    goto :goto_0

    .line 162
    :cond_5
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 163
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "features"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public responseReceived(Lcom/kenai/jbosh/BOSHMessageEvent;)V
    .locals 12
    .param p1, "event"    # Lcom/kenai/jbosh/BOSHMessageEvent;

    .prologue
    const/4 v11, 0x1

    .line 64
    invoke-virtual {p1}, Lcom/kenai/jbosh/BOSHMessageEvent;->getBody()Lcom/kenai/jbosh/AbstractBody;

    move-result-object v0

    .line 65
    .local v0, "body":Lcom/kenai/jbosh/AbstractBody;
    if-eqz v0, :cond_4

    .line 67
    :try_start_0
    iget-object v6, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->connection:Lorg/jivesoftware/smack/BOSHConnection;

    iget-object v6, v6, Lorg/jivesoftware/smack/BOSHConnection;->sessionID:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 68
    iget-object v6, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->connection:Lorg/jivesoftware/smack/BOSHConnection;

    const-string v7, "http://jabber.org/protocol/httpbind"

    const-string v8, "sid"

    invoke-static {v7, v8}, Lcom/kenai/jbosh/BodyQName;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/kenai/jbosh/BodyQName;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/kenai/jbosh/AbstractBody;->getAttribute(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lorg/jivesoftware/smack/BOSHConnection;->sessionID:Ljava/lang/String;

    .line 70
    :cond_0
    iget-object v6, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->connection:Lorg/jivesoftware/smack/BOSHConnection;

    iget-object v6, v6, Lorg/jivesoftware/smack/BOSHConnection;->authID:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 71
    iget-object v6, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->connection:Lorg/jivesoftware/smack/BOSHConnection;

    const-string v7, "http://jabber.org/protocol/httpbind"

    const-string v8, "authid"

    invoke-static {v7, v8}, Lcom/kenai/jbosh/BodyQName;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/kenai/jbosh/BodyQName;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/kenai/jbosh/AbstractBody;->getAttribute(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lorg/jivesoftware/smack/BOSHConnection;->authID:Ljava/lang/String;

    .line 73
    :cond_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v6

    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 74
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v6, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    .line 75
    const/4 v7, 0x1

    .line 74
    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 76
    new-instance v6, Ljava/io/StringReader;

    invoke-virtual {v0}, Lcom/kenai/jbosh/AbstractBody;->toXML()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 77
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 79
    .local v3, "eventType":I
    :cond_2
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 80
    const/4 v6, 0x2

    if-ne v3, v6, :cond_3

    .line 81
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "body"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 83
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "message"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 84
    iget-object v6, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->connection:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-static {v5}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseMessage(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/jivesoftware/smack/BOSHConnection;->processPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 121
    :cond_3
    :goto_0
    if-ne v3, v11, :cond_2

    .line 129
    .end local v3    # "eventType":I
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_4
    :goto_1
    return-void

    .line 85
    .restart local v3    # "eventType":I
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_5
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "iq"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 86
    iget-object v6, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->connection:Lorg/jivesoftware/smack/BOSHConnection;

    iget-object v7, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->connection:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-static {v5, v7}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseIQ(Lorg/xmlpull/v1/XmlPullParser;Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/jivesoftware/smack/BOSHConnection;->processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    .end local v3    # "eventType":I
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v2

    .line 124
    .local v2, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->connection:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-virtual {v6}, Lorg/jivesoftware/smack/BOSHConnection;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 125
    iget-object v6, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->connection:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-virtual {v6, v2}, Lorg/jivesoftware/smack/BOSHConnection;->notifyConnectionError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 87
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "eventType":I
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_6
    :try_start_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "presence"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 88
    iget-object v6, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->connection:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-static {v5}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parsePresence(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Presence;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/jivesoftware/smack/BOSHConnection;->processPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0

    .line 89
    :cond_7
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "challenge"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 92
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "challengeData":Ljava/lang/String;
    iget-object v6, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->connection:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-virtual {v6}, Lorg/jivesoftware/smack/BOSHConnection;->getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;

    move-result-object v6

    .line 94
    invoke-virtual {v6, v1}, Lorg/jivesoftware/smack/SASLAuthentication;->challengeReceived(Ljava/lang/String;)V

    .line 95
    iget-object v6, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->connection:Lorg/jivesoftware/smack/BOSHConnection;

    new-instance v7, Lorg/jivesoftware/smack/sasl/SASLMechanism$Challenge;

    .line 96
    invoke-direct {v7, v1}, Lorg/jivesoftware/smack/sasl/SASLMechanism$Challenge;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v6, v7}, Lorg/jivesoftware/smack/BOSHConnection;->processPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0

    .line 97
    .end local v1    # "challengeData":Ljava/lang/String;
    :cond_8
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "success"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 98
    iget-object v6, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->connection:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-static {}, Lcom/kenai/jbosh/ComposableBody;->builder()Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v7

    .line 99
    const-string v8, "xmpp"

    const-string v9, "urn:xmpp:xbosh"

    invoke-virtual {v7, v8, v9}, Lcom/kenai/jbosh/ComposableBody$Builder;->setNamespaceDefinition(Ljava/lang/String;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v7

    .line 101
    const-string v8, "urn:xmpp:xbosh"

    const-string v9, "restart"

    const-string v10, "xmpp"

    invoke-static {v8, v9, v10}, Lcom/kenai/jbosh/BodyQName;->createWithPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kenai/jbosh/BodyQName;

    move-result-object v8

    .line 102
    const-string v9, "true"

    .line 100
    invoke-virtual {v7, v8, v9}, Lcom/kenai/jbosh/ComposableBody$Builder;->setAttribute(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v7

    .line 104
    const-string v8, "http://jabber.org/protocol/httpbind"

    const-string v9, "to"

    invoke-static {v8, v9}, Lcom/kenai/jbosh/BodyQName;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/kenai/jbosh/BodyQName;

    move-result-object v8

    .line 105
    iget-object v9, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->connection:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-virtual {v9}, Lorg/jivesoftware/smack/BOSHConnection;->getServiceName()Ljava/lang/String;

    move-result-object v9

    .line 103
    invoke-virtual {v7, v8, v9}, Lcom/kenai/jbosh/ComposableBody$Builder;->setAttribute(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v7

    .line 106
    invoke-virtual {v7}, Lcom/kenai/jbosh/ComposableBody$Builder;->build()Lcom/kenai/jbosh/ComposableBody;

    move-result-object v7

    .line 98
    invoke-virtual {v6, v7}, Lorg/jivesoftware/smack/BOSHConnection;->send(Lcom/kenai/jbosh/ComposableBody;)V

    .line 107
    iget-object v6, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->connection:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-virtual {v6}, Lorg/jivesoftware/smack/BOSHConnection;->getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jivesoftware/smack/SASLAuthentication;->authenticated()V

    .line 108
    iget-object v6, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->connection:Lorg/jivesoftware/smack/BOSHConnection;

    new-instance v7, Lorg/jivesoftware/smack/sasl/SASLMechanism$Success;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/jivesoftware/smack/sasl/SASLMechanism$Success;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lorg/jivesoftware/smack/BOSHConnection;->processPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto/16 :goto_0

    .line 109
    :cond_9
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "features"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 110
    invoke-direct {p0, v5}, Lorg/jivesoftware/smack/BOSHPacketReader;->parseFeatures(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 111
    :cond_a
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "failure"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 112
    const-string v6, "urn:ietf:params:xml:ns:xmpp-sasl"

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 113
    invoke-static {v5}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseSASLFailure(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/sasl/SASLMechanism$Failure;

    move-result-object v4

    .line 114
    .local v4, "failure":Lorg/jivesoftware/smack/sasl/SASLMechanism$Failure;
    iget-object v6, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->connection:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-virtual {v6}, Lorg/jivesoftware/smack/BOSHConnection;->getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jivesoftware/smack/SASLAuthentication;->authenticationFailed()V

    .line 115
    iget-object v6, p0, Lorg/jivesoftware/smack/BOSHPacketReader;->connection:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-virtual {v6, v4}, Lorg/jivesoftware/smack/BOSHConnection;->processPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto/16 :goto_0

    .line 117
    .end local v4    # "failure":Lorg/jivesoftware/smack/sasl/SASLMechanism$Failure;
    :cond_b
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "error"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 118
    new-instance v6, Lorg/jivesoftware/smack/XMPPException;

    invoke-static {v5}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseStreamError(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/StreamError;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/StreamError;)V

    throw v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
.end method
