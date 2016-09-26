.class Lcom/lzx/iteam/MainActivity$1;
.super Landroid/os/Handler;
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
.field final synthetic this$0:Lcom/lzx/iteam/MainActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/MainActivity$1;->this$0:Lcom/lzx/iteam/MainActivity;

    .line 96
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/MainActivity$1;)Lcom/lzx/iteam/MainActivity;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/lzx/iteam/MainActivity$1;->this$0:Lcom/lzx/iteam/MainActivity;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 100
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 108
    :pswitch_0
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_2

    .line 109
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lzx/iteam/bean/AppMessage;

    .line 110
    .local v0, "appMessage":Lcom/lzx/iteam/bean/AppMessage;
    const-string v3, "1"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AppMessage;->getOnline()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 113
    const-string v3, "MainActivity"

    const-string v4, "--restartChatService"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/lzx/iteam/MainActivity$1;->this$0:Lcom/lzx/iteam/MainActivity;

    invoke-virtual {v3}, Lcom/lzx/iteam/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/lzx/iteam/service/LocalService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/lzx/iteam/MainActivity$1;->this$0:Lcom/lzx/iteam/MainActivity;

    invoke-virtual {v3, v2}, Lcom/lzx/iteam/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 117
    :try_start_0
    invoke-static {}, Lcom/lzx/iteam/service/NetServiceManager;->getInstance()Lcom/lzx/iteam/service/aidl/INetService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 118
    const-string v3, "Service"

    const-string v4, "MainActivity---addNewMessageListener"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-static {}, Lcom/lzx/iteam/service/NetServiceManager;->getInstance()Lcom/lzx/iteam/service/aidl/INetService;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/MainActivity$1;->this$0:Lcom/lzx/iteam/MainActivity;

    iget-object v4, v4, Lcom/lzx/iteam/MainActivity;->newMessageImpl:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    invoke-interface {v3, v4}, Lcom/lzx/iteam/service/aidl/INetService;->addNewMessageInterface(Lcom/lzx/iteam/service/aidl/NewMessageInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AppMessage;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 140
    iget-object v3, p0, Lcom/lzx/iteam/MainActivity$1;->this$0:Lcom/lzx/iteam/MainActivity;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AppMessage;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AppMessage;->getVersionLog()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AppMessage;->getDownload()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/lzx/iteam/MainActivity;->checkVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 121
    .restart local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 144
    .end local v0    # "appMessage":Lcom/lzx/iteam/bean/AppMessage;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x1f41

    if-ne v3, v4, :cond_3

    .line 145
    iget-object v3, p0, Lcom/lzx/iteam/MainActivity$1;->this$0:Lcom/lzx/iteam/MainActivity;

    iget-object v3, v3, Lcom/lzx/iteam/MainActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f080042

    .line 146
    const/4 v5, 0x1

    .line 145
    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 146
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 149
    :cond_3
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x3ea

    if-eq v3, v4, :cond_4

    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x3eb

    if-eq v3, v4, :cond_4

    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x3ed

    if-ne v3, v4, :cond_0

    .line 150
    :cond_4
    iget-object v3, p0, Lcom/lzx/iteam/MainActivity$1;->this$0:Lcom/lzx/iteam/MainActivity;

    # getter for: Lcom/lzx/iteam/MainActivity;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;
    invoke-static {v3}, Lcom/lzx/iteam/MainActivity;->access$0(Lcom/lzx/iteam/MainActivity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v4

    const-string v5, "\u63d0\u793a"

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v6, p0, Lcom/lzx/iteam/MainActivity$1;->this$0:Lcom/lzx/iteam/MainActivity;

    const v7, 0x7f08002c

    invoke-virtual {v6, v7}, Lcom/lzx/iteam/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v3, v6}, Lcom/lzx/iteam/util/AllDialogUtil;->titleMsgBtnStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 151
    iget-object v3, p0, Lcom/lzx/iteam/MainActivity$1;->this$0:Lcom/lzx/iteam/MainActivity;

    # getter for: Lcom/lzx/iteam/MainActivity;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;
    invoke-static {v3}, Lcom/lzx/iteam/MainActivity;->access$0(Lcom/lzx/iteam/MainActivity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v3

    new-instance v4, Lcom/lzx/iteam/MainActivity$1$1;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/MainActivity$1$1;-><init>(Lcom/lzx/iteam/MainActivity$1;)V

    invoke-virtual {v3, v4}, Lcom/lzx/iteam/util/AllDialogUtil;->setOnDialogListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;)V

    goto/16 :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x6fe
        :pswitch_0
    .end packed-switch
.end method
