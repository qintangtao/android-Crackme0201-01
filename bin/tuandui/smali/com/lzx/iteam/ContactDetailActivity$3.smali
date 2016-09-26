.class Lcom/lzx/iteam/ContactDetailActivity$3;
.super Ljava/lang/Object;
.source "ContactDetailActivity.java"

# interfaces
.implements Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/ContactDetailActivity;->showCallDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ContactDetailActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ContactDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ContactDetailActivity$3;->this$0:Lcom/lzx/iteam/ContactDetailActivity;

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick(Landroid/app/Dialog;)V
    .locals 2
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 309
    iget-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity$3;->this$0:Lcom/lzx/iteam/ContactDetailActivity;

    iget-object v1, p0, Lcom/lzx/iteam/ContactDetailActivity$3;->this$0:Lcom/lzx/iteam/ContactDetailActivity;

    # getter for: Lcom/lzx/iteam/ContactDetailActivity;->mTvContactPhone:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lzx/iteam/ContactDetailActivity;->access$4(Lcom/lzx/iteam/ContactDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lzx/iteam/util/CommonCodeUtil;->launchCallByNumber(Landroid/content/Context;Ljava/lang/String;)Z

    .line 310
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 311
    return-void
.end method

.method public onConfirmClick(Landroid/app/Dialog;)V
    .locals 3
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity$3;->this$0:Lcom/lzx/iteam/ContactDetailActivity;

    iget-object v1, p0, Lcom/lzx/iteam/ContactDetailActivity$3;->this$0:Lcom/lzx/iteam/ContactDetailActivity;

    # getter for: Lcom/lzx/iteam/ContactDetailActivity;->mTvContactPhone:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lzx/iteam/ContactDetailActivity;->access$4(Lcom/lzx/iteam/ContactDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lzx/iteam/util/CommonCodeUtil;->launchSendMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 303
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 305
    return-void
.end method
