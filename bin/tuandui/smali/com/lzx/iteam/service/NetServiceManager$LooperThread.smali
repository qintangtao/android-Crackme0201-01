.class Lcom/lzx/iteam/service/NetServiceManager$LooperThread;
.super Ljava/lang/Thread;
.source "NetServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/service/NetServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LooperThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/service/NetServiceManager;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/service/NetServiceManager;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->this$0:Lcom/lzx/iteam/service/NetServiceManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/service/NetServiceManager$LooperThread;)Lcom/lzx/iteam/service/NetServiceManager;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->this$0:Lcom/lzx/iteam/service/NetServiceManager;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 106
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 107
    iget-object v0, p0, Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->this$0:Lcom/lzx/iteam/service/NetServiceManager;

    new-instance v1, Lcom/lzx/iteam/service/NetServiceManager$LooperThread$1;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/service/NetServiceManager$LooperThread$1;-><init>(Lcom/lzx/iteam/service/NetServiceManager$LooperThread;)V

    iput-object v1, v0, Lcom/lzx/iteam/service/NetServiceManager;->mHandler:Landroid/os/Handler;

    .line 141
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 142
    return-void
.end method
