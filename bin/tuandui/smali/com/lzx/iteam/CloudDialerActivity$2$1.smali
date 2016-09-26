.class Lcom/lzx/iteam/CloudDialerActivity$2$1;
.super Ljava/lang/Object;
.source "CloudDialerActivity.java"

# interfaces
.implements Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/CloudDialerActivity$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lzx/iteam/CloudDialerActivity$2;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/CloudDialerActivity$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/CloudDialerActivity$2$1;->this$1:Lcom/lzx/iteam/CloudDialerActivity$2;

    .line 5604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 5613
    return-void
.end method

.method public onConfirmClick(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 5608
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 5609
    return-void
.end method
