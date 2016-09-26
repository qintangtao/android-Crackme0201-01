.class public Lorg/jivesoftware/smackx/pubsub/Affiliation;
.super Ljava/lang/Object;
.source "Affiliation.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/PacketExtension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;
    }
.end annotation


# instance fields
.field protected jid:Ljava/lang/String;

.field protected node:Ljava/lang/String;

.field protected type:Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;)V
    .locals 0
    .param p1, "jid"    # Ljava/lang/String;
    .param p2, "node"    # Ljava/lang/String;
    .param p3, "affiliation"    # Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/jivesoftware/smackx/pubsub/Affiliation;->jid:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lorg/jivesoftware/smackx/pubsub/Affiliation;->node:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lorg/jivesoftware/smackx/pubsub/Affiliation;->type:Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;)V
    .locals 1
    .param p1, "jid"    # Ljava/lang/String;
    .param p2, "affiliation"    # Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/jivesoftware/smackx/pubsub/Affiliation;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;)V

    .line 49
    return-void
.end method

.method private appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "att"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 105
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string v0, "=\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    return-void
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-string v0, "affiliation"

    return-object v0
.end method

.method public getJid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/Affiliation;->jid:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/Affiliation;->node:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/Affiliation;->type:Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;

    return-object v0
.end method

.method public toXML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/Affiliation;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/Affiliation;->node:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 95
    const-string v1, "node"

    iget-object v2, p0, Lorg/jivesoftware/smackx/pubsub/Affiliation;->node:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/Affiliation;->appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_0
    const-string v1, "jid"

    iget-object v2, p0, Lorg/jivesoftware/smackx/pubsub/Affiliation;->jid:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/Affiliation;->appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v1, "affiliation"

    iget-object v2, p0, Lorg/jivesoftware/smackx/pubsub/Affiliation;->type:Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/pubsub/Affiliation$Type;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/Affiliation;->appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v1, "/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
