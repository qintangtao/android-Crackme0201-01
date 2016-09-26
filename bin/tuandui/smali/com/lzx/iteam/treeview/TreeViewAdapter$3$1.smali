.class Lcom/lzx/iteam/treeview/TreeViewAdapter$3$1;
.super Ljava/lang/Object;
.source "TreeViewAdapter.java"

# interfaces
.implements Lcom/lzx/iteam/util/AllDialogUtil$EditDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/treeview/TreeViewAdapter$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lzx/iteam/treeview/TreeViewAdapter$3;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/treeview/TreeViewAdapter$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$3$1;->this$1:Lcom/lzx/iteam/treeview/TreeViewAdapter$3;

    .line 833
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick(Landroid/app/Dialog;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "lDialog"    # Landroid/app/Dialog;
    .param p2, "ed"    # Landroid/widget/EditText;

    .prologue
    .line 855
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 856
    return-void
.end method

.method public onConfirmClick(Landroid/app/Dialog;Landroid/widget/EditText;)V
    .locals 5
    .param p1, "lDialog"    # Landroid/app/Dialog;
    .param p2, "ed"    # Landroid/widget/EditText;

    .prologue
    .line 837
    invoke-virtual {p2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 838
    .local v1, "text":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 839
    iget-object v2, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$3$1;->this$1:Lcom/lzx/iteam/treeview/TreeViewAdapter$3;

    # getter for: Lcom/lzx/iteam/treeview/TreeViewAdapter$3;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;
    invoke-static {v2}, Lcom/lzx/iteam/treeview/TreeViewAdapter$3;->access$0(Lcom/lzx/iteam/treeview/TreeViewAdapter$3;)Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-result-object v2

    # getter for: Lcom/lzx/iteam/treeview/TreeViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->access$0(Lcom/lzx/iteam/treeview/TreeViewAdapter;)Landroid/content/Context;

    move-result-object v2

    .line 840
    const v3, 0x7f080165

    const/4 v4, 0x1

    .line 839
    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 840
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 851
    :goto_0
    return-void

    .line 843
    :cond_0
    iget-object v2, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$3$1;->this$1:Lcom/lzx/iteam/treeview/TreeViewAdapter$3;

    # getter for: Lcom/lzx/iteam/treeview/TreeViewAdapter$3;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;
    invoke-static {v2}, Lcom/lzx/iteam/treeview/TreeViewAdapter$3;->access$0(Lcom/lzx/iteam/treeview/TreeViewAdapter$3;)Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-result-object v2

    # getter for: Lcom/lzx/iteam/treeview/TreeViewAdapter;->mHandler1:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->access$7(Lcom/lzx/iteam/treeview/TreeViewAdapter;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 844
    .local v0, "msg":Landroid/os/Message;
    const/16 v2, 0x15

    iput v2, v0, Landroid/os/Message;->what:I

    .line 845
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 846
    iget-object v2, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$3$1;->this$1:Lcom/lzx/iteam/treeview/TreeViewAdapter$3;

    # getter for: Lcom/lzx/iteam/treeview/TreeViewAdapter$3;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;
    invoke-static {v2}, Lcom/lzx/iteam/treeview/TreeViewAdapter$3;->access$0(Lcom/lzx/iteam/treeview/TreeViewAdapter$3;)Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-result-object v2

    # getter for: Lcom/lzx/iteam/treeview/TreeViewAdapter;->mHandler1:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->access$7(Lcom/lzx/iteam/treeview/TreeViewAdapter;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 848
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method
