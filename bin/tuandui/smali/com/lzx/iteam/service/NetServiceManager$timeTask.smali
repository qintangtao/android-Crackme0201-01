.class Lcom/lzx/iteam/service/NetServiceManager$timeTask;
.super Ljava/util/TimerTask;
.source "NetServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/service/NetServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "timeTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/service/NetServiceManager;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/service/NetServiceManager;)V
    .locals 0

    .prologue
    .line 866
    iput-object p1, p0, Lcom/lzx/iteam/service/NetServiceManager$timeTask;->this$0:Lcom/lzx/iteam/service/NetServiceManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 869
    iget-object v0, p0, Lcom/lzx/iteam/service/NetServiceManager$timeTask;->this$0:Lcom/lzx/iteam/service/NetServiceManager;

    invoke-virtual {v0}, Lcom/lzx/iteam/service/NetServiceManager;->Login()V

    .line 870
    return-void
.end method
