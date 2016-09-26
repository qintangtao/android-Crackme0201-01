.class Lcom/lzx/iteam/ResetPswActivity$1$2;
.super Ljava/lang/Object;
.source "ResetPswActivity.java"

# interfaces
.implements Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/ResetPswActivity$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lzx/iteam/ResetPswActivity$1;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ResetPswActivity$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ResetPswActivity$1$2;->this$1:Lcom/lzx/iteam/ResetPswActivity$1;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 82
    return-void
.end method

.method public onConfirmClick(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 78
    return-void
.end method
