.class Lcom/lzx/iteam/CloudContactDetailActivity$4;
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
    iput-object p1, p0, Lcom/lzx/iteam/CloudContactDetailActivity$4;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    .line 656
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 659
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lzx/iteam/CloudContactDetailActivity$4;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    const-class v2, Lcom/lzx/iteam/CloudDialerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 661
    .local v0, "shareIntent":Landroid/content/Intent;
    const-string v1, "contact_detail_page_share"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 662
    const-string v1, "contactId"

    const-wide/16 v2, 0xde

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 663
    const-string v1, "name"

    iget-object v2, p0, Lcom/lzx/iteam/CloudContactDetailActivity$4;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudContactName:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$20(Lcom/lzx/iteam/CloudContactDetailActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 665
    iget-object v1, p0, Lcom/lzx/iteam/CloudContactDetailActivity$4;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudPhoneNumbers:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$3(Lcom/lzx/iteam/CloudContactDetailActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 666
    const-string v2, "phone"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "\u7535\u8bdd\uff1a"

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lzx/iteam/CloudContactDetailActivity$4;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudPhoneNumbers:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$3(Lcom/lzx/iteam/CloudContactDetailActivity;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 672
    :goto_0
    iget-object v1, p0, Lcom/lzx/iteam/CloudContactDetailActivity$4;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    invoke-virtual {v1, v0}, Lcom/lzx/iteam/CloudContactDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 674
    iget-object v1, p0, Lcom/lzx/iteam/CloudContactDetailActivity$4;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity;->mMoreWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$31(Lcom/lzx/iteam/CloudContactDetailActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 676
    return-void

    .line 670
    :cond_0
    const-string v1, "phone"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
