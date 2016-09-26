.class Lcom/lzx/iteam/CloudDialerActivity$1$3;
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
    iput-object p1, p0, Lcom/lzx/iteam/CloudDialerActivity$1$3;->this$1:Lcom/lzx/iteam/CloudDialerActivity$1;

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 382
    return-void
.end method

.method public onConfirmClick(Landroid/app/Dialog;)V
    .locals 1
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 376
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 377
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$1$3;->this$1:Lcom/lzx/iteam/CloudDialerActivity$1;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;
    invoke-static {v0}, Lcom/lzx/iteam/CloudDialerActivity$1;->access$0(Lcom/lzx/iteam/CloudDialerActivity$1;)Lcom/lzx/iteam/CloudDialerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzx/iteam/CloudDialerActivity;->finish()V

    .line 378
    return-void
.end method
