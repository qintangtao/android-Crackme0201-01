.class public final Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;
.super Ljava/lang/Object;
.source "AutoFocusManager.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager$AutoFocusTask;
    }
.end annotation


# static fields
.field public static final AUTOFOCUS_DO:I = 0x3e9

.field private static final AUTOFOCUS_INTERVAL_MS:J = 0x5dcL

.field private static final AUTO_FOCUS_INTERVAL_MS:J = 0x7d0L

.field private static final FOCUS_MODES_CALLING_AF:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private active:Z

.field private autoFocusHandler:Landroid/os/Handler;

.field private autoFocusMessage:I

.field private final camera:Landroid/hardware/Camera;

.field private outstandingTask:Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager$AutoFocusTask;

.field private final useAutoFocus:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const-class v0, Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;->TAG:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;->FOCUS_MODES_CALLING_AF:Ljava/util/Collection;

    .line 40
    sget-object v0, Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;->FOCUS_MODES_CALLING_AF:Ljava/util/Collection;

    const-string v1, "auto"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;->FOCUS_MODES_CALLING_AF:Ljava/util/Collection;

    const-string v1, "macro"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/hardware/Camera;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p2, p0, Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;->camera:Landroid/hardware/Camera;

    .line 57
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 58
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "currentFocusMode":Ljava/lang/String;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;->useAutoFocus:Z

    .line 60
    sget-object v1, Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Current focus mode \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'; use auto focus? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;->useAutoFocus:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {p0}, Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;->start()V

    .line 62
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;->active:Z

    return v0
.end method


# virtual methods
.method public declared-synchronized onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 4
    .param p1, "success"    # Z
    .param p2, "theCamera"    # Landroid/hardware/Camera;

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;->active:Z

    if-eqz v1, :cond_0

    .line 67
    new-instance v1, Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager$AutoFocusTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager$AutoFocusTask;-><init>(Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager$AutoFocusTask;)V

    iput-object v1, p0, Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;->outstandingTask:Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager$AutoFocusTask;

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;->autoFocusHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 70
    iget-object v1, p0, Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;->autoFocusHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;->autoFocusMessage:I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 71
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;->autoFocusHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 72
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;->autoFocusHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .end local v0    # "message":Landroid/os/Message;
    :goto_0
    monitor-exit p0

    return-void

    .line 74
    :cond_1
    :try_start_1
    sget-object v1, Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;->TAG:Ljava/lang/String;

    const-string v2, "Got auto-focus callback, but no handler for it"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setHandler(Landroid/os/Handler;I)V
    .locals 0
    .param p1, "autoFocusHandler"    # Landroid/os/Handler;
    .param p2, "autoFocusMessage"    # I

    .prologue
    .line 124
    iput-object p1, p0, Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;->autoFocusHandler:Landroid/os/Handler;

    .line 125
    iput p2, p0, Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;->autoFocusMessage:I

    .line 126
    return-void
.end method

.method declared-synchronized start()V
    .locals 3

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;->useAutoFocus:Z

    if-eqz v1, :cond_0

    .line 80
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;->active:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :try_start_1
    iget-object v1, p0, Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1, p0}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 85
    .local v0, "re":Ljava/lang/RuntimeException;
    :try_start_2
    sget-object v1, Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;->TAG:Ljava/lang/String;

    const-string v2, "Unexpected exception while focusing"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 79
    .end local v0    # "re":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized stop()V
    .locals 3

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;->useAutoFocus:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 93
    :try_start_1
    iget-object v1, p0, Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;->outstandingTask:Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager$AutoFocusTask;

    if-eqz v1, :cond_1

    .line 100
    iget-object v1, p0, Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;->outstandingTask:Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager$AutoFocusTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager$AutoFocusTask;->cancel(Z)Z

    .line 101
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;->outstandingTask:Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager$AutoFocusTask;

    .line 103
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;->active:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 96
    .local v0, "re":Ljava/lang/RuntimeException;
    :try_start_3
    sget-object v1, Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;->TAG:Ljava/lang/String;

    const-string v2, "Unexpected exception while cancelling focusing"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 91
    .end local v0    # "re":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
