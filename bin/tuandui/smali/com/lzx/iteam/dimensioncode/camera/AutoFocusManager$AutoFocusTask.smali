.class final Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager$AutoFocusTask;
.super Landroid/os/AsyncTask;
.source "AutoFocusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;


# direct methods
.method private constructor <init>(Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager$AutoFocusTask;->this$0:Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager$AutoFocusTask;)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager$AutoFocusTask;-><init>(Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "voids"    # [Ljava/lang/Object;

    .prologue
    .line 110
    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    iget-object v1, p0, Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager$AutoFocusTask;->this$0:Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;

    monitor-enter v1

    .line 115
    :try_start_1
    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager$AutoFocusTask;->this$0:Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;

    # getter for: Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;->active:Z
    invoke-static {v0}, Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;->access$0(Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager$AutoFocusTask;->this$0:Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;

    invoke-virtual {v0}, Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;->start()V

    .line 114
    :cond_0
    monitor-exit v1

    .line 119
    const/4 v0, 0x0

    return-object v0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
