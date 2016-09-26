.class public Lcom/lzx/iteam/service/NetPingManager;
.super Landroid/content/BroadcastReceiver;
.source "NetPingManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 15
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lzx/iteam/service/NetPingManager$1;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/service/NetPingManager$1;-><init>(Lcom/lzx/iteam/service/NetPingManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 20
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 21
    return-void
.end method
