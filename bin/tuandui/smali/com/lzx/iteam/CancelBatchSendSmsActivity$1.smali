.class Lcom/lzx/iteam/CancelBatchSendSmsActivity$1;
.super Ljava/lang/Object;
.source "CancelBatchSendSmsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/CancelBatchSendSmsActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/CancelBatchSendSmsActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/CancelBatchSendSmsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/CancelBatchSendSmsActivity$1;->this$0:Lcom/lzx/iteam/CancelBatchSendSmsActivity;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lzx/iteam/BatchSendSmsService;->running:Z

    .line 28
    iget-object v0, p0, Lcom/lzx/iteam/CancelBatchSendSmsActivity$1;->this$0:Lcom/lzx/iteam/CancelBatchSendSmsActivity;

    invoke-virtual {v0}, Lcom/lzx/iteam/CancelBatchSendSmsActivity;->finish()V

    .line 29
    return-void
.end method
