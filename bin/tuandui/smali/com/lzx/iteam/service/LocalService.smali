.class public Lcom/lzx/iteam/service/LocalService;
.super Landroid/app/Service;
.source "LocalService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 15
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 21
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 22
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 26
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 27
    sput-object p0, Lcom/lzx/iteam/service/NetServiceManager;->mContext:Landroid/content/Context;

    .line 28
    invoke-virtual {p0}, Lcom/lzx/iteam/service/LocalService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lzx/iteam/service/NetServiceManager;->createNetChatService(Landroid/content/Context;)V

    .line 29
    invoke-virtual {p0}, Lcom/lzx/iteam/service/LocalService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lzx/iteam/service/NetServiceManager;->createNetCallService(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x1

    return v0
.end method
