.class public Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;
.super Lorg/jivesoftware/smack/sasl/SASLMechanism;
.source "SASLFacebookConnect.java"


# instance fields
.field private apiKey:Ljava/lang/String;

.field private sessionKey:Ljava/lang/String;

.field private sessionSecret:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    const-string v0, "X-FACEBOOK-PLATFORM"

    .line 33
    const-class v1, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;

    .line 32
    invoke-static {v0, v1}, Lorg/jivesoftware/smack/SASLAuthentication;->registerSASLMechanism(Ljava/lang/String;Ljava/lang/Class;)V

    .line 34
    const-string v0, "X-FACEBOOK-PLATFORM"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/jivesoftware/smack/SASLAuthentication;->supportSASLMechanism(Ljava/lang/String;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/SASLAuthentication;)V
    .locals 1
    .param p1, "saslAuthentication"    # Lorg/jivesoftware/smack/SASLAuthentication;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/sasl/SASLMechanism;-><init>(Lorg/jivesoftware/smack/SASLAuthentication;)V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->sessionKey:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->sessionSecret:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->apiKey:Ljava/lang/String;

    .line 39
    return-void
.end method

.method private convertToHex([B)Ljava/lang/String;
    .locals 6
    .param p1, "data"    # [B

    .prologue
    .line 177
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 178
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, p1

    if-lt v2, v5, :cond_0

    .line 189
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 179
    :cond_0
    aget-byte v5, p1, v2

    ushr-int/lit8 v5, v5, 0x4

    and-int/lit8 v1, v5, 0xf

    .line 180
    .local v1, "halfbyte":I
    const/4 v3, 0x0

    .local v3, "two_halfs":I
    move v4, v3

    .line 182
    .end local v3    # "two_halfs":I
    .local v4, "two_halfs":I
    :goto_1
    if-ltz v1, :cond_1

    const/16 v5, 0x9

    if-gt v1, v5, :cond_1

    .line 183
    add-int/lit8 v5, v1, 0x30

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 186
    :goto_2
    aget-byte v5, p1, v2

    and-int/lit8 v1, v5, 0xf

    .line 187
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "two_halfs":I
    .restart local v3    # "two_halfs":I
    const/4 v5, 0x1

    .line 181
    if-lt v4, v5, :cond_2

    .line 178
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 185
    .end local v3    # "two_halfs":I
    .restart local v4    # "two_halfs":I
    :cond_1
    add-int/lit8 v5, v1, -0xa

    add-int/lit8 v5, v5, 0x61

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .end local v4    # "two_halfs":I
    .restart local v3    # "two_halfs":I
    :cond_2
    move v4, v3

    .end local v3    # "two_halfs":I
    .restart local v4    # "two_halfs":I
    goto :goto_1
.end method

.method private getQueryMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .param p1, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 166
    const-string v5, "&"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "params":[Ljava/lang/String;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 168
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v7, v3

    move v5, v6

    :goto_0
    if-lt v5, v7, :cond_0

    .line 173
    return-object v0

    .line 168
    :cond_0
    aget-object v2, v3, v5

    .line 169
    .local v2, "param":Ljava/lang/String;
    const-string v8, "="

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v1, v8, v6

    .line 170
    .local v1, "name":Ljava/lang/String;
    const-string v8, "="

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v4, v8, v9

    .line 171
    .local v4, "value":Ljava/lang/String;
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method


# virtual methods
.method public MD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 194
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 195
    .local v0, "md":Ljava/security/MessageDigest;
    const/16 v2, 0x20

    new-array v1, v2, [B

    .line 196
    .local v1, "md5hash":[B
    const-string v2, "iso-8859-1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 197
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 198
    invoke-direct {p0, v1}, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->convertToHex([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected authenticate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .local v0, "stanza":Ljava/lang/StringBuilder;
    const-string v1, "<auth mechanism=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string v1, "\" xmlns=\"urn:ietf:params:xml:ns:xmpp-sasl\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string v1, "</auth>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p0}, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;

    move-result-object v1

    new-instance v2, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect$1;

    invoke-direct {v2, p0, v0}, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect$1;-><init>(Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/SASLAuthentication;->send(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 65
    return-void
.end method

.method public authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "apiKeyAndSessionKey"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "sessionSecret"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 70
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 71
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Invalid parameters!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :cond_1
    const-string v1, "\\|"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 75
    .local v6, "keyArray":[Ljava/lang/String;
    if-eqz v6, :cond_2

    array-length v1, v6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    .line 76
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Api key or session key is not present!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    :cond_3
    aget-object v1, v6, v3

    iput-object v1, p0, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->apiKey:Ljava/lang/String;

    .line 79
    aget-object v1, v6, v5

    iput-object v1, p0, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->sessionKey:Ljava/lang/String;

    .line 80
    iput-object p3, p0, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->sessionSecret:Ljava/lang/String;

    .line 82
    iget-object v1, p0, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->sessionKey:Ljava/lang/String;

    iput-object v1, p0, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->authenticationId:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->password:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->hostname:Ljava/lang/String;

    .line 86
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "DIGEST-MD5"

    aput-object v1, v0, v3

    .line 87
    .local v0, "mechanisms":[Ljava/lang/String;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 88
    .local v4, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    const-string v2, "xmpp"

    move-object v3, p2

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lde/measite/smack/Sasl;->createSaslClient([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)Lorg/apache/harmony/javax/security/sasl/SaslClient;

    move-result-object v1

    iput-object v1, p0, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->sc:Lorg/apache/harmony/javax/security/sasl/SaslClient;

    .line 89
    invoke-virtual {p0}, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->authenticate()V

    .line 90
    return-void
.end method

.method public authenticate(Ljava/lang/String;Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)V
    .locals 6
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "cbh"    # Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 94
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "DIGEST-MD5"

    aput-object v2, v0, v1

    .line 95
    .local v0, "mechanisms":[Ljava/lang/String;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 96
    .local v4, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    const-string v2, "xmpp"

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lde/measite/smack/Sasl;->createSaslClient([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)Lorg/apache/harmony/javax/security/sasl/SaslClient;

    move-result-object v1

    iput-object v1, p0, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->sc:Lorg/apache/harmony/javax/security/sasl/SaslClient;

    .line 97
    invoke-virtual {p0}, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->authenticate()V

    .line 98
    return-void
.end method

.method public challengeReceived(Ljava/lang/String;)V
    .locals 18
    .param p1, "challenge"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .local v12, "stanza":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .line 109
    .local v10, "response":[B
    if-eqz p1, :cond_0

    .line 110
    new-instance v5, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lorg/jivesoftware/smack/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v14

    invoke-direct {v5, v14}, Ljava/lang/String;-><init>([B)V

    .line 111
    .local v5, "decodedResponse":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->getQueryMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v9

    .line 113
    .local v9, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v13, "1.0"

    .line 114
    .local v13, "version":Ljava/lang/String;
    const-string v14, "nonce"

    invoke-interface {v9, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 115
    .local v8, "nonce":Ljava/lang/String;
    const-string v14, "method"

    invoke-interface {v9, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 117
    .local v7, "method":Ljava/lang/String;
    new-instance v14, Ljava/util/GregorianCalendar;

    invoke-direct {v14}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v14}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 119
    .local v3, "callId":Ljava/lang/Long;
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "api_key="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->apiKey:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 120
    const-string v15, "call_id="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 121
    const-string v15, "method="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 122
    const-string v15, "nonce="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 123
    const-string v15, "session_key="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->sessionKey:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 124
    const-string v15, "v="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 125
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->sessionSecret:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 119
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 128
    .local v11, "sig":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->MD5(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 133
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "api_key="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->apiKey:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "&"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 134
    const-string v15, "call_id="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "&"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 135
    const-string v15, "method="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "&"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 136
    const-string v15, "nonce="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "&"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 137
    const-string v15, "session_key="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->sessionKey:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "&"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 138
    const-string v15, "v="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "&"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 139
    const-string v15, "sig="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 133
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 141
    .local v4, "composedResponse":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 144
    .end local v3    # "callId":Ljava/lang/Long;
    .end local v4    # "composedResponse":Ljava/lang/String;
    .end local v5    # "decodedResponse":Ljava/lang/String;
    .end local v7    # "method":Ljava/lang/String;
    .end local v8    # "nonce":Ljava/lang/String;
    .end local v9    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "sig":Ljava/lang/String;
    .end local v13    # "version":Ljava/lang/String;
    :cond_0
    const-string v2, ""

    .line 146
    .local v2, "authenticationText":Ljava/lang/String;
    if-eqz v10, :cond_1

    .line 147
    const/16 v14, 0x8

    invoke-static {v10, v14}, Lorg/jivesoftware/smack/util/Base64;->encodeBytes([BI)Ljava/lang/String;

    move-result-object v2

    .line 150
    :cond_1
    const-string v14, "<response xmlns=\"urn:ietf:params:xml:ns:xmpp-sasl\">"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const-string v14, "</response>"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual/range {p0 .. p0}, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;

    move-result-object v14

    new-instance v15, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v12}, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect$2;-><init>(Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;Ljava/lang/StringBuilder;)V

    invoke-virtual {v14, v15}, Lorg/jivesoftware/smack/SASLAuthentication;->send(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 163
    return-void

    .line 129
    .end local v2    # "authenticationText":Ljava/lang/String;
    .restart local v3    # "callId":Ljava/lang/Long;
    .restart local v5    # "decodedResponse":Ljava/lang/String;
    .restart local v7    # "method":Ljava/lang/String;
    .restart local v8    # "nonce":Ljava/lang/String;
    .restart local v9    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11    # "sig":Ljava/lang/String;
    .restart local v13    # "version":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 130
    .local v6, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v14, Ljava/lang/IllegalStateException;

    invoke-direct {v14, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v14
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    const-string v0, "X-FACEBOOK-PLATFORM"

    return-object v0
.end method
