.class Lcom/lzx/iteam/SettingActivity$1;
.super Landroid/os/Handler;
.source "SettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/SettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/SettingActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/SettingActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/SettingActivity$1;->this$0:Lcom/lzx/iteam/SettingActivity;

    .line 76
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 80
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 82
    :sswitch_0
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_2

    .line 84
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/SettingActivity$1;->this$0:Lcom/lzx/iteam/SettingActivity;

    invoke-virtual {v3, v4}, Lcom/lzx/iteam/net/LocalLogin;->localDeactive(Landroid/content/Context;)V

    .line 86
    :try_start_0
    invoke-static {}, Lcom/lzx/iteam/service/NetServiceManager;->getInstance()Lcom/lzx/iteam/service/aidl/INetService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 87
    invoke-static {}, Lcom/lzx/iteam/service/NetServiceManager;->getInstance()Lcom/lzx/iteam/service/aidl/INetService;

    move-result-object v3

    invoke-interface {v3}, Lcom/lzx/iteam/service/aidl/INetService;->disSocketIOConnect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/lzx/iteam/SettingActivity$1;->this$0:Lcom/lzx/iteam/SettingActivity;

    const-string v4, "\u9000\u51fa\u6210\u529f"

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 92
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 94
    iget-object v3, p0, Lcom/lzx/iteam/SettingActivity$1;->this$0:Lcom/lzx/iteam/SettingActivity;

    # getter for: Lcom/lzx/iteam/SettingActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;
    invoke-static {v3}, Lcom/lzx/iteam/SettingActivity;->access$0(Lcom/lzx/iteam/SettingActivity;)Lcom/lzx/iteam/provider/CloudDBOperation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lzx/iteam/provider/CloudDBOperation;->deleteAllTalkMyMsg()I

    .line 95
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/lzx/iteam/SettingActivity$1;->this$0:Lcom/lzx/iteam/SettingActivity;

    const-class v4, Lcom/lzx/iteam/LoginActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x24000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 97
    iget-object v3, p0, Lcom/lzx/iteam/SettingActivity$1;->this$0:Lcom/lzx/iteam/SettingActivity;

    invoke-virtual {v3, v2}, Lcom/lzx/iteam/SettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 98
    sget-object v3, Lcom/lzx/iteam/MainActivity;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-virtual {v3}, Lcom/lzx/iteam/MainActivity;->finish()V

    .line 99
    iget-object v3, p0, Lcom/lzx/iteam/SettingActivity$1;->this$0:Lcom/lzx/iteam/SettingActivity;

    invoke-virtual {v3}, Lcom/lzx/iteam/SettingActivity;->finish()V

    goto :goto_0

    .line 88
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 102
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x1f41

    if-ne v3, v4, :cond_3

    .line 103
    iget-object v3, p0, Lcom/lzx/iteam/SettingActivity$1;->this$0:Lcom/lzx/iteam/SettingActivity;

    const v4, 0x7f080042

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 104
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 106
    :cond_3
    iget-object v4, p0, Lcom/lzx/iteam/SettingActivity$1;->this$0:Lcom/lzx/iteam/SettingActivity;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 107
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 112
    :sswitch_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_0

    .line 113
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lzx/iteam/bean/AppMessage;

    .line 114
    .local v0, "appMessage":Lcom/lzx/iteam/bean/AppMessage;
    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AppMessage;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 115
    iget-object v3, p0, Lcom/lzx/iteam/SettingActivity$1;->this$0:Lcom/lzx/iteam/SettingActivity;

    const-string v4, "\u5df2\u7ecf\u662f\u6700\u65b0\u7248\u672c"

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 127
    :cond_4
    iget-object v3, p0, Lcom/lzx/iteam/SettingActivity$1;->this$0:Lcom/lzx/iteam/SettingActivity;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AppMessage;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AppMessage;->getVersionLog()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AppMessage;->getDownload()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/lzx/iteam/SettingActivity;->checkVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 80
    nop

    :sswitch_data_0
    .sparse-switch
        0x700 -> :sswitch_1
        0x7d2 -> :sswitch_0
    .end sparse-switch
.end method
