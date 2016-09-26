.class public Lcom/lzx/iteam/BatchSendSmsService;
.super Landroid/app/Service;
.source "BatchSendSmsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/BatchSendSmsService$SmsSendSuccessReceiver;
    }
.end annotation


# static fields
.field public static SEND_SMS_ID:I = 0x0

.field public static final SENT_SMS_ACTION:Ljava/lang/String; = "SENT_SMS_ACTION"

.field public static volatile running:Z


# instance fields
.field private blockIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private currentMsg:I

.field private currentPerson:I

.field private failNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field private msgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private notificationMgr:Landroid/app/NotificationManager;

.field private persons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/widget/PersonVO;",
            ">;"
        }
    .end annotation
.end field

.field private sendIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private sendSuccessRecv:Landroid/content/BroadcastReceiver;

.field private smsManager:Landroid/telephony/SmsManager;

.field private successNum:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const v0, 0x7f02032a

    sput v0, Lcom/lzx/iteam/BatchSendSmsService;->SEND_SMS_ID:I

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 25
    iput v0, p0, Lcom/lzx/iteam/BatchSendSmsService;->currentPerson:I

    .line 26
    iput v0, p0, Lcom/lzx/iteam/BatchSendSmsService;->currentMsg:I

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService;->sendIntents:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService;->persons:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService;->blockIntents:Ljava/util/ArrayList;

    .line 18
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/BatchSendSmsService;)Landroid/app/NotificationManager;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService;->notificationMgr:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lzx/iteam/BatchSendSmsService;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService;->blockIntents:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$10(Lcom/lzx/iteam/BatchSendSmsService;)Landroid/telephony/SmsManager;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService;->smsManager:Landroid/telephony/SmsManager;

    return-object v0
.end method

.method static synthetic access$11(Lcom/lzx/iteam/BatchSendSmsService;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService;->sendIntents:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/BatchSendSmsService;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService;->successNum:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lzx/iteam/BatchSendSmsService;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService;->persons:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lzx/iteam/BatchSendSmsService;)I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/lzx/iteam/BatchSendSmsService;->currentPerson:I

    return v0
.end method

