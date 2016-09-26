.class Lorg/jivesoftware/smackx/ping/ServerPingTask;
.super Ljava/lang/Object;
.source "ServerPingTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private delta:I

.field private tries:I

.field private weakConnection:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/jivesoftware/smack/Connection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/jivesoftware/smack/Connection;)V
    .locals 1
    .param p1, "connection"    # Lorg/jivesoftware/smack/Connection;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/16 v0, 0x3e8

    iput v0, p0, Lorg/jivesoftware/smackx/ping/ServerPingTask;->delta:I

    .line 32
    const/4 v0, 0x3

    iput v0, p0, Lorg/jivesoftware/smackx/ping/ServerPingTask;->tries:I

    .line 35
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/ping/ServerPingTask;->weakConnection:Ljava/lang/ref/WeakReference;

    .line 36
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 39
    iget-object v6, p0, Lorg/jivesoftware/smackx/ping/ServerPingTask;->weakConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/Connection;

    .line 40
    .local v0, "connection":Lorg/jivesoftware/smack/Connection;
    if-nez v0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    invoke-virtual {v0}, Lorg/jivesoftware/smack/Connection;->isAuthenticated()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 46
    invoke-static {v0}, Lorg/jivesoftware/smackx/ping/PingManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ping/PingManager;

    move-result-object v4

    .line 47
    .local v4, "pingManager":Lorg/jivesoftware/smackx/ping/PingManager;
    const/4 v5, 0x0

    .line 49
    .local v5, "res":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v6, p0, Lorg/jivesoftware/smackx/ping/ServerPingTask;->tries:I

    if-lt v1, v6, :cond_2

    .line 66
    :goto_2
    if-nez v5, :cond_5

    .line 67
    invoke-virtual {v4}, Lorg/jivesoftware/smackx/ping/PingManager;->getPingFailedListeners()Ljava/util/Set;

    move-result-object v3

    .line 68
    .local v3, "pingFailedListeners":Ljava/util/Set;, "Ljava/util/Set<Lorg/jivesoftware/smackx/ping/PingFailedListener;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/ping/PingFailedListener;

    .line 69
    .local v2, "l":Lorg/jivesoftware/smackx/ping/PingFailedListener;
    invoke-interface {v2}, Lorg/jivesoftware/smackx/ping/PingFailedListener;->pingFailed()V

    goto :goto_3

    .line 50
    .end local v2    # "l":Lorg/jivesoftware/smackx/ping/PingFailedListener;
    .end local v3    # "pingFailedListeners":Ljava/util/Set;, "Ljava/util/Set<Lorg/jivesoftware/smackx/ping/PingFailedListener;>;"
    :cond_2
    if-eqz v1, :cond_3

    .line 52
    :try_start_0
    iget v6, p0, Lorg/jivesoftware/smackx/ping/ServerPingTask;->delta:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :cond_3
    invoke-virtual {v4}, Lorg/jivesoftware/smackx/ping/PingManager;->pingMyServer()Z

    move-result v5

    .line 61
    if-eqz v5, :cond_4

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v4, Lorg/jivesoftware/smackx/ping/PingManager;->lastSuccessfulPingByTask:J

    goto :goto_2

    .line 49
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 73
    :cond_5
    invoke-virtual {v4}, Lorg/jivesoftware/smackx/ping/PingManager;->maybeSchedulePingServerTask()V

    goto :goto_0

    .line 56
    :catch_0
    move-exception v6

    goto :goto_0
.end method
