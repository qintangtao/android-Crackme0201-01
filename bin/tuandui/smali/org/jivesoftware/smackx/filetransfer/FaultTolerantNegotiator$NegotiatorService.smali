.class Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator$NegotiatorService;
.super Ljava/lang/Object;
.source "FaultTolerantNegotiator.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NegotiatorService"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private collector:Lorg/jivesoftware/smack/PacketCollector;

.field final synthetic this$0:Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;Lorg/jivesoftware/smack/PacketCollector;)V
    .locals 0
    .param p2, "collector"    # Lorg/jivesoftware/smack/PacketCollector;

    .prologue
    .line 172
    iput-object p1, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator$NegotiatorService;->this$0:Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p2, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator$NegotiatorService;->collector:Lorg/jivesoftware/smack/PacketCollector;

    .line 174
    return-void
.end method


# virtual methods
.method public call()Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 177
    iget-object v2, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator$NegotiatorService;->collector:Lorg/jivesoftware/smack/PacketCollector;

    .line 178
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    int-to-long v4, v3

    .line 177
    invoke-virtual {v2, v4, v5}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v1

    .line 179
    .local v1, "streamInitiation":Lorg/jivesoftware/smack/packet/Packet;
    if-nez v1, :cond_0

    .line 180
    new-instance v2, Lorg/jivesoftware/smack/XMPPException;

    const-string v3, "No response from remote client"

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 182
    :cond_0
    iget-object v2, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator$NegotiatorService;->this$0:Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;

    # invokes: Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->determineNegotiator(Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;
    invoke-static {v2, v1}, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->access$0(Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    move-result-object v0

    .line 183
    .local v0, "negotiator":Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;->negotiateIncomingStream(Lorg/jivesoftware/smack/packet/Packet;)Ljava/io/InputStream;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator$NegotiatorService;->call()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
