.class public Lorg/jivesoftware/smack/packet/CustomTokenIQ;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "CustomTokenIQ.java"


# instance fields
.field private grp:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private msgId:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public getChildElementXML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 59
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v1, "<query xmlns=\"ituandui:iq:chat\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/CustomTokenIQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v1

    sget-object v2, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v1, v2, :cond_0

    .line 61
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/CustomTokenIQ;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    :cond_0
    const-string v1, "</query>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getGrp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/CustomTokenIQ;->grp:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/CustomTokenIQ;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/CustomTokenIQ;->msgId:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/CustomTokenIQ;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/CustomTokenIQ;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public setGrp(Ljava/lang/String;)V
    .locals 0
    .param p1, "grp"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/CustomTokenIQ;->grp:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/CustomTokenIQ;->key:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setMsgId(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/CustomTokenIQ;->msgId:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/CustomTokenIQ;->token:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/CustomTokenIQ;->uuid:Ljava/lang/String;

    .line 22
    return-void
.end method
