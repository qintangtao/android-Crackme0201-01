.class Lcom/lzx/iteam/MainActivity$1$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/MainActivity$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lzx/iteam/MainActivity$1;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/MainActivity$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/MainActivity$1$1;->this$1:Lcom/lzx/iteam/MainActivity$1;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 164
    return-void
.end method

.method public onConfirmClick(Landroid/app/Dialog;)V
    .locals 3
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 156
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lzx/iteam/MainActivity$1$1;->this$1:Lcom/lzx/iteam/MainActivity$1;

    # getter for: Lcom/lzx/iteam/MainActivity$1;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v1}, Lcom/lzx/iteam/MainActivity$1;->access$0(Lcom/lzx/iteam/MainActivity$1;)Lcom/lzx/iteam/MainActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/lzx/iteam/MainActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcom/lzx/iteam/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lzx/iteam/MainActivity$1$1;->this$1:Lcom/lzx/iteam/MainActivity$1;

    # getter for: Lcom/lzx/iteam/MainActivity$1;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v1}, Lcom/lzx/iteam/MainActivity$1;->access$0(Lcom/lzx/iteam/MainActivity$1;)Lcom/lzx/iteam/MainActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lzx/iteam/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 158
    iget-object v1, p0, Lcom/lzx/iteam/MainActivity$1$1;->this$1:Lcom/lzx/iteam/MainActivity$1;

    # getter for: Lcom/lzx/iteam/MainActivity$1;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v1}, Lcom/lzx/iteam/MainActivity$1;->access$0(Lcom/lzx/iteam/MainActivity$1;)Lcom/lzx/iteam/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lzx/iteam/MainActivity;->finish()V

    .line 160
    return-void
.end method
