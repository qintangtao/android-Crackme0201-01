.class Lcom/lzx/iteam/FunctionFragment$8;
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
    iput-object p1, p0, Lcom/lzx/iteam/FunctionFragment$8;->this$0:Lcom/lzx/iteam/FunctionFragment;

    .line 680
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 683
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lzx/iteam/FunctionFragment$8;->this$0:Lcom/lzx/iteam/FunctionFragment;

    # getter for: Lcom/lzx/iteam/FunctionFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v1}, Lcom/lzx/iteam/FunctionFragment;->access$5(Lcom/lzx/iteam/FunctionFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v1

    const-class v2, Lcom/lzx/iteam/EditMyCardActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 684
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "contact_data"

    iget-object v2, p0, Lcom/lzx/iteam/FunctionFragment$8;->this$0:Lcom/lzx/iteam/FunctionFragment;

    # getter for: Lcom/lzx/iteam/FunctionFragment;->nameCard:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lzx/iteam/FunctionFragment;->access$14(Lcom/lzx/iteam/FunctionFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 685
    iget-object v1, p0, Lcom/lzx/iteam/FunctionFragment$8;->this$0:Lcom/lzx/iteam/FunctionFragment;

    invoke-virtual {v1, v0}, Lcom/lzx/iteam/FunctionFragment;->startActivity(Landroid/content/Intent;)V

    .line 686
    iget-object v1, p0, Lcom/lzx/iteam/FunctionFragment$8;->this$0:Lcom/lzx/iteam/FunctionFragment;

    # getter for: Lcom/lzx/iteam/FunctionFragment;->mMoreWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/lzx/iteam/FunctionFragment;->access$15(Lcom/lzx/iteam/FunctionFragment;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 687
    return-void
.end method
