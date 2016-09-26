.class public Lcom/lzx/iteam/alarm/AlarmService;
.super Landroid/app/Service;
.source "AlarmService.java"

# interfaces
.implements Lcom/lzx/iteam/alarm/ServiceListener;


# instance fields
.field private alarm:Lcom/lzx/iteam/bean/ScheduleData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public OnCloseService(Z)V
    .locals 0
    .param p1, "tag"    # Z

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/lzx/iteam/alarm/AlarmService;->stopSelf()V

    .line 36
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 16
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 21
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 22
    const-string v0, "alarm"

    const-string v1, "\u4f60\u5988\u558a\u4f60\u56de\u5bb6\u5403\u996d"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    new-instance v0, Lcom/lzx/iteam/alarm/AlarmView;

    iget-object v1, p0, Lcom/lzx/iteam/alarm/AlarmService;->alarm:Lcom/lzx/iteam/bean/ScheduleData;

    invoke-direct {v0, p0, p0, v1}, Lcom/lzx/iteam/alarm/AlarmView;-><init>(Landroid/content/Context;Lcom/lzx/iteam/alarm/ServiceListener;Lcom/lzx/iteam/bean/ScheduleData;)V

    invoke-virtual {v0}, Lcom/lzx/iteam/alarm/AlarmView;->fun()V

    .line 24
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 29
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/ScheduleData;

    iput-object v0, p0, Lcom/lzx/iteam/alarm/AlarmService;->alarm:Lcom/lzx/iteam/bean/ScheduleData;

    .line 30
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
