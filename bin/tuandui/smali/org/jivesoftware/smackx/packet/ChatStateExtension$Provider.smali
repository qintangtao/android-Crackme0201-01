.class public Lorg/jivesoftware/smackx/packet/ChatStateExtension$Provider;
.super Ljava/lang/Object;
.source "ChatStateExtension.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/PacketExtensionProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/packet/ChatStateExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Provider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseExtension(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 65
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jivesoftware/smackx/ChatState;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/ChatState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 70
    .local v0, "state":Lorg/jivesoftware/smackx/ChatState;
    :goto_0
    new-instance v1, Lorg/jivesoftware/smackx/packet/ChatStateExtension;

    invoke-direct {v1, v0}, Lorg/jivesoftware/smackx/packet/ChatStateExtension;-><init>(Lorg/jivesoftware/smackx/ChatState;)V

    return-object v1

    .line 68
    .end local v0    # "state":Lorg/jivesoftware/smackx/ChatState;
    :catch_0
    move-exception v1

    sget-object v0, Lorg/jivesoftware/smackx/ChatState;->active:Lorg/jivesoftware/smackx/ChatState;

    .restart local v0    # "state":Lorg/jivesoftware/smackx/ChatState;
    goto :goto_0
.end method
