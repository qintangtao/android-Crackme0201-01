.class public Lorg/jivesoftware/smackx/carbons/Carbon;
.super Ljava/lang/Object;
.source "Carbon.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/PacketExtension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/carbons/Carbon$Direction;,
        Lorg/jivesoftware/smackx/carbons/Carbon$Private;,
        Lorg/jivesoftware/smackx/carbons/Carbon$Provider;
    }
.end annotation


# static fields
.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:carbons:2"


# instance fields
.field private dir:Lorg/jivesoftware/smackx/carbons/Carbon$Direction;

.field private fwd:Lorg/jivesoftware/smackx/forward/Forwarded;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smackx/carbons/Carbon$Direction;Lorg/jivesoftware/smackx/forward/Forwarded;)V
    .locals 0
    .param p1, "dir"    # Lorg/jivesoftware/smackx/carbons/Carbon$Direction;
    .param p2, "fwd"    # Lorg/jivesoftware/smackx/forward/Forwarded;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/jivesoftware/smackx/carbons/Carbon;->dir:Lorg/jivesoftware/smackx/carbons/Carbon$Direction;

    .line 49
    iput-object p2, p0, Lorg/jivesoftware/smackx/carbons/Carbon;->fwd:Lorg/jivesoftware/smackx/forward/Forwarded;

    .line 50
    return-void
.end method


# virtual methods
.method public getDirection()Lorg/jivesoftware/smackx/carbons/Carbon$Direction;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/jivesoftware/smackx/carbons/Carbon;->dir:Lorg/jivesoftware/smackx/carbons/Carbon$Direction;

    return-object v0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/jivesoftware/smackx/carbons/Carbon;->dir:Lorg/jivesoftware/smackx/carbons/Carbon$Direction;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/carbons/Carbon$Direction;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getForwarded()Lorg/jivesoftware/smackx/forward/Forwarded;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/jivesoftware/smackx/carbons/Carbon;->fwd:Lorg/jivesoftware/smackx/forward/Forwarded;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-string v0, "urn:xmpp:carbons:2"

    return-object v0
.end method

.method public toXML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/carbons/Carbon;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " xmlns=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 84
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/carbons/Carbon;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-object v1, p0, Lorg/jivesoftware/smackx/carbons/Carbon;->fwd:Lorg/jivesoftware/smackx/forward/Forwarded;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/forward/Forwarded;->toXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/carbons/Carbon;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
