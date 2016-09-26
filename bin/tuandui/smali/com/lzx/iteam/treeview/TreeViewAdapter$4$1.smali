.class Lcom/lzx/iteam/treeview/TreeViewAdapter$4$1;
.super Ljava/lang/Object;
.source "TreeViewAdapter.java"

# interfaces
.implements Lcom/lzx/iteam/util/AllDialogUtil$EditDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/treeview/TreeViewAdapter$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lzx/iteam/treeview/TreeViewAdapter$4;

.field private final synthetic val$isFirst:Z


# direct methods
.method constructor <init>(Lcom/lzx/iteam/treeview/TreeViewAdapter$4;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$4$1;->this$1:Lcom/lzx/iteam/treeview/TreeViewAdapter$4;

    iput-boolean p2, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$4$1;->val$isFirst:Z

    .line 873
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick(Landroid/app/Dialog;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "lDialog"    # Landroid/app/Dialog;
    .param p2, "ed"    # Landroid/widget/EditText;

    .prologue
    .line 900
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 901
    return-void
.end method

.method public onConfirmClick(Landroid/app/Dialog;Landroid/widget/EditText;)V
    .locals 5
    .param p1, "lDialog"    # Landroid/app/Dialog;
    .param p2, "ed"    # Landroid/widget/EditText;

    .prologue
    const/4 v4, 0x1

    .line 877
    invoke-virtual {p2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 878
    .local v1, "text":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 879
    iget-object v2, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$4$1;->this$1:Lcom/lzx/iteam/treeview/TreeViewAdapter$4;

    # getter for: Lcom/lzx/iteam/treeview/TreeViewAdapter$4;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;
    invoke-static {v2}, Lcom/lzx/iteam/treeview/TreeViewAdapter$4;->access$0(Lcom/lzx/iteam/treeview/TreeViewAdapter$4;)Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-result-object v2

    # getter for: Lcom/lzx/iteam/treeview/TreeViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->access$0(Lcom/lzx/iteam/treeview/TreeViewAdapter;)Landroid/content/Context;

    move-result-object v2

    .line 880
    const v3, 0x7f080165

    .line 879
    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 880
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 896
    :goto_0
    return-void

    .line 883
    :cond_0
    iget-object v2, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$4$1;->this$1:Lcom/lzx/iteam/treeview/TreeViewAdapter$4;

    # getter for: Lcom/lzx/iteam/treeview/TreeViewAdapter$4;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;
    invoke-static {v2}, Lcom/lzx/iteam/treeview/TreeViewAdapter$4;->access$0(Lcom/lzx/iteam/treeview/TreeViewAdapter$4;)Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-result-object v2

    # getter for: Lcom/lzx/iteam/treeview/TreeViewAdapter;->mHandler1:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->access$7(Lcom/lzx/iteam/treeview/TreeViewAdapter;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 884
    .local v0, "msg":Landroid/os/Message;
    const/16 v2, 0x16

    iput v2, v0, Landroid/os/Message;->what:I

    .line 885
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 886
    iget-boolean v2, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$4$1;->val$isFirst:Z

    if-eqz v2, :cond_1

    .line 887
    iget-object v2, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$4$1;->this$1:Lcom/lzx/iteam/treeview/TreeViewAdapter$4;

    # getter for: Lcom/lzx/iteam/treeview/TreeViewAdapter$4;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;
    invoke-static {v2}, Lcom/lzx/iteam/treeview/TreeViewAdapter$4;->access$0(Lcom/lzx/iteam/treeview/TreeViewAdapter$4;)Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->access$8(Lcom/lzx/iteam/treeview/TreeViewAdapter;Z)V

    .line 891
    :goto_1
    iget-object v2, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$4$1;->this$1:Lcom/lzx/iteam/treeview/TreeViewAdapter$4;

    # getter for: Lcom/lzx/iteam/treeview/TreeViewAdapter$4;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;
    invoke-static {v2}, Lcom/lzx/iteam/treeview/TreeViewAdapter$4;->access$0(Lcom/lzx/iteam/treeview/TreeViewAdapter$4;)Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-result-object v2

    # getter for: Lcom/lzx/iteam/treeview/TreeViewAdapter;->mHandler1:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->access$7(Lcom/lzx/iteam/treeview/TreeViewAdapter;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 893
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 889
    :cond_1
    iget-object v2, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$4$1;->this$1:Lcom/lzx/iteam/treeview/TreeViewAdapter$4;

    # getter for: Lcom/lzx/iteam/treeview/TreeViewAdapter$4;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;
    invoke-static {v2}, Lcom/lzx/iteam/treeview/TreeViewAdapter$4;->access$0(Lcom/lzx/iteam/treeview/TreeViewAdapter$4;)Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->access$8(Lcom/lzx/iteam/treeview/TreeViewAdapter;Z)V

    goto :goto_1
.end method
