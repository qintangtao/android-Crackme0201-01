.class Lorg/jivesoftware/smackx/carbons/CarbonManager$3;
.super Ljava/lang/Object;
.source "CarbonManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/carbons/CarbonManager;->sendCarbonsEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/carbons/CarbonManager;

.field private final synthetic val$new_state:Z


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/carbons/CarbonManager;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smackx/carbons/CarbonManager$3;->this$0:Lorg/jivesoftware/smackx/carbons/CarbonManager;

    iput-boolean p2, p0, Lorg/jivesoftware/smackx/carbons/CarbonManager$3;->val$new_state:Z

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 3
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Packet;

    .prologue
    .line 125
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smack/packet/IQ;

    .line 126
    .local v0, "result":Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v1

    sget-object v2, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v1, v2, :cond_0

    .line 127
    iget-object v1, p0, Lorg/jivesoftware/smackx/carbons/CarbonManager$3;->this$0:Lorg/jivesoftware/smackx/carbons/CarbonManager;

    iget-boolean v2, p0, Lorg/jivesoftware/smackx/carbons/CarbonManager$3;->val$new_state:Z

    invoke-static {v1, v2}, Lorg/jivesoftware/smackx/carbons/CarbonManager;->access$0(Lorg/jivesoftware/smackx/carbons/CarbonManager;Z)V

    .line 129
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/carbons/CarbonManager$3;->this$0:Lorg/jivesoftware/smackx/carbons/CarbonManager;

    # getter for: Lorg/jivesoftware/smackx/carbons/CarbonManager;->connection:Lorg/jivesoftware/smack/Connection;
    invoke-static {v1}, Lorg/jivesoftware/smackx/carbons/CarbonManager;->access$1(Lorg/jivesoftware/smackx/carbons/CarbonManager;)Lorg/jivesoftware/smack/Connection;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/jivesoftware/smack/Connection;->removePacketListener(Lorg/jivesoftware/smack/PacketListener;)V

    .line 130
    return-void
.end method
