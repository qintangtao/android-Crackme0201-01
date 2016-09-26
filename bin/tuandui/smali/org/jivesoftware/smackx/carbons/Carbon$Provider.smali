.class public Lorg/jivesoftware/smackx/carbons/Carbon$Provider;
.super Ljava/lang/Object;
.source "Carbon.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/PacketExtensionProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/carbons/Carbon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Provider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseExtension(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 103
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/jivesoftware/smackx/carbons/Carbon$Direction;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/carbons/Carbon$Direction;

    move-result-object v0

    .line 104
    .local v0, "dir":Lorg/jivesoftware/smackx/carbons/Carbon$Direction;
    const/4 v3, 0x0

    .line 106
    .local v3, "fwd":Lorg/jivesoftware/smackx/forward/Forwarded;
    const/4 v1, 0x0

    .line 107
    .local v1, "done":Z
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 115
    if-nez v3, :cond_3

    .line 116
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "sent/received must contain exactly one <forwarded> tag"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 108
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 109
    .local v2, "eventType":I
    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "forwarded"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 110
    new-instance v4, Lorg/jivesoftware/smackx/forward/Forwarded$Provider;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/forward/Forwarded$Provider;-><init>()V

    invoke-virtual {v4, p1}, Lorg/jivesoftware/smackx/forward/Forwarded$Provider;->parseExtension(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v3

    .end local v3    # "fwd":Lorg/jivesoftware/smackx/forward/Forwarded;
    check-cast v3, Lorg/jivesoftware/smackx/forward/Forwarded;

    .line 111
    .restart local v3    # "fwd":Lorg/jivesoftware/smackx/forward/Forwarded;
    goto :goto_0

    .line 112
    :cond_2
    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/jivesoftware/smackx/carbons/Carbon$Direction;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/carbons/Carbon$Direction;

    move-result-object v4

    if-ne v0, v4, :cond_0

    .line 113
    const/4 v1, 0x1

    goto :goto_0

    .line 117
    .end local v2    # "eventType":I
    :cond_3
    new-instance v4, Lorg/jivesoftware/smackx/carbons/Carbon;

    invoke-direct {v4, v0, v3}, Lorg/jivesoftware/smackx/carbons/Carbon;-><init>(Lorg/jivesoftware/smackx/carbons/Carbon$Direction;Lorg/jivesoftware/smackx/forward/Forwarded;)V

    return-object v4
.end method
