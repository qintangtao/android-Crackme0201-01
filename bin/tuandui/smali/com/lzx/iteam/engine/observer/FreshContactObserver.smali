.class public Lcom/lzx/iteam/engine/observer/FreshContactObserver;
.super Landroid/database/ContentObserver;
.source "FreshContactObserver.java"


# static fields
.field public static ENTRANCE_ONECE:Z = false

.field public static LOCAL_SAVE:Z = false

.field public static final MSG_RESTORE:I = 0x64

.field public static Once:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private limitTime:J

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field public mRetoreHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lzx/iteam/engine/observer/FreshContactObserver;->Once:Z

    .line 19
    const-string v0, "FreshContactObserver"

    sput-object v0, Lcom/lzx/iteam/engine/observer/FreshContactObserver;->TAG:Ljava/lang/String;

    .line 20
    sput-boolean v1, Lcom/lzx/iteam/engine/observer/FreshContactObserver;->LOCAL_SAVE:Z

    .line 22
    sput-boolean v1, Lcom/lzx/iteam/engine/observer/FreshContactObserver;->ENTRANCE_ONECE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 36
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lzx/iteam/engine/observer/FreshContactObserver;->limitTime:J

    .line 24
    new-instance v0, Lcom/lzx/iteam/engine/observer/FreshContactObserver$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/engine/observer/FreshContactObserver$1;-><init>(Lcom/lzx/iteam/engine/observer/FreshContactObserver;)V

    iput-object v0, p0, Lcom/lzx/iteam/engine/observer/FreshContactObserver;->mRetoreHandler:Landroid/os/Handler;

    .line 37
    iput-object p1, p0, Lcom/lzx/iteam/engine/observer/FreshContactObserver;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/lzx/iteam/engine/observer/FreshContactObserver;->mHandler:Landroid/os/Handler;

    .line 39
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result v0

    return v0
.end method

.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 44
    sget-object v1, Lcom/lzx/iteam/engine/observer/FreshContactObserver;->TAG:Ljava/lang/String;

    const-string v2, "in freshcontactobserver _________________________"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v1, p0, Lcom/lzx/iteam/engine/observer/FreshContactObserver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;

    move-result-object v0

    .line 46
    .local v0, "worker":Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;
    sget-boolean v1, Lcom/lzx/iteam/engine/observer/FreshContactObserver;->LOCAL_SAVE:Z

    if-eqz v1, :cond_1

    .line 47
    sget-object v1, Lcom/lzx/iteam/engine/observer/FreshContactObserver;->TAG:Ljava/lang/String;

    const-string v2, "value: local save"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    sget-boolean v1, Lcom/lzx/iteam/engine/observer/FreshContactObserver;->ENTRANCE_ONECE:Z

    if-nez v1, :cond_0

    .line 55
    const/4 v1, 0x1

    sput-boolean v1, Lcom/lzx/iteam/engine/observer/FreshContactObserver;->ENTRANCE_ONECE:Z

    .line 56
    sget-object v1, Lcom/lzx/iteam/engine/observer/FreshContactObserver;->TAG:Ljava/lang/String;

    const-string v2, "value: not local save"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v1, Lcom/lzx/iteam/engine/observer/FreshContactObserver$2;

    invoke-direct {v1, p0, v0}, Lcom/lzx/iteam/engine/observer/FreshContactObserver$2;-><init>(Lcom/lzx/iteam/engine/observer/FreshContactObserver;Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;)V

    .line 62
    invoke-virtual {v1}, Lcom/lzx/iteam/engine/observer/FreshContactObserver$2;->start()V

    goto :goto_0
.end method
