.class public Lcom/lzx/iteam/service/ChatService;
.super Landroid/app/Service;
.source "ChatService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/service/ChatService$GetChatMsgTask;,
        Lcom/lzx/iteam/service/ChatService$GetEventReplyMsgTask;
    }
.end annotation


# static fields
.field public static instance:Lcom/lzx/iteam/service/ChatService;


# instance fields
.field private final MSG_CHAT_GET:I

.field private final MSG_EVENT_REPLY_GET:I

.field private final MSG_TASH_DONE:I

.field private connectivityManager:Landroid/net/ConnectivityManager;

.field private emotion:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private eventNotificationID:I

.field private info:Landroid/net/NetworkInfo;

.field private final mBinder:Lcom/lzx/iteam/service/aidl/INetService$Stub;

.field private mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

.field private mHandler:Landroid/os/Handler;

.field private mMsgListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/service/aidl/NewMessageInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mNetWorkInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

.field private mSocketIOClient:Lcom/koushikdutta/async/http/socketio/SocketIOClient;

.field private messageNotificatioManager:Landroid/app/NotificationManager;

.field private messageNotification:Landroid/app/Notification;

.field private reconnectCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 57
    iput-object v0, p0, Lcom/lzx/iteam/service/ChatService;->messageNotification:Landroid/app/Notification;

    .line 58
    iput-object v0, p0, Lcom/lzx/iteam/service/ChatService;->messageNotificatioManager:Landroid/app/NotificationManager;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/service/ChatService;->mMsgListeners:Ljava/util/ArrayList;

    .line 60
    const/4 v0, 0x1

    iput v0, p0, Lcom/lzx/iteam/service/ChatService;->eventNotificationID:I

    .line 62
    const/16 v0, 0xfa1

    iput v0, p0, Lcom/lzx/iteam/service/ChatService;->MSG_CHAT_GET:I

    .line 63
    const/16 v0, 0xfa2

    iput v0, p0, Lcom/lzx/iteam/service/ChatService;->MSG_TASH_DONE:I

    .line 64
    const/16 v0, 0xfa3

    iput v0, p0, Lcom/lzx/iteam/service/ChatService;->MSG_EVENT_REPLY_GET:I

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/lzx/iteam/service/ChatService;->reconnectCount:I

    .line 69
    new-instance v0, Lcom/lzx/iteam/service/ChatService$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/service/ChatService$1;-><init>(Lcom/lzx/iteam/service/ChatService;)V

    iput-object v0, p0, Lcom/lzx/iteam/service/ChatService;->mHandler:Landroid/os/Handler;

    .line 175
    new-instance v0, Lcom/lzx/iteam/service/ChatService$2;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/service/ChatService$2;-><init>(Lcom/lzx/iteam/service/ChatService;)V

    iput-object v0, p0, Lcom/lzx/iteam/service/ChatService;->mBinder:Lcom/lzx/iteam/service/aidl/INetService$Stub;

    .line 567
    new-instance v0, Lcom/lzx/iteam/service/ChatService$3;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/service/ChatService$3;-><init>(Lcom/lzx/iteam/service/ChatService;)V

    iput-object v0, p0, Lcom/lzx/iteam/service/ChatService;->mNetWorkInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 51
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/service/ChatService;)Lcom/lzx/iteam/provider/CloudDBOperation;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lzx/iteam/service/ChatService;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->mMsgListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$10(Lcom/lzx/iteam/service/ChatService;)I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/lzx/iteam/service/ChatService;->reconnectCount:I

    return v0
.end method

.method static synthetic access$11(Lcom/lzx/iteam/service/ChatService;)Lcom/lzx/iteam/util/PreferenceUtil;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    return-object v0
.end method

.method static synthetic access$12(Lcom/lzx/iteam/service/ChatService;I)V
    .locals 0

    .prologue
    .line 65
    iput p1, p0, Lcom/lzx/iteam/service/ChatService;->reconnectCount:I

    return-void
.end method

