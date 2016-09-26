.class final Lcom/lzx/iteam/dimensioncode/InactivityTimer$PowerStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InactivityTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/dimensioncode/InactivityTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PowerStatusReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/dimensioncode/InactivityTimer;


# direct methods
.method private constructor <init>(Lcom/lzx/iteam/dimensioncode/InactivityTimer;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/lzx/iteam/dimensioncode/InactivityTimer$PowerStatusReceiver;->this$0:Lcom/lzx/iteam/dimensioncode/InactivityTimer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lzx/iteam/dimensioncode/InactivityTimer;Lcom/lzx/iteam/dimensioncode/InactivityTimer$PowerStatusReceiver;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/lzx/iteam/dimensioncode/InactivityTimer$PowerStatusReceiver;-><init>(Lcom/lzx/iteam/dimensioncode/InactivityTimer;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 78
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    const-string v1, "plugged"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-gtz v1, :cond_1

    const/4 v0, 0x1

    .line 81
    .local v0, "onBatteryNow":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 82
    iget-object v1, p0, Lcom/lzx/iteam/dimensioncode/InactivityTimer$PowerStatusReceiver;->this$0:Lcom/lzx/iteam/dimensioncode/InactivityTimer;

    invoke-virtual {v1}, Lcom/lzx/iteam/dimensioncode/InactivityTimer;->onActivity()V

    .line 87
    .end local v0    # "onBatteryNow":Z
    :cond_0
    :goto_1
    return-void

    .line 80
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 84
    .restart local v0    # "onBatteryNow":Z
    :cond_2
    iget-object v1, p0, Lcom/lzx/iteam/dimensioncode/InactivityTimer$PowerStatusReceiver;->this$0:Lcom/lzx/iteam/dimensioncode/InactivityTimer;

    # invokes: Lcom/lzx/iteam/dimensioncode/InactivityTimer;->cancel()V
    invoke-static {v1}, Lcom/lzx/iteam/dimensioncode/InactivityTimer;->access$0(Lcom/lzx/iteam/dimensioncode/InactivityTimer;)V

    goto :goto_1
.end method
