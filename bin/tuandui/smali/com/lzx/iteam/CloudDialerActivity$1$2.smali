.class Lcom/lzx/iteam/CloudDialerActivity$1$2;
.super Ljava/lang/Object;
.source "CloudDialerActivity.java"

# interfaces
.implements Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/CloudDialerActivity$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lzx/iteam/CloudDialerActivity$1;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/CloudDialerActivity$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/CloudDialerActivity$1$2;->this$1:Lcom/lzx/iteam/CloudDialerActivity$1;

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 328
    return-void
.end method

.method public onConfirmClick(Landroid/app/Dialog;)V
    .locals 4
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 312
    :try_start_0
    invoke-static {}, Lcom/lzx/iteam/service/NetServiceManager;->getInstance()Lcom/lzx/iteam/service/aidl/INetService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 313
    invoke-static {}, Lcom/lzx/iteam/service/NetServiceManager;->getInstance()Lcom/lzx/iteam/service/aidl/INetService;

    move-result-object v2

    invoke-interface {v2}, Lcom/lzx/iteam/service/aidl/INetService;->disSocketIOConnect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 319
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity$1$2;->this$1:Lcom/lzx/iteam/CloudDialerActivity$1;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;
    invoke-static {v2}, Lcom/lzx/iteam/CloudDialerActivity$1;->access$0(Lcom/lzx/iteam/CloudDialerActivity$1;)Lcom/lzx/iteam/CloudDialerActivity;

    move-result-object v2

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lzx/iteam/CloudDialerActivity;->access$0(Lcom/lzx/iteam/CloudDialerActivity;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/lzx/iteam/LoginActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 320
    .local v1, "intent":Landroid/content/Intent;
    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 321
    iget-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity$1$2;->this$1:Lcom/lzx/iteam/CloudDialerActivity$1;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;
    invoke-static {v2}, Lcom/lzx/iteam/CloudDialerActivity$1;->access$0(Lcom/lzx/iteam/CloudDialerActivity$1;)Lcom/lzx/iteam/CloudDialerActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lzx/iteam/CloudDialerActivity;->startActivity(Landroid/content/Intent;)V

    .line 322
    iget-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity$1$2;->this$1:Lcom/lzx/iteam/CloudDialerActivity$1;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;
    invoke-static {v2}, Lcom/lzx/iteam/CloudDialerActivity$1;->access$0(Lcom/lzx/iteam/CloudDialerActivity$1;)Lcom/lzx/iteam/CloudDialerActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lzx/iteam/CloudDialerActivity;->finish()V

    .line 324
    return-void

    .line 314
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