.method static synthetic access$5(Lcom/lzx/iteam/BatchSendSmsService;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService;->msgs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lzx/iteam/BatchSendSmsService;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/lzx/iteam/BatchSendSmsService;->currentMsg:I

    return v0
.end method

.method static synthetic access$7(Lcom/lzx/iteam/BatchSendSmsService;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService;->failNum:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$8(Lcom/lzx/iteam/BatchSendSmsService;I)V
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lcom/lzx/iteam/BatchSendSmsService;->currentMsg:I

    return-void
.end method

.method static synthetic access$9(Lcom/lzx/iteam/BatchSendSmsService;I)V
    .locals 0

    .prologue
    .line 25
    iput p1, p0, Lcom/lzx/iteam/BatchSendSmsService;->currentPerson:I

    return-void
.end method


# virtual methods
.method public createCancelNotification()Landroid/app/Notification;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 192
    const-string v1, "\u7fa4\u53d1\u77ed\u4fe1\u5df2\u53d6\u6d88"

    .line 193
    .local v1, "title":Ljava/lang/String;
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 194
    .local v0, "notification":Landroid/app/Notification;
    const v2, 0x7f02032a

    iput v2, v0, Landroid/app/Notification;->icon:I

    .line 195
    const/16 v2, 0x10

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 196
    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 197
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v3, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v1, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 198
    return-object v0
.end method

.method public createFinishNotification()Landroid/app/Notification;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u7fa4\u53d1\u77ed\u4fe1\u5b8c\u6bd5,\u6210\u529f:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lzx/iteam/BatchSendSmsService;->successNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u6761,\u5931\u8d25:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lzx/iteam/BatchSendSmsService;->failNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u6761"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, "title":Ljava/lang/String;
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 184
    .local v0, "notification":Landroid/app/Notification;
    const v2, 0x7f02032a

    iput v2, v0, Landroid/app/Notification;->icon:I

    .line 185
    const/16 v2, 0x10

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 186
    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 187
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v4, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v1, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 188
    return-object v0
.end method

.method public createProcessNotification(Ljava/lang/String;I)Landroid/app/Notification;
    .locals 7
    .param p1, "tickerText"    # Ljava/lang/String;
    .param p2, "currentCount"    # I

    .prologue
    const/4 v6, 0x0

    .line 155
    add-int/lit8 p2, p2, 0x1

    .line 156
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 157
    .local v1, "notification":Landroid/app/Notification;
    const v3, 0x7f02032a

    iput v3, v1, Landroid/app/Notification;->icon:I

    .line 158
    const/4 v3, 0x2

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 159
    iput-object p1, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Landroid/app/Notification;->when:J

    .line 161
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/lzx/iteam/CancelBatchSendSmsActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 162
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x20000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 163
    invoke-static {p0, v6, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 164
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/lzx/iteam/BatchSendSmsService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0300c5

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 165
    .local v2, "rv":Landroid/widget/RemoteViews;
    iput-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 166
    const v3, 0x7f0e0536

    iget-object v4, p0, Lcom/lzx/iteam/BatchSendSmsService;->persons:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v3, v4, p2, v6}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 167
    const v3, 0x7f0e0537

    new-instance v4, Ljava/lang/StringBuilder;

    mul-int/lit8 v5, p2, 0x64

    iget-object v6, p0, Lcom/lzx/iteam/BatchSendSmsService;->persons:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    div-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 168
    return-object v1
.end method

.method public createStartNotification()Landroid/app/Notification;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 172
    const-string v1, "\u7fa4\u53d1\u77ed\u4fe1\u5f00\u59cb..."

    .line 173
    .local v1, "title":Ljava/lang/String;
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 174
    .local v0, "notification":Landroid/app/Notification;
    const v2, 0x7f02032a

    iput v2, v0, Landroid/app/Notification;->icon:I

    .line 175
    const/16 v2, 0x10

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 176
    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 177
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v3, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v1, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 178
    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 37
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 38
    new-instance v0, Lcom/lzx/iteam/BatchSendSmsService$SmsSendSuccessReceiver;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/BatchSendSmsService$SmsSendSuccessReceiver;-><init>(Lcom/lzx/iteam/BatchSendSmsService;)V

    iput-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService;->sendSuccessRecv:Landroid/content/BroadcastReceiver;

    .line 39
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService;->sendSuccessRecv:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "SENT_SMS_ACTION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/lzx/iteam/BatchSendSmsService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 40
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService;->smsManager:Landroid/telephony/SmsManager;

    .line 41
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/BatchSendSmsService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService;->notificationMgr:Landroid/app/NotificationManager;

    .line 42
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 82
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lzx/iteam/BatchSendSmsService;->running:Z

    .line 83
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService;->sendSuccessRecv:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/BatchSendSmsService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 84
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 50
    if-nez p1, :cond_0

    .line 76
    :goto_0
    return v11

    .line 53
    :cond_0
    sget-boolean v0, Lcom/lzx/iteam/BatchSendSmsService;->running:Z

    if-nez v0, :cond_2

    .line 54
    sput-boolean v3, Lcom/lzx/iteam/BatchSendSmsService;->running:Z

    .line 55
    const-string v0, "content"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 56
    .local v6, "content":Ljava/lang/String;
    const-string v0, "persons"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService;->persons:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService;->successNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService;->failNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 59
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService;->smsManager:Landroid/telephony/SmsManager;

    invoke-virtual {v0, v6}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService;->msgs:Ljava/util/ArrayList;

    .line 60
    iput v1, p0, Lcom/lzx/iteam/BatchSendSmsService;->currentMsg:I

    .line 61
    iput v1, p0, Lcom/lzx/iteam/BatchSendSmsService;->currentPerson:I

    .line 62
    new-instance v8, Landroid/content/Intent;

    const-string v0, "SENT_SMS_ACTION"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    .local v8, "intent1":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/lzx/iteam/BatchSendSmsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, v8, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 64
    .local v10, "sendIntent":Landroid/app/PendingIntent;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService;->msgs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v7, v0, :cond_1

    .line 67
    invoke-virtual {p0}, Lcom/lzx/iteam/BatchSendSmsService;->createStartNotification()Landroid/app/Notification;

    move-result-object v9

    .line 68
    .local v9, "notify":Landroid/app/Notification;
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService;->notificationMgr:Landroid/app/NotificationManager;

    sget v1, Lcom/lzx/iteam/BatchSendSmsService;->SEND_SMS_ID:I

    invoke-virtual {v0, v1, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 69
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService;->smsManager:Landroid/telephony/SmsManager;

    iget-object v1, p0, Lcom/lzx/iteam/BatchSendSmsService;->persons:Ljava/util/ArrayList;

    iget v3, p0, Lcom/lzx/iteam/BatchSendSmsService;->currentPerson:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/PersonVO;

    iget-object v1, v1, Lcom/lzx/iteam/widget/PersonVO;->number:Ljava/lang/String;

    iget-object v3, p0, Lcom/lzx/iteam/BatchSendSmsService;->msgs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lzx/iteam/BatchSendSmsService;->sendIntents:Ljava/util/ArrayList;

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 65
    .end local v9    # "notify":Landroid/app/Notification;
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService;->sendIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 71
    .end local v6    # "content":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v8    # "intent1":Landroid/content/Intent;
    .end local v10    # "sendIntent":Landroid/app/PendingIntent;
    :cond_2
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService;->blockIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-virtual {p0}, Lcom/lzx/iteam/BatchSendSmsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5df2\u52a0\u5165\u53d1\u9001\u961f\u5217,\u8bf7\u7a0d\u5019..."

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