.method static synthetic access$13(Lcom/lzx/iteam/service/ChatService;)V
    .locals 0

    .prologue
    .line 554
    invoke-direct {p0}, Lcom/lzx/iteam/service/ChatService;->registNetInfoReceiver()V

    return-void
.end method

.method static synthetic access$14(Lcom/lzx/iteam/service/ChatService;Landroid/net/ConnectivityManager;)V
    .locals 0

    .prologue
    .line 562
    iput-object p1, p0, Lcom/lzx/iteam/service/ChatService;->connectivityManager:Landroid/net/ConnectivityManager;

    return-void
.end method

.method static synthetic access$15(Lcom/lzx/iteam/service/ChatService;)Landroid/net/ConnectivityManager;
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->connectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$16(Lcom/lzx/iteam/service/ChatService;Landroid/net/NetworkInfo;)V
    .locals 0

    .prologue
    .line 563
    iput-object p1, p0, Lcom/lzx/iteam/service/ChatService;->info:Landroid/net/NetworkInfo;

    return-void
.end method

.method static synthetic access$17(Lcom/lzx/iteam/service/ChatService;)Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->info:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$18(Lcom/lzx/iteam/service/ChatService;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/service/ChatService;)Landroid/app/Notification;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->messageNotification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lzx/iteam/service/ChatService;)Landroid/app/NotificationManager;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->messageNotificatioManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lzx/iteam/service/ChatService;)I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/lzx/iteam/service/ChatService;->eventNotificationID:I

    return v0
.end method

.method static synthetic access$5(Lcom/lzx/iteam/service/ChatService;I)V
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lcom/lzx/iteam/service/ChatService;->eventNotificationID:I

    return-void
.end method

