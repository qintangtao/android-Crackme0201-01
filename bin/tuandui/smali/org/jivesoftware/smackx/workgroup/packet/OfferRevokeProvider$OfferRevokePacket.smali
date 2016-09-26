.class public Lorg/jivesoftware/smackx/workgroup/packet/OfferRevokeProvider$OfferRevokePacket;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "OfferRevokeProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/workgroup/packet/OfferRevokeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OfferRevokePacket"
.end annotation


# instance fields
.field private reason:Ljava/lang/String;

.field private sessionID:Ljava/lang/String;

.field final synthetic this$0:Lorg/jivesoftware/smackx/workgroup/packet/OfferRevokeProvider;

.field private userID:Ljava/lang/String;

.field private userJID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smackx/workgroup/packet/OfferRevokeProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "userJID"    # Ljava/lang/String;
    .param p3, "userID"    # Ljava/lang/String;
    .param p4, "cause"    # Ljava/lang/String;
    .param p5, "sessionID"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/packet/OfferRevokeProvider$OfferRevokePacket;->this$0:Lorg/jivesoftware/smackx/workgroup/packet/OfferRevokeProvider;

    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 74
    iput-object p2, p0, Lorg/jivesoftware/smackx/workgroup/packet/OfferRevokeProvider$OfferRevokePacket;->userJID:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lorg/jivesoftware/smackx/workgroup/packet/OfferRevokeProvider$OfferRevokePacket;->userID:Ljava/lang/String;

    .line 76
    iput-object p4, p0, Lorg/jivesoftware/smackx/workgroup/packet/OfferRevokeProvider$OfferRevokePacket;->reason:Ljava/lang/String;

    .line 77
    iput-object p5, p0, Lorg/jivesoftware/smackx/workgroup/packet/OfferRevokeProvider$OfferRevokePacket;->sessionID:Ljava/lang/String;

    .line 78
    return-void
.end method


# virtual methods
.method public getChildElementXML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v1, "<offer-revoke xmlns=\"http://jabber.org/protocol/workgroup\" jid=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/packet/OfferRevokeProvider$OfferRevokePacket;->userID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/packet/OfferRevokeProvider$OfferRevokePacket;->reason:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 100
    const-string v1, "<reason>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/packet/OfferRevokeProvider$OfferRevokePacket;->reason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</reason>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/packet/OfferRevokeProvider$OfferRevokePacket;->sessionID:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 103
    new-instance v1, Lorg/jivesoftware/smackx/workgroup/packet/SessionID;

    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/packet/OfferRevokeProvider$OfferRevokePacket;->sessionID:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smackx/workgroup/packet/SessionID;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/workgroup/packet/SessionID;->toXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    :cond_1
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/packet/OfferRevokeProvider$OfferRevokePacket;->userID:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 106
    new-instance v1, Lorg/jivesoftware/smackx/workgroup/packet/UserID;

    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/packet/OfferRevokeProvider$OfferRevokePacket;->userID:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smackx/workgroup/packet/UserID;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/workgroup/packet/UserID;->toXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :cond_2
    const-string v1, "</offer-revoke>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/OfferRevokeProvider$OfferRevokePacket;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/OfferRevokeProvider$OfferRevokePacket;->sessionID:Ljava/lang/String;

    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/OfferRevokeProvider$OfferRevokePacket;->userID:Ljava/lang/String;

    return-object v0
.end method

.method public getUserJID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/OfferRevokeProvider$OfferRevokePacket;->userJID:Ljava/lang/String;

    return-object v0
.end method
