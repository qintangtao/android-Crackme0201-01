.class Lorg/jivesoftware/smackx/ping/PingManager$2;
.super Ljava/lang/Object;
.source "PingManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/ping/PingManager;-><init>(Lorg/jivesoftware/smack/Connection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/ping/PingManager;

.field private final synthetic val$connection:Lorg/jivesoftware/smack/Connection;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/ping/PingManager;Lorg/jivesoftware/smack/Connection;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smackx/ping/PingManager$2;->this$0:Lorg/jivesoftware/smackx/ping/PingManager;

    iput-object p2, p0, Lorg/jivesoftware/smackx/ping/PingManager$2;->val$connection:Lorg/jivesoftware/smack/Connection;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 10
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Packet;

    .prologue
    .line 106
    iget-object v5, p0, Lorg/jivesoftware/smackx/ping/PingManager$2;->this$0:Lorg/jivesoftware/smackx/ping/PingManager;

    # getter for: Lorg/jivesoftware/smackx/ping/PingManager;->pingMinDelta:J
    invoke-static {v5}, Lorg/jivesoftware/smackx/ping/PingManager;->access$0(Lorg/jivesoftware/smackx/ping/PingManager;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 109
    .local v0, "currentMillies":J
    iget-object v5, p0, Lorg/jivesoftware/smackx/ping/PingManager$2;->this$0:Lorg/jivesoftware/smackx/ping/PingManager;

    # getter for: Lorg/jivesoftware/smackx/ping/PingManager;->lastPingStamp:J
    invoke-static {v5}, Lorg/jivesoftware/smackx/ping/PingManager;->access$1(Lorg/jivesoftware/smackx/ping/PingManager;)J

    move-result-wide v6

    sub-long v2, v0, v6

    .line 110
    .local v2, "delta":J
    iget-object v5, p0, Lorg/jivesoftware/smackx/ping/PingManager$2;->this$0:Lorg/jivesoftware/smackx/ping/PingManager;

    invoke-static {v5, v0, v1}, Lorg/jivesoftware/smackx/ping/PingManager;->access$2(Lorg/jivesoftware/smackx/ping/PingManager;J)V

    .line 111
    iget-object v5, p0, Lorg/jivesoftware/smackx/ping/PingManager$2;->this$0:Lorg/jivesoftware/smackx/ping/PingManager;

    # getter for: Lorg/jivesoftware/smackx/ping/PingManager;->pingMinDelta:J
    invoke-static {v5}, Lorg/jivesoftware/smackx/ping/PingManager;->access$0(Lorg/jivesoftware/smackx/ping/PingManager;)J

    move-result-wide v6

    cmp-long v5, v2, v6

    if-gez v5, :cond_0

    .line 117
    .end local v0    # "currentMillies":J
    .end local v2    # "delta":J
    .end local p1    # "packet":Lorg/jivesoftware/smack/packet/Packet;
    :goto_0
    return-void

    .line 115
    .restart local p1    # "packet":Lorg/jivesoftware/smack/packet/Packet;
    :cond_0
    new-instance v4, Lorg/jivesoftware/smackx/ping/packet/Pong;

    check-cast p1, Lorg/jivesoftware/smackx/ping/packet/Ping;

    .end local p1    # "packet":Lorg/jivesoftware/smack/packet/Packet;
    invoke-direct {v4, p1}, Lorg/jivesoftware/smackx/ping/packet/Pong;-><init>(Lorg/jivesoftware/smackx/ping/packet/Ping;)V

    .line 116
    .local v4, "pong":Lorg/jivesoftware/smackx/ping/packet/Pong;
    iget-object v5, p0, Lorg/jivesoftware/smackx/ping/PingManager$2;->val$connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v5, v4}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0
.end method
