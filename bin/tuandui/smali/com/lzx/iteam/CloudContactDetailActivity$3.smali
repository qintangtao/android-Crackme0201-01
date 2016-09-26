.class Lcom/lzx/iteam/CloudContactDetailActivity$3;
.super Ljava/lang/Object;
.source "CloudContactDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/CloudContactDetailActivity;->showPopwindow(Z)V
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
    iput-object p1, p0, Lcom/lzx/iteam/CloudContactDetailActivity$3;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    .line 630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 633
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lzx/iteam/CloudContactDetailActivity$3;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    const-class v2, Lcom/lzx/iteam/EditCloudActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 634
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "name"

    iget-object v2, p0, Lcom/lzx/iteam/CloudContactDetailActivity$3;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudContactName:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$20(Lcom/lzx/iteam/CloudContactDetailActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 635
    const-string v1, "phones"

    iget-object v2, p0, Lcom/lzx/iteam/CloudContactDetailActivity$3;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudPhoneNumbers:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$3(Lcom/lzx/iteam/CloudContactDetailActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 636
    const-string v1, "contact_id"

    iget-object v2, p0, Lcom/lzx/iteam/CloudContactDetailActivity$3;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudContactId:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$21(Lcom/lzx/iteam/CloudContactDetailActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 637
    const-string v1, "current_contact_id"

    iget-object v2, p0, Lcom/lzx/iteam/CloudContactDetailActivity$3;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudCurrentContactId:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$22(Lcom/lzx/iteam/CloudContactDetailActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 638
    const-string v1, "compan"

    iget-object v2, p0, Lcom/lzx/iteam/CloudContactDetailActivity$3;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudContactCompany:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$23(Lcom/lzx/iteam/CloudContactDetailActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 639
    const-string v1, "position"

    iget-object v2, p0, Lcom/lzx/iteam/CloudContactDetailActivity$3;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudContactPosition:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$24(Lcom/lzx/iteam/CloudContactDetailActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 640
    const-string v1, "email"

    iget-object v2, p0, Lcom/lzx/iteam/CloudContactDetailActivity$3;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudContactEmail:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$25(Lcom/lzx/iteam/CloudContactDetailActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 641
    const-string v1, "image"

    iget-object v2, p0, Lcom/lzx/iteam/CloudContactDetailActivity$3;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudImage:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$26(Lcom/lzx/iteam/CloudContactDetailActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 642
    const-string v1, "phone"

    iget-object v2, p0, Lcom/lzx/iteam/CloudContactDetailActivity$3;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity;->cloudContact:Lcom/lzx/iteam/bean/CloudContact;
    invoke-static {v2}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$6(Lcom/lzx/iteam/CloudContactDetailActivity;)Lcom/lzx/iteam/bean/CloudContact;

    move-result-object v2

    iget-object v2, v2, Lcom/lzx/iteam/bean/CloudContact;->contact_phone:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 643
    const-string v1, "sex"

    iget-object v2, p0, Lcom/lzx/iteam/CloudContactDetailActivity$3;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudContactSex:I
    invoke-static {v2}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$27(Lcom/lzx/iteam/CloudContactDetailActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 645
    const-string v1, "address"

    iget-object v2, p0, Lcom/lzx/iteam/CloudContactDetailActivity$3;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudAddress:Ljava/lang/StringBuilder;
    invoke-static {v2}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$28(Lcom/lzx/iteam/CloudContactDetailActivity;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 646
    const-string v1, "note"

    iget-object v2, p0, Lcom/lzx/iteam/CloudContactDetailActivity$3;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudContactNote:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$29(Lcom/lzx/iteam/CloudContactDetailActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 647
    const-string v1, "limit_phone"

    iget-object v2, p0, Lcom/lzx/iteam/CloudContactDetailActivity$3;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity;->mLimitPhone:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$30(Lcom/lzx/iteam/CloudContactDetailActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 648
    iget-object v1, p0, Lcom/lzx/iteam/CloudContactDetailActivity$3;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    const/16 v2, 0x1f

    invoke-virtual {v1, v0, v2}, Lcom/lzx/iteam/CloudContactDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 649
    iget-object v1, p0, Lcom/lzx/iteam/CloudContactDetailActivity$3;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity;->mMoreWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$31(Lcom/lzx/iteam/CloudContactDetailActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 650
    return-void
.end method