.method static synthetic access$6(Lcom/lzx/iteam/service/ChatService;Landroid/app/Notification;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/lzx/iteam/service/ChatService;->messageNotification:Landroid/app/Notification;

    return-void
.end method

.method static synthetic access$7(Lcom/lzx/iteam/service/ChatService;Landroid/app/NotificationManager;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/lzx/iteam/service/ChatService;->messageNotificatioManager:Landroid/app/NotificationManager;

    return-void
.end method

.method static synthetic access$8(Lcom/lzx/iteam/service/ChatService;Lcom/koushikdutta/async/http/socketio/SocketIOClient;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/lzx/iteam/service/ChatService;->mSocketIOClient:Lcom/koushikdutta/async/http/socketio/SocketIOClient;

    return-void
.end method

.method static synthetic access$9(Lcom/lzx/iteam/service/ChatService;)Lcom/koushikdutta/async/http/socketio/SocketIOClient;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->mSocketIOClient:Lcom/koushikdutta/async/http/socketio/SocketIOClient;

    return-object v0
.end method

.method private addEmotion()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 600
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/service/ChatService;->emotion:Ljava/util/Map;

    .line 601
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->emotion:Ljava/util/Map;

    const-string v1, "#[face/png/f_static_000.png]#"

    const-string v2, "[\u5fae\u7b11]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->emotion:Ljava/util/Map;

    const-string v1, "#[face/png/f_static_001.png]#"

    const-string v2, "[\u9ad8\u5174]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->emotion:Ljava/util/Map;

    const-string v1, "#[face/png/f_static_002.png]#"

    const-string v2, "[\u5bb3\u7f9e]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->emotion:Ljava/util/Map;

    const-string v1, "#[face/png/f_static_003.png]#"

    const-string v2, "[\u8c03\u76ae]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->emotion:Ljava/util/Map;

    const-string v1, "#[face/png/f_static_004.png]#"

    const-string v2, "[\u8272]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->emotion:Ljava/util/Map;

    const-string v1, "#[face/png/f_static_005.png]#"

    const-string v2, "[\u7231\u4f60]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->emotion:Ljava/util/Map;

    const-string v1, "#[face/png/f_static_006.png]#"

    const-string v2, "[\u5472\u7259]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->emotion:Ljava/util/Map;

    const-string v1, "#[face/png/f_static_007.png]#"

    const-string v2, "[\u800d\u5b9d]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->emotion:Ljava/util/Map;

    const-string v1, "#[face/png/f_static_008.png]#"

    const-string v2, "[\u9177]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->emotion:Ljava/util/Map;

    const-string v1, "#[face/png/f_static_009.png]#"

    const-string v2, "[\u6487\u5634]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->emotion:Ljava/util/Map;

    const-string v1, "#[face/png/f_static_010.png]#"

    const-string v2, "[\u5410\u820c]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->emotion:Ljava/util/Map;

    const-string v1, "#[face/png/f_static_011.png]#"

    const-string v2, "[\u7b11\u54ed]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->emotion:Ljava/util/Map;

    const-string v1, "#[face/png/f_static_012.png]#"

    const-string v2, "[\u5c34\u5c2c]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->emotion:Ljava/util/Map;

    const-string v1, "#[face/png/f_static_013.png]#"

    const-string v2, "[\u6c57]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->emotion:Ljava/util/Map;

    const-string v1, "#[face/png/f_static_014.png]#"

    const-string v2, "[\u96be\u8fc7]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->emotion:Ljava/util/Map;

    const-string v1, "#[face/png/f_static_015.png]#"

    const-string v2, "[\u8138\u7ea2]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->emotion:Ljava/util/Map;

    const-string v1, "#[face/png/f_static_016.png]#"

    const-string v2, "[\u5f20\u53e3]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->emotion:Ljava/util/Map;

    const-string v1, "#[face/png/f_static_017.png]#"

    const-string v2, "[\u95ed\u5634]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->emotion:Ljava/util/Map;

    const-string v1, "#[face/png/f_static_018.png]#"

    const-string v2, "[\u772f\u773c]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->emotion:Ljava/util/Map;

    const-string v1, "#[face/png/f_static_019.png]#"

    const-string v2, "[\u54e6]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->emotion:Ljava/util/Map;

    const-string v1, "#[face/png/f_static_020.png]#"

    const-string v2, "[\u6ce8\u89c6]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->emotion:Ljava/util/Map;

    const-string v1, "#[face/png/f_static_021.png]#"

    const-string v2, "[\u4e0d\u5c51]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->emotion:Ljava/util/Map;

    const-string v1, "#[face/png/f_static_022.png]#"

    const-string v2, "[\u6015\u6015]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->emotion:Ljava/util/Map;

    const-string v1, "#[face/png/f_static_023.png]#"

    const-string v2, "[\u96be\u8fc7]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->emotion:Ljava/util/Map;

    const-string v1, "#[face/png/f_static_024.png]#"

    const-string v2, "[\u4f24\u5fc3]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->emotion:Ljava/util/Map;

    const-string v1, "#[face/png/f_static_025.png]#"

    const-string v2, "[\u53d1\u6101]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->emotion:Ljava/util/Map;

    const-string v1, "#[face/png/f_static_026.png]#"

    const-string v2, "[\u6d41\u6cea]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->emotion:Ljava/util/Map;

    const-string v1, "#[face/png/f_static_027.png]#"

    const-string v2, "[\u60ca\u6050]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->emotion:Ljava/util/Map;

    const-string v1, "#[face/png/f_static_028.png]#"

    const-string v2, "[\u6124\u6012]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->emotion:Ljava/util/Map;

    const-string v1, "#[face/png/f_static_029.png]#"

    const-string v2, "[\u778c\u7761]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->emotion:Ljava/util/Map;

    const-string v1, "#[face/png/f_static_030.png]#"

    const-string v2, "[\u770b\u4f60]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->emotion:Ljava/util/Map;

    const-string v1, "#[face/png/f_static_031.png]#"

    const-string v2, "[\u611f\u5192]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->emotion:Ljava/util/Map;

    const-string v1, "#[face/png/f_static_032.png]#"

    const-string v2, "[\u574f\u7b11]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->emotion:Ljava/util/Map;

    const-string v1, "#[face/png/f_static_033.png]#"

    const-string v2, "[\u5e7d\u7075]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->emotion:Ljava/util/Map;

    const-string v1, "#[face/png/f_static_034.png]#"

    const-string v2, "[\u5c0f\u732b]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->emotion:Ljava/util/Map;

    const-string v1, "#[face/png/f_static_035.png]#"

    const-string v2, "[\u5c0f\u72d7]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->emotion:Ljava/util/Map;

    const-string v1, "#[face/png/f_static_036.png]#"

    const-string v2, "[\u7537\u751f]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->emotion:Ljava/util/Map;

    const-string v1, "#[face/png/f_static_037.png]#"

    const-string v2, "[\u5973\u751f]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->emotion:Ljava/util/Map;

    const-string v1, "#[face/png/f_static_038.png]#"

    const-string v2, "[\u5927\u53d4]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->emotion:Ljava/util/Map;

    const-string v1, "#[face/png/f_static_039.png]#"

    const-string v2, "[\u7f8e\u5973]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->emotion:Ljava/util/Map;

    const-string v1, "#[face/png/f_static_040.png]#"

    const-string v2, "[\u62f3\u5934]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->emotion:Ljava/util/Map;

    const-string v1, "#[face/png/f_static_041.png]#"

    const-string v2, "[\u9119\u89c6]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->emotion:Ljava/util/Map;

    const-string v1, "#[face/png/f_static_042.png]#"

    const-string v2, "[\u8d5e]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->emotion:Ljava/util/Map;

    const-string v1, "#[face/png/f_static_043.png]#"

    const-string v2, "[\u5ba3\u8a93]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->emotion:Ljava/util/Map;

    const-string v1, "#[face/png/f_static_044.png]#"

    const-string v2, "[OK]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->emotion:Ljava/util/Map;

    const-string v1, "#[face/png/f_static_045.png]#"

    const-string v2, "[\u9f13\u638c]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->emotion:Ljava/util/Map;

    const-string v1, "#[face/png/f_static_046.png]#"

    const-string v2, "[\u5f3a\u58ee]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->emotion:Ljava/util/Map;

    const-string v1, "#[face/png/f_static_047.png]#"

    const-string v2, "[\u80dc\u5229]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->emotion:Ljava/util/Map;

    const-string v1, "#[face/png/f_static_048.png]#"

    const-string v2, "[\u5411\u4e0b]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->emotion:Ljava/util/Map;

    const-string v1, "#[face/png/f_static_049.png]#"

    const-string v2, "[\u5411\u5de6]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->emotion:Ljava/util/Map;

    const-string v1, "#[face/png/f_static_050.png]#"

    const-string v2, "[\u5411\u53f3]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->emotion:Ljava/util/Map;

    const-string v1, "#[face/png/f_static_051.png]#"

    const-string v2, "[\u5411\u524d]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->emotion:Ljava/util/Map;

    return-object v0
.end method

.method private registNetInfoReceiver()V
    .locals 2

    .prologue
    .line 555
    iget-object v1, p0, Lcom/lzx/iteam/service/ChatService;->mNetWorkInfoReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 556
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 557
    .local v0, "myIntentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 558
    iget-object v1, p0, Lcom/lzx/iteam/service/ChatService;->mNetWorkInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/lzx/iteam/service/ChatService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 560
    .end local v0    # "myIntentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private reply(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 658
    move-object v1, p1

    .line 659
    .local v1, "newContent":Ljava/lang/String;
    const-string v3, "(\\#\\[face/png/f_static_)\\d{3}(.png\\]\\#)"

    .line 660
    .local v3, "regex":Ljava/lang/String;
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 661
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 662
    .local v0, "m":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_0

    .line 676
    return-object v1

    .line 663
    :cond_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    .line 674
    .local v4, "tempText":Ljava/lang/String;
    iget-object v5, p0, Lcom/lzx/iteam/service/ChatService;->emotion:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public handleReceiveMessage(Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V
    .locals 10
    .param p1, "msg"    # Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    .prologue
    .line 681
    move-object v0, p1

    .line 682
    .local v0, "chatMsg":Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    const-string v6, "Service"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ChatService---chatMsg--"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getMsgContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iget-object v6, p0, Lcom/lzx/iteam/service/ChatService;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getChatGroupID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Lcom/lzx/iteam/provider/CloudDBOperation;->updateChatMessage(Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;Ljava/lang/String;)V

    .line 684
    new-instance v3, Lcom/lzx/iteam/provider/MessageDB;

    invoke-direct {v3, p0}, Lcom/lzx/iteam/provider/MessageDB;-><init>(Landroid/content/Context;)V

    .line 685
    .local v3, "mDb":Lcom/lzx/iteam/provider/MessageDB;
    invoke-virtual {v3, v0}, Lcom/lzx/iteam/provider/MessageDB;->addChatMessage(Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V

    .line 686
    iget-object v6, p0, Lcom/lzx/iteam/service/ChatService;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getChatGroupID()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getChatGroupID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/lzx/iteam/provider/MessageDB;->getUnReadCountOfOneGroup(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/lzx/iteam/provider/CloudDBOperation;->updateChatUnReadCount(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    iget-object v6, p0, Lcom/lzx/iteam/service/ChatService;->mMsgListeners:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/lzx/iteam/service/ChatService;->mMsgListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 688
    iget-object v6, p0, Lcom/lzx/iteam/service/ChatService;->mMsgListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 696
    :cond_0
    invoke-static {p0}, Lcom/lzx/iteam/util/Constants;->isBackground(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 697
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lcom/lzx/iteam/MainActivity;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 699
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v6, 0x14000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 700
    const/4 v6, 0x1

    .line 701
    const/high16 v7, 0x40000000    # 2.0f

    .line 700
    invoke-static {p0, v6, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 702
    .local v5, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v6, p0, Lcom/lzx/iteam/service/ChatService;->messageNotification:Landroid/app/Notification;

    const-string v7, "\u56e2\u961f"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getSenderName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getMsgContent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/lzx/iteam/service/ChatService;->reply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, p0, v7, v8, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 703
    iget-object v6, p0, Lcom/lzx/iteam/service/ChatService;->messageNotificatioManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getChatGroupID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iget-object v8, p0, Lcom/lzx/iteam/service/ChatService;->messageNotification:Landroid/app/Notification;

    invoke-virtual {v6, v7, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 706
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_1
    return-void

    .line 688
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lzx/iteam/service/aidl/NewMessageInterface;

    .line 690
    .local v4, "newMessage":Lcom/lzx/iteam/service/aidl/NewMessageInterface;
    :try_start_0
    invoke-interface {v4, v0}, Lcom/lzx/iteam/service/aidl/NewMessageInterface;->onNewMessage(Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 691
    :catch_0
    move-exception v1

    .line 692
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public notifyPage(Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V
    .locals 4
    .param p1, "chatMoreMsg"    # Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    .prologue
    .line 712
    iget-object v2, p0, Lcom/lzx/iteam/service/ChatService;->mMsgListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lzx/iteam/service/ChatService;->mMsgListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 713
    iget-object v2, p0, Lcom/lzx/iteam/service/ChatService;->mMsgListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 722
    :cond_0
    return-void

    .line 713
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/service/aidl/NewMessageInterface;

    .line 715
    .local v1, "newMessage":Lcom/lzx/iteam/service/aidl/NewMessageInterface;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/lzx/iteam/service/aidl/NewMessageInterface;->notifyPage(Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 716
    :catch_0
    move-exception v0

    .line 717
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->mBinder:Lcom/lzx/iteam/service/aidl/INetService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 162
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 163
    invoke-static {p0}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/service/ChatService;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 164
    new-instance v0, Lcom/lzx/iteam/provider/CloudDBOperation;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/provider/CloudDBOperation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/service/ChatService;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    .line 165
    sput-object p0, Lcom/lzx/iteam/service/ChatService;->instance:Lcom/lzx/iteam/service/ChatService;

    .line 166
    invoke-direct {p0}, Lcom/lzx/iteam/service/ChatService;->addEmotion()Ljava/util/Map;

    .line 167
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 590
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->mNetWorkInfoReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService;->mNetWorkInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/service/ChatService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 593
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 594
    const-string v0, "ChatService"

    const-string v1, "onDestory"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    return-void
.end method
