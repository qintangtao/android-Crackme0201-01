.class Lcom/lzx/iteam/CloudContactDetailActivity$11;
.super Ljava/lang/Object;
.source "CloudContactDetailActivity.java"

# interfaces
.implements Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/CloudContactDetailActivity;->deleteContact()V
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
    iput-object p1, p0, Lcom/lzx/iteam/CloudContactDetailActivity$11;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    .line 761
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 772
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 773
    return-void
.end method

.method public onConfirmClick(Landroid/app/Dialog;)V
    .locals 4
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 765
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 766
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity$11;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$0(Lcom/lzx/iteam/CloudContactDetailActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 767
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity$11;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    iget-object v1, p0, Lcom/lzx/iteam/CloudContactDetailActivity$11;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudContactId:Ljava/lang/String;
    invoke-static {v1}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$21(Lcom/lzx/iteam/CloudContactDetailActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/CloudContactDetailActivity$11;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudCurrentContactId:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$22(Lcom/lzx/iteam/CloudContactDetailActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lzx/iteam/CloudContactDetailActivity$11;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudGroupId:Ljava/lang/String;
    invoke-static {v3}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$36(Lcom/lzx/iteam/CloudContactDetailActivity;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/lzx/iteam/CloudContactDetailActivity;->removeContact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$37(Lcom/lzx/iteam/CloudContactDetailActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    return-void
.end method
