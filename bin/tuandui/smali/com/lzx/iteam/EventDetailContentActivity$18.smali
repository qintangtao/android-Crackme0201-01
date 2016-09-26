.class Lcom/lzx/iteam/EventDetailContentActivity$18;
.super Ljava/lang/Object;
.source "EventDetailContentActivity.java"

# interfaces
.implements Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/EventDetailContentActivity;->showWarningDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/EventDetailContentActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/EventDetailContentActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/EventDetailContentActivity$18;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    .line 1547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 1559
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1560
    return-void
.end method

.method public onConfirmClick(Landroid/app/Dialog;)V
    .locals 2
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity$18;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->toApplyActivite(Ljava/lang/String;)V

    .line 1552
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity$18;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/lzx/iteam/EventDetailContentActivity;->access$11(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1553
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1555
    return-void
.end method
