.class Lcom/lzx/iteam/BatchSendSmsActivity$2;
.super Ljava/lang/Object;
.source "BatchSendSmsActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/BatchSendSmsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/BatchSendSmsActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/BatchSendSmsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/BatchSendSmsActivity$2;->this$0:Lcom/lzx/iteam/BatchSendSmsActivity;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 84
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsActivity$2;->this$0:Lcom/lzx/iteam/BatchSendSmsActivity;

    # getter for: Lcom/lzx/iteam/BatchSendSmsActivity;->sendBT:Landroid/widget/Button;
    invoke-static {v0}, Lcom/lzx/iteam/BatchSendSmsActivity;->access$3(Lcom/lzx/iteam/BatchSendSmsActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsActivity$2;->this$0:Lcom/lzx/iteam/BatchSendSmsActivity;

    # getter for: Lcom/lzx/iteam/BatchSendSmsActivity;->sendBT:Landroid/widget/Button;
    invoke-static {v0}, Lcom/lzx/iteam/BatchSendSmsActivity;->access$3(Lcom/lzx/iteam/BatchSendSmsActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 80
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 75
    return-void
.end method
