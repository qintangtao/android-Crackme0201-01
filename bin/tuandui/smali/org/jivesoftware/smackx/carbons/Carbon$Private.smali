.class public Lorg/jivesoftware/smackx/carbons/Carbon$Private;
.super Ljava/lang/Object;
.source "Carbon.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/PacketExtension;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/carbons/Carbon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Private"
.end annotation


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "private"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    const-string v0, "private"

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    const-string v0, "urn:xmpp:carbons:2"

    return-object v0
.end method

.method public toXML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    const-string v0, "<private xmlns=\"urn:xmpp:carbons:2\"/>"

    return-object v0
.end method
