.class Lcom/lzx/iteam/ChatActivity$1$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/ChatActivity$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lzx/iteam/ChatActivity$1;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ChatActivity$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ChatActivity$1$1;->this$1:Lcom/lzx/iteam/ChatActivity$1;

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 241
    return-void
.end method

.method public onConfirmClick(Landroid/app/Dialog;)V
    .locals 4
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 224
    :try_start_0
    invoke-static {}, Lcom/lzx/iteam/service/NetServiceManager;->getInstance()Lcom/lzx/iteam/service/aidl/INetService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 225
    invoke-static {}, Lcom/lzx/iteam/service/NetServiceManager;->getInstance()Lcom/lzx/iteam/service/aidl/INetService;

    move-result-object v2

    invoke-interface {v2}, Lcom/lzx/iteam/service/aidl/INetService;->disSocketIOConnect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 231
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lzx/iteam/ChatActivity$1$1;->this$1:Lcom/lzx/iteam/ChatActivity$1;

    # getter for: Lcom/lzx/iteam/ChatActivity$1;->this$0:Lcom/lzx/iteam/ChatActivity;
    invoke-static {v2}, Lcom/lzx/iteam/ChatActivity$1;->access$0(Lcom/lzx/iteam/ChatActivity$1;)Lcom/lzx/iteam/ChatActivity;

    move-result-object v2

    # getter for: Lcom/lzx/iteam/ChatActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lzx/iteam/ChatActivity;->access$4(Lcom/lzx/iteam/ChatActivity;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/lzx/iteam/LoginActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 232
    .local v1, "intent":Landroid/content/Intent;
    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 233
    iget-object v2, p0, Lcom/lzx/iteam/ChatActivity$1$1;->this$1:Lcom/lzx/iteam/ChatActivity$1;

    # getter for: Lcom/lzx/iteam/ChatActivity$1;->this$0:Lcom/lzx/iteam/ChatActivity;
    invoke-static {v2}, Lcom/lzx/iteam/ChatActivity$1;->access$0(Lcom/lzx/iteam/ChatActivity$1;)Lcom/lzx/iteam/ChatActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lzx/iteam/ChatActivity;->startActivity(Landroid/content/Intent;)V

    .line 234
    iget-object v2, p0, Lcom/lzx/iteam/ChatActivity$1$1;->this$1:Lcom/lzx/iteam/ChatActivity$1;

    # getter for: Lcom/lzx/iteam/ChatActivity$1;->this$0:Lcom/lzx/iteam/ChatActivity;
    invoke-static {v2}, Lcom/lzx/iteam/ChatActivity$1;->access$0(Lcom/lzx/iteam/ChatActivity$1;)Lcom/lzx/iteam/ChatActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lzx/iteam/ChatActivity;->finish()V

    .line 237
    return-void

    .line 226
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
