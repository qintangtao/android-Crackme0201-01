.class Lcom/lzx/iteam/service/NetServiceManager$1;
.super Ljava/lang/Object;
.source "NetServiceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/service/NetServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 165
    invoke-static {p2}, Lcom/lzx/iteam/service/aidl/INetService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lzx/iteam/service/aidl/INetService;

    move-result-object v1

    sput-object v1, Lcom/lzx/iteam/service/NetServiceManager;->netService:Lcom/lzx/iteam/service/aidl/INetService;

    .line 166
    const-string v1, "Service"

    const-string v2, "NetServiceManager onServiceConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :try_start_0
    sget-object v1, Lcom/lzx/iteam/service/NetServiceManager;->netService:Lcom/lzx/iteam/service/aidl/INetService;

    invoke-interface {v1}, Lcom/lzx/iteam/service/aidl/INetService;->createSocketIOConnect()V

    .line 169
    sget-object v1, Lcom/lzx/iteam/service/NetServiceManager;->netService:Lcom/lzx/iteam/service/aidl/INetService;

    invoke-interface {v1}, Lcom/lzx/iteam/service/aidl/INetService;->loginXMPPServer()V

    .line 170
    sget-object v1, Lcom/lzx/iteam/MainActivity;->mActivity:Lcom/lzx/iteam/MainActivity;

    if-eqz v1, :cond_0

    .line 171
    sget-object v1, Lcom/lzx/iteam/service/NetServiceManager;->netService:Lcom/lzx/iteam/service/aidl/INetService;

    new-instance v2, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    sget-object v3, Lcom/lzx/iteam/MainActivity;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;-><init>(Lcom/lzx/iteam/MainActivity;)V

    invoke-interface {v1, v2}, Lcom/lzx/iteam/service/aidl/INetService;->addNewMessageInterface(Lcom/lzx/iteam/service/aidl/NewMessageInterface;)V

    .line 173
    :cond_0
    sget-object v1, Lcom/lzx/iteam/GroupFragment;->instance:Lcom/lzx/iteam/GroupFragment;

    if-eqz v1, :cond_1

    .line 174
    sget-object v1, Lcom/lzx/iteam/service/NetServiceManager;->netService:Lcom/lzx/iteam/service/aidl/INetService;

    new-instance v2, Lcom/lzx/iteam/GroupFragment$NewMessageResultImpl;

    sget-object v3, Lcom/lzx/iteam/GroupFragment;->instance:Lcom/lzx/iteam/GroupFragment;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Lcom/lzx/iteam/GroupFragment$NewMessageResultImpl;-><init>(Lcom/lzx/iteam/GroupFragment;)V

    invoke-interface {v1, v2}, Lcom/lzx/iteam/service/aidl/INetService;->addNewMessageInterface(Lcom/lzx/iteam/service/aidl/NewMessageInterface;)V

    .line 176
    :cond_1
    sget-object v1, Lcom/lzx/iteam/EventsFragment;->instance:Lcom/lzx/iteam/EventsFragment;

    if-eqz v1, :cond_2

    .line 177
    sget-object v1, Lcom/lzx/iteam/service/NetServiceManager;->netService:Lcom/lzx/iteam/service/aidl/INetService;

    new-instance v2, Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;

    sget-object v3, Lcom/lzx/iteam/EventsFragment;->instance:Lcom/lzx/iteam/EventsFragment;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;-><init>(Lcom/lzx/iteam/EventsFragment;)V

    invoke-interface {v1, v2}, Lcom/lzx/iteam/service/aidl/INetService;->addNewMessageInterface(Lcom/lzx/iteam/service/aidl/NewMessageInterface;)V

    .line 179
    :cond_2
    sget-object v1, Lcom/lzx/iteam/ChatActivity;->instance:Lcom/lzx/iteam/ChatActivity;

    if-eqz v1, :cond_3

    .line 180
    sget-object v1, Lcom/lzx/iteam/service/NetServiceManager;->netService:Lcom/lzx/iteam/service/aidl/INetService;

    new-instance v2, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;

    sget-object v3, Lcom/lzx/iteam/ChatActivity;->instance:Lcom/lzx/iteam/ChatActivity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;-><init>(Lcom/lzx/iteam/ChatActivity;)V

    invoke-interface {v1, v2}, Lcom/lzx/iteam/service/aidl/INetService;->addNewMessageInterface(Lcom/lzx/iteam/service/aidl/NewMessageInterface;)V

    .line 182
    :cond_3
    sget-object v1, Lcom/lzx/iteam/EventDetailContentActivity;->instance:Lcom/lzx/iteam/EventDetailContentActivity;

    if-eqz v1, :cond_4

    .line 183
    sget-object v1, Lcom/lzx/iteam/service/NetServiceManager;->netService:Lcom/lzx/iteam/service/aidl/INetService;

    new-instance v2, Lcom/lzx/iteam/EventDetailContentActivity$NewMessageResultImpl;

    sget-object v3, Lcom/lzx/iteam/EventDetailContentActivity;->instance:Lcom/lzx/iteam/EventDetailContentActivity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Lcom/lzx/iteam/EventDetailContentActivity$NewMessageResultImpl;-><init>(Lcom/lzx/iteam/EventDetailContentActivity;)V

    invoke-interface {v1, v2}, Lcom/lzx/iteam/service/aidl/INetService;->addNewMessageInterface(Lcom/lzx/iteam/service/aidl/NewMessageInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :cond_4
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 196
    const/4 v1, 0x0

    sput-object v1, Lcom/lzx/iteam/service/NetServiceManager;->netService:Lcom/lzx/iteam/service/aidl/INetService;

    .line 197
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/lzx/iteam/DialerApp;->mContext:Landroid/content/Context;

    const-class v2, Lcom/lzx/iteam/service/LocalService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 198
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/lzx/iteam/DialerApp;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 199
    return-void
.end method
