.class Lorg/jivesoftware/smackx/ping/PingManager$3;
.super Ljava/lang/Object;
.source "PingManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/ConnectionListener;


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


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/ping/PingManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smackx/ping/PingManager$3;->this$0:Lorg/jivesoftware/smackx/ping/PingManager;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connectionClosed()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/jivesoftware/smackx/ping/PingManager$3;->this$0:Lorg/jivesoftware/smackx/ping/PingManager;

    # invokes: Lorg/jivesoftware/smackx/ping/PingManager;->maybeStopPingServerTask()V
    invoke-static {v0}, Lorg/jivesoftware/smackx/ping/PingManager;->access$3(Lorg/jivesoftware/smackx/ping/PingManager;)V

    .line 125
    return-void
.end method

.method public connectionClosedOnError(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Exception;

    .prologue
    .line 129
    iget-object v0, p0, Lorg/jivesoftware/smackx/ping/PingManager$3;->this$0:Lorg/jivesoftware/smackx/ping/PingManager;

    # invokes: Lorg/jivesoftware/smackx/ping/PingManager;->maybeStopPingServerTask()V
    invoke-static {v0}, Lorg/jivesoftware/smackx/ping/PingManager;->access$3(Lorg/jivesoftware/smackx/ping/PingManager;)V

    .line 130
    return-void
.end method

.method public reconnectingIn(I)V
    .locals 0
    .param p1, "seconds"    # I

    .prologue
    .line 139
    return-void
.end method

.method public reconnectionFailed(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 143
    return-void
.end method

.method public reconnectionSuccessful()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/jivesoftware/smackx/ping/PingManager$3;->this$0:Lorg/jivesoftware/smackx/ping/PingManager;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/ping/PingManager;->maybeSchedulePingServerTask()V

    .line 135
    return-void
.end method
