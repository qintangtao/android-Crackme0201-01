.class public Lcom/lzx/iteam/alarm/StartTimerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StartTimerReceiver.java"


# static fields
.field public static final WARNING_RATE:I = 0xea60

.field private static am:Landroid/app/AlarmManager;

.field private static sender:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static onCancelAlarm()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 42
    sget-object v0, Lcom/lzx/iteam/alarm/StartTimerReceiver;->am:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    .line 43
    sget-object v0, Lcom/lzx/iteam/alarm/StartTimerReceiver;->am:Landroid/app/AlarmManager;

    sget-object v1, Lcom/lzx/iteam/alarm/StartTimerReceiver;->sender:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 44
    sput-object v2, Lcom/lzx/iteam/alarm/StartTimerReceiver;->am:Landroid/app/AlarmManager;

    .line 45
    sput-object v2, Lcom/lzx/iteam/alarm/StartTimerReceiver;->sender:Landroid/app/PendingIntent;

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 27
    const-string v0, "com.lzx.iteam.alarm.start.action"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    sget-object v0, Lcom/lzx/iteam/alarm/StartTimerReceiver;->am:Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    .line 29
    const-string v0, "alarm"

    const-string v1, "\u542f\u52a8\u8ba1\u65f6\u5668\u4e86"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    new-instance v7, Landroid/content/Intent;

    const-class v0, Lcom/lzx/iteam/alarm/AcceptWarnReceiver;

    invoke-direct {v7, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    .local v7, "mIntent":Landroid/content/Intent;
    const-string v0, "com.lzx.iteam.alarm.accept.action"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    invoke-static {p1, v4, v7, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sput-object v0, Lcom/lzx/iteam/alarm/StartTimerReceiver;->sender:Landroid/app/PendingIntent;

    .line 34
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 35
    .local v2, "firstime":J
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    sput-object v0, Lcom/lzx/iteam/alarm/StartTimerReceiver;->am:Landroid/app/AlarmManager;

    .line 36
    sget-object v0, Lcom/lzx/iteam/alarm/StartTimerReceiver;->am:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    const-wide/32 v4, 0xea60

    sget-object v6, Lcom/lzx/iteam/alarm/StartTimerReceiver;->sender:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 39
    .end local v2    # "firstime":J
    .end local v7    # "mIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
