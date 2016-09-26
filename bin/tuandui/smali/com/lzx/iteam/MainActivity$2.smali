.class Lcom/lzx/iteam/MainActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String;

.field final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String;

.field final synthetic this$0:Lcom/lzx/iteam/MainActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/MainActivity;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/MainActivity$2;->this$0:Lcom/lzx/iteam/MainActivity;

    .line 811
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 812
    const-string v0, "reason"

    iput-object v0, p0, Lcom/lzx/iteam/MainActivity$2;->SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String;

    .line 813
    const-string v0, "homekey"

    iput-object v0, p0, Lcom/lzx/iteam/MainActivity$2;->SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 817
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 818
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 819
    const-string v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 820
    .local v1, "reason":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "homekey"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 822
    iget-object v2, p0, Lcom/lzx/iteam/MainActivity$2;->this$0:Lcom/lzx/iteam/MainActivity;

    # invokes: Lcom/lzx/iteam/MainActivity;->getOutAppMessage()V
    invoke-static {v2}, Lcom/lzx/iteam/MainActivity;->access$1(Lcom/lzx/iteam/MainActivity;)V

    .line 823
    const-string v2, "MainActivity"

    const-string v3, "--HOMEKEY"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    iget-object v2, p0, Lcom/lzx/iteam/MainActivity$2;->this$0:Lcom/lzx/iteam/MainActivity;

    # getter for: Lcom/lzx/iteam/MainActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;
    invoke-static {v2}, Lcom/lzx/iteam/MainActivity;->access$2(Lcom/lzx/iteam/MainActivity;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v2

    const-string v3, "homekey"

    const-string v4, "yes"

    invoke-virtual {v2, v3, v4}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 826
    iget-object v2, p0, Lcom/lzx/iteam/MainActivity$2;->this$0:Lcom/lzx/iteam/MainActivity;

    # getter for: Lcom/lzx/iteam/MainActivity;->homeListenerReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/lzx/iteam/MainActivity;->access$3(Lcom/lzx/iteam/MainActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 827
    iget-object v2, p0, Lcom/lzx/iteam/MainActivity$2;->this$0:Lcom/lzx/iteam/MainActivity;

    # getter for: Lcom/lzx/iteam/MainActivity;->homeListenerReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/lzx/iteam/MainActivity;->access$3(Lcom/lzx/iteam/MainActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 832
    .end local v1    # "reason":Ljava/lang/String;
    :cond_0
    return-void
.end method
