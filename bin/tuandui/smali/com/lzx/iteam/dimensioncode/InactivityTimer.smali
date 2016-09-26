.class final Lcom/lzx/iteam/dimensioncode/InactivityTimer;
.super Ljava/lang/Object;
.source "InactivityTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/dimensioncode/InactivityTimer$InactivityAsyncTask;,
        Lcom/lzx/iteam/dimensioncode/InactivityTimer$PowerStatusReceiver;
    }
.end annotation


# static fields
.field private static final INACTIVITY_DELAY_MS:J = 0x493e0L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private inactivityTask:Lcom/lzx/iteam/dimensioncode/InactivityTimer$InactivityAsyncTask;

.field private final powerStatusReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/lzx/iteam/dimensioncode/InactivityTimer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lzx/iteam/dimensioncode/InactivityTimer;->TAG:Ljava/lang/String;

    .line 36
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/lzx/iteam/dimensioncode/InactivityTimer;->activity:Landroid/app/Activity;

    .line 44
    new-instance v0, Lcom/lzx/iteam/dimensioncode/InactivityTimer$PowerStatusReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lzx/iteam/dimensioncode/InactivityTimer$PowerStatusReceiver;-><init>(Lcom/lzx/iteam/dimensioncode/InactivityTimer;Lcom/lzx/iteam/dimensioncode/InactivityTimer$PowerStatusReceiver;)V

    iput-object v0, p0, Lcom/lzx/iteam/dimensioncode/InactivityTimer;->powerStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 45
    invoke-virtual {p0}, Lcom/lzx/iteam/dimensioncode/InactivityTimer;->onActivity()V

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/dimensioncode/InactivityTimer;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/lzx/iteam/dimensioncode/InactivityTimer;->cancel()V

    return-void
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/lzx/iteam/dimensioncode/InactivityTimer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/dimensioncode/InactivityTimer;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/InactivityTimer;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method private declared-synchronized cancel()V
    .locals 2

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/InactivityTimer;->inactivityTask:Lcom/lzx/iteam/dimensioncode/InactivityTimer$InactivityAsyncTask;

    .line 65
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<***>;"
    if-eqz v0, :cond_0

    .line 66
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 67
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lzx/iteam/dimensioncode/InactivityTimer;->inactivityTask:Lcom/lzx/iteam/dimensioncode/InactivityTimer$InactivityAsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_0
    monitor-exit p0

    return-void

    .line 64
    .end local v0    # "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<***>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method declared-synchronized onActivity()V
    .locals 2

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/lzx/iteam/dimensioncode/InactivityTimer;->cancel()V

    .line 50
    new-instance v0, Lcom/lzx/iteam/dimensioncode/InactivityTimer$InactivityAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lzx/iteam/dimensioncode/InactivityTimer$InactivityAsyncTask;-><init>(Lcom/lzx/iteam/dimensioncode/InactivityTimer;Lcom/lzx/iteam/dimensioncode/InactivityTimer$InactivityAsyncTask;)V

    iput-object v0, p0, Lcom/lzx/iteam/dimensioncode/InactivityTimer;->inactivityTask:Lcom/lzx/iteam/dimensioncode/InactivityTimer$InactivityAsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/lzx/iteam/dimensioncode/InactivityTimer;->cancel()V

    .line 55
    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/InactivityTimer;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/lzx/iteam/dimensioncode/InactivityTimer;->powerStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 56
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/InactivityTimer;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/lzx/iteam/dimensioncode/InactivityTimer;->powerStatusReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 60
    invoke-virtual {p0}, Lcom/lzx/iteam/dimensioncode/InactivityTimer;->onActivity()V

    .line 61
    return-void
.end method

.method shutdown()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/lzx/iteam/dimensioncode/InactivityTimer;->cancel()V

    .line 73
    return-void
.end method
