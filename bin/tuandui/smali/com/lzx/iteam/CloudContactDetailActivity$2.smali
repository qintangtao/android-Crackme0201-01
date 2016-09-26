.class Lcom/lzx/iteam/CloudContactDetailActivity$2;
.super Ljava/lang/Object;
.source "CloudContactDetailActivity.java"

# interfaces
.implements Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/CloudContactDetailActivity;->showCallDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/CloudContactDetailActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/CloudContactDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/CloudContactDetailActivity$2;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick(Landroid/app/Dialog;)V
    .locals 2
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 579
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity$2;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    iget-object v1, p0, Lcom/lzx/iteam/CloudContactDetailActivity$2;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity;->mTvContactPhone:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$19(Lcom/lzx/iteam/CloudContactDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lzx/iteam/util/CommonCodeUtil;->launchCallByNumber(Landroid/content/Context;Ljava/lang/String;)Z

    .line 580
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 581
    return-void
.end method

.method public onConfirmClick(Landroid/app/Dialog;)V
    .locals 3
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 572
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity$2;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    iget-object v1, p0, Lcom/lzx/iteam/CloudContactDetailActivity$2;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity;->mTvContactPhone:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$19(Lcom/lzx/iteam/CloudContactDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lzx/iteam/util/CommonCodeUtil;->launchSendMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 573
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 575
    return-void
.end method
