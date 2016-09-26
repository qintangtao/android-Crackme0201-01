.class Lcom/lzx/iteam/RegisterActivity$3;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/RegisterActivity;->showConfirmDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/RegisterActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/RegisterActivity$3;->this$0:Lcom/lzx/iteam/RegisterActivity;

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick(Landroid/app/Dialog;)V
    .locals 1
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 388
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 389
    iget-object v0, p0, Lcom/lzx/iteam/RegisterActivity$3;->this$0:Lcom/lzx/iteam/RegisterActivity;

    # invokes: Lcom/lzx/iteam/RegisterActivity;->showPrivacyAgreement()V
    invoke-static {v0}, Lcom/lzx/iteam/RegisterActivity;->access$10(Lcom/lzx/iteam/RegisterActivity;)V

    .line 390
    return-void
.end method

.method public onConfirmClick(Landroid/app/Dialog;)V
    .locals 4
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 376
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 377
    iget-object v1, p0, Lcom/lzx/iteam/RegisterActivity$3;->this$0:Lcom/lzx/iteam/RegisterActivity;

    # getter for: Lcom/lzx/iteam/RegisterActivity;->mVerifycodeEt:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/lzx/iteam/RegisterActivity;->access$9(Lcom/lzx/iteam/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, "code":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 379
    iget-object v1, p0, Lcom/lzx/iteam/RegisterActivity$3;->this$0:Lcom/lzx/iteam/RegisterActivity;

    invoke-virtual {v1, v0}, Lcom/lzx/iteam/RegisterActivity;->mobileActive(Ljava/lang/String;)V

    .line 384
    :goto_0
    return-void

    .line 381
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/RegisterActivity$3;->this$0:Lcom/lzx/iteam/RegisterActivity;

    const v2, 0x7f080046

    .line 382
    const/4 v3, 0x1

    .line 381
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 382
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
