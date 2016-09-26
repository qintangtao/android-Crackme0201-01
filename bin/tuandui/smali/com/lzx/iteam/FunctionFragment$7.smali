.class Lcom/lzx/iteam/FunctionFragment$7;
.super Ljava/lang/Object;
.source "FunctionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/FunctionFragment;->showSetPop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/FunctionFragment;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/FunctionFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/FunctionFragment$7;->this$0:Lcom/lzx/iteam/FunctionFragment;

    .line 661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 665
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lzx/iteam/FunctionFragment$7;->this$0:Lcom/lzx/iteam/FunctionFragment;

    # getter for: Lcom/lzx/iteam/FunctionFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v1}, Lcom/lzx/iteam/FunctionFragment;->access$5(Lcom/lzx/iteam/FunctionFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v1

    const-class v2, Lcom/lzx/iteam/CloudDialerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 666
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "share_contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 667
    const-string v1, "contactId"

    const-wide/16 v2, 0xde

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 668
    const-string v2, "name"

    iget-object v1, p0, Lcom/lzx/iteam/FunctionFragment$7;->this$0:Lcom/lzx/iteam/FunctionFragment;

    # getter for: Lcom/lzx/iteam/FunctionFragment;->nameCard:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lzx/iteam/FunctionFragment;->access$14(Lcom/lzx/iteam/FunctionFragment;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 669
    iget-object v1, p0, Lcom/lzx/iteam/FunctionFragment$7;->this$0:Lcom/lzx/iteam/FunctionFragment;

    # getter for: Lcom/lzx/iteam/FunctionFragment;->nameCard:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lzx/iteam/FunctionFragment;->access$14(Lcom/lzx/iteam/FunctionFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 670
    const-string v2, "phone"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "\u7535\u8bdd\uff1a"

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lzx/iteam/FunctionFragment$7;->this$0:Lcom/lzx/iteam/FunctionFragment;

    # getter for: Lcom/lzx/iteam/FunctionFragment;->nameCard:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lzx/iteam/FunctionFragment;->access$14(Lcom/lzx/iteam/FunctionFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 674
    :goto_0
    iget-object v1, p0, Lcom/lzx/iteam/FunctionFragment$7;->this$0:Lcom/lzx/iteam/FunctionFragment;

    # getter for: Lcom/lzx/iteam/FunctionFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v1}, Lcom/lzx/iteam/FunctionFragment;->access$5(Lcom/lzx/iteam/FunctionFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lzx/iteam/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 675
    iget-object v1, p0, Lcom/lzx/iteam/FunctionFragment$7;->this$0:Lcom/lzx/iteam/FunctionFragment;

    # getter for: Lcom/lzx/iteam/FunctionFragment;->mMoreWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/lzx/iteam/FunctionFragment;->access$15(Lcom/lzx/iteam/FunctionFragment;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 676
    return-void

    .line 672
    :cond_0
    const-string v2, "phone"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "\u7535\u8bdd\uff1a"

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lzx/iteam/FunctionFragment$7;->this$0:Lcom/lzx/iteam/FunctionFragment;

    # getter for: Lcom/lzx/iteam/FunctionFragment;->nameCard:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lzx/iteam/FunctionFragment;->access$14(Lcom/lzx/iteam/FunctionFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\u7535\u8bdd\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/lzx/iteam/FunctionFragment$7;->this$0:Lcom/lzx/iteam/FunctionFragment;

    # getter for: Lcom/lzx/iteam/FunctionFragment;->nameCard:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lzx/iteam/FunctionFragment;->access$14(Lcom/lzx/iteam/FunctionFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
