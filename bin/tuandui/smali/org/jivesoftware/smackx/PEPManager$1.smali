.class Lorg/jivesoftware/smackx/PEPManager$1;
.super Ljava/lang/Object;
.source "PEPManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/PEPManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/PEPManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/PEPManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smackx/PEPManager$1;->this$0:Lorg/jivesoftware/smackx/PEPManager;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 4
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Packet;

    .prologue
    .line 140
    move-object v1, p1

    check-cast v1, Lorg/jivesoftware/smack/packet/Message;

    .line 141
    .local v1, "message":Lorg/jivesoftware/smack/packet/Message;
    const-string v2, "event"

    const-string v3, "http://jabber.org/protocol/pubsub#event"

    invoke-virtual {v1, v2, v3}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/packet/PEPEvent;

    .line 143
    .local v0, "event":Lorg/jivesoftware/smackx/packet/PEPEvent;
    iget-object v2, p0, Lorg/jivesoftware/smackx/PEPManager$1;->this$0:Lorg/jivesoftware/smackx/PEPManager;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v3

    # invokes: Lorg/jivesoftware/smackx/PEPManager;->firePEPListeners(Ljava/lang/String;Lorg/jivesoftware/smackx/packet/PEPEvent;)V
    invoke-static {v2, v3, v0}, Lorg/jivesoftware/smackx/PEPManager;->access$0(Lorg/jivesoftware/smackx/PEPManager;Ljava/lang/String;Lorg/jivesoftware/smackx/packet/PEPEvent;)V

    .line 144
    return-void
.end method
