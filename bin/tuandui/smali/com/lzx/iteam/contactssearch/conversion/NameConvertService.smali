.class public Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;
.super Landroid/app/Service;
.source "NameConvertService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/contactssearch/conversion/NameConvertService$PersisitTask;
    }
.end annotation


# static fields
.field public static final ACTION_START:Ljava/lang/String; = "com.lzx.iteam.contactssearch.NameConvertService.START"

.field private static AUTO_CLOSE_TIME:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "NameConvertService"


# instance fields
.field private mDialerApp:Lcom/lzx/iteam/DialerApp;

.field private mIdleClosedTimer:Ljava/util/Timer;

.field private mLastRequestFlag:Z

.field private mPersistTask:Lcom/lzx/iteam/contactssearch/conversion/NameConvertService$PersisitTask;

.field private mPersister:Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;

.field private mPinyinSearch:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

.field private mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

.field private mServiceStartUp:Z

.field private mTimerScheduledFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;->AUTO_CLOSE_TIME:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 27
    iput-boolean v0, p0, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;->mLastRequestFlag:Z

    .line 31
    iput-boolean v0, p0, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;->mTimerScheduledFlag:Z

    .line 33
    iput-boolean v0, p0, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;->mServiceStartUp:Z

    .line 15
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;)Z
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;->doContactsChanges()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;)Lcom/lzx/iteam/contactssearch/conversion/NameConvertService$PersisitTask;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;->mPersistTask:Lcom/lzx/iteam/contactssearch/conversion/NameConvertService$PersisitTask;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;->mIdleClosedTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;Z)V
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;->mTimerScheduledFlag:Z

    return-void
.end method

.method private doContactsChanges()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 75
    sget-object v0, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->mGroupList:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->getGroupHash(Landroid/content/ContentResolver;)V

    .line 77
    invoke-static {p0}, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->getNoGroupsSet(Landroid/content/Context;)V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;->mPersister:Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;

    if-nez v0, :cond_2

    .line 88
    :cond_1
    :goto_0
    return v2

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;->mPersister:Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;

    iget-boolean v1, p0, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;->mServiceStartUp:Z

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->getChangesList(Z)V

    .line 85
    iget-boolean v0, p0, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;->mServiceStartUp:Z

    if-eqz v0, :cond_1

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;->mServiceStartUp:Z

    goto :goto_0
.end method

.method private doStartAction()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-static {v1}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->setPersistInterrupted(Z)V

    .line 154
    new-instance v0, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService$PersisitTask;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService$PersisitTask;-><init>(Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;)V

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;->mPersistTask:Lcom/lzx/iteam/contactssearch/conversion/NameConvertService$PersisitTask;

    .line 155
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;->mPersistTask:Lcom/lzx/iteam/contactssearch/conversion/NameConvertService$PersisitTask;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService$PersisitTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 156
    return-void
.end method

.method private scheduleAutoClose()V
    .locals 4

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;->mTimerScheduledFlag:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;->mIdleClosedTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;->mIdleClosedTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 96
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;->mIdleClosedTimer:Ljava/util/Timer;

    .line 99
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;->mIdleClosedTimer:Ljava/util/Timer;

    new-instance v1, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService$1;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService$1;-><init>(Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;)V

    .line 112
    sget-wide v2, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;->AUTO_CLOSE_TIME:J

    .line 99
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;->mTimerScheduledFlag:Z

    .line 114
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 181
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 160
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;->mServiceStartUp:Z

    .line 164
    invoke-static {p0}, Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;->mPersister:Lcom/lzx/iteam/contactssearch/conversion/PersistWorker;

    .line 165
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;->mIdleClosedTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;->mIdleClosedTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;->mPersistTask:Lcom/lzx/iteam/contactssearch/conversion/NameConvertService$PersisitTask;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;->mPersistTask:Lcom/lzx/iteam/contactssearch/conversion/NameConvertService$PersisitTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService$PersisitTask;->cancel(Z)Z

    .line 176
    :cond_1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 177
    return-void
.end method

.method public onFinishedWork(I)V
    .locals 1
    .param p1, "result"    # I

    .prologue
    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;->mPersistTask:Lcom/lzx/iteam/contactssearch/conversion/NameConvertService$PersisitTask;

    .line 63
    iget-boolean v0, p0, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;->mLastRequestFlag:Z

    if-eqz v0, :cond_0

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;->mLastRequestFlag:Z

    .line 65
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;->doStartAction()V

    .line 71
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;->scheduleAutoClose()V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 124
    if-nez p1, :cond_1

    .line 125
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;->stopSelf()V

    .line 149
    :cond_0
    :goto_0
    return v3

    .line 128
    :cond_1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/DialerApp;

    iput-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;->mDialerApp:Lcom/lzx/iteam/DialerApp;

    .line 129
    invoke-static {p0}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 130
    invoke-static {p0}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;->mPinyinSearch:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    .line 132
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "act":Ljava/lang/String;
    const-string v1, "com.lzx.iteam.contactssearch.NameConvertService.START"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 136
    iget-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;->mPersistTask:Lcom/lzx/iteam/contactssearch/conversion/NameConvertService$PersisitTask;

    if-nez v1, :cond_2

    .line 137
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;->doStartAction()V

    goto :goto_0

    .line 139
    :cond_2
    iput-boolean v2, p0, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;->mLastRequestFlag:Z

    .line 140
    invoke-static {v2}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->setPersistInterrupted(Z)V

    goto :goto_0

    .line 144
    :cond_3
    iget-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;->mPersistTask:Lcom/lzx/iteam/contactssearch/conversion/NameConvertService$PersisitTask;

    if-nez v1, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;->scheduleAutoClose()V

    goto :goto_0
.end method
