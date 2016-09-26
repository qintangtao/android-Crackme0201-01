.class Lcom/lzx/iteam/net/TalkListCenter$1$1;
.super Ljava/lang/Object;
.source "TalkListCenter.java"

# interfaces
.implements Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/net/TalkListCenter$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lzx/iteam/net/TalkListCenter$1;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/net/TalkListCenter$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/net/TalkListCenter$1$1;->this$1:Lcom/lzx/iteam/net/TalkListCenter$1;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 110
    return-void
.end method

.method public onConfirmClick(Landroid/app/Dialog;)V
    .locals 4
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 95
    :try_start_0
    invoke-static {}, Lcom/lzx/iteam/service/NetServiceManager;->getInstance()Lcom/lzx/iteam/service/aidl/INetService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 96
    invoke-static {}, Lcom/lzx/iteam/service/NetServiceManager;->getInstance()Lcom/lzx/iteam/service/aidl/INetService;

    move-result-object v2

    invoke-interface {v2}, Lcom/lzx/iteam/service/aidl/INetService;->disSocketIOConnect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 102
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lzx/iteam/net/TalkListCenter$1$1;->this$1:Lcom/lzx/iteam/net/TalkListCenter$1;

    # getter for: Lcom/lzx/iteam/net/TalkListCenter$1;->this$0:Lcom/lzx/iteam/net/TalkListCenter;
    invoke-static {v2}, Lcom/lzx/iteam/net/TalkListCenter$1;->access$0(Lcom/lzx/iteam/net/TalkListCenter$1;)Lcom/lzx/iteam/net/TalkListCenter;

    move-result-object v2

    # getter for: Lcom/lzx/iteam/net/TalkListCenter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lzx/iteam/net/TalkListCenter;->access$7(Lcom/lzx/iteam/net/TalkListCenter;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/lzx/iteam/LoginActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/lzx/iteam/net/TalkListCenter$1$1;->this$1:Lcom/lzx/iteam/net/TalkListCenter$1;

    # getter for: Lcom/lzx/iteam/net/TalkListCenter$1;->this$0:Lcom/lzx/iteam/net/TalkListCenter;
    invoke-static {v2}, Lcom/lzx/iteam/net/TalkListCenter$1;->access$0(Lcom/lzx/iteam/net/TalkListCenter$1;)Lcom/lzx/iteam/net/TalkListCenter;

    move-result-object v2

    # getter for: Lcom/lzx/iteam/net/TalkListCenter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lzx/iteam/net/TalkListCenter;->access$7(Lcom/lzx/iteam/net/TalkListCenter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 104
    iget-object v2, p0, Lcom/lzx/iteam/net/TalkListCenter$1$1;->this$1:Lcom/lzx/iteam/net/TalkListCenter$1;

    # getter for: Lcom/lzx/iteam/net/TalkListCenter$1;->this$0:Lcom/lzx/iteam/net/TalkListCenter;
    invoke-static {v2}, Lcom/lzx/iteam/net/TalkListCenter$1;->access$0(Lcom/lzx/iteam/net/TalkListCenter$1;)Lcom/lzx/iteam/net/TalkListCenter;

    move-result-object v2

    # getter for: Lcom/lzx/iteam/net/TalkListCenter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lzx/iteam/net/TalkListCenter;->access$7(Lcom/lzx/iteam/net/TalkListCenter;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/TalkListActivity;

    invoke-virtual {v2}, Lcom/lzx/iteam/TalkListActivity;->finish()V

    .line 106
    return-void

    .line 97
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
