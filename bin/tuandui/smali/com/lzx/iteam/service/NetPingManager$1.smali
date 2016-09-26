.class Lcom/lzx/iteam/service/NetPingManager$1;
.super Ljava/lang/Object;
.source "NetPingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/service/NetPingManager;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/service/NetPingManager;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/service/NetPingManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/service/NetPingManager$1;->this$0:Lcom/lzx/iteam/service/NetPingManager;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lcom/lzx/iteam/service/NetServiceManager;->getNetManagerInstance()Lcom/lzx/iteam/service/NetServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzx/iteam/service/NetServiceManager;->sendPing()V

    .line 19
    return-void
.end method
