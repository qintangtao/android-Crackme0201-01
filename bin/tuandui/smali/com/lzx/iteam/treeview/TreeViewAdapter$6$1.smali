.class Lcom/lzx/iteam/treeview/TreeViewAdapter$6$1;
.super Ljava/lang/Object;
.source "TreeViewAdapter.java"

# interfaces
.implements Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/treeview/TreeViewAdapter$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lzx/iteam/treeview/TreeViewAdapter$6;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/treeview/TreeViewAdapter$6;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$6$1;->this$1:Lcom/lzx/iteam/treeview/TreeViewAdapter$6;

    .line 932
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 945
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 947
    return-void
.end method

.method public onConfirmClick(Landroid/app/Dialog;)V
    .locals 2
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 935
    iget-object v1, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$6$1;->this$1:Lcom/lzx/iteam/treeview/TreeViewAdapter$6;

    # getter for: Lcom/lzx/iteam/treeview/TreeViewAdapter$6;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;
    invoke-static {v1}, Lcom/lzx/iteam/treeview/TreeViewAdapter$6;->access$0(Lcom/lzx/iteam/treeview/TreeViewAdapter$6;)Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-result-object v1

    # getter for: Lcom/lzx/iteam/treeview/TreeViewAdapter;->mHandler1:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->access$7(Lcom/lzx/iteam/treeview/TreeViewAdapter;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 936
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x18

    iput v1, v0, Landroid/os/Message;->what:I

    .line 937
    iget-object v1, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$6$1;->this$1:Lcom/lzx/iteam/treeview/TreeViewAdapter$6;

    # getter for: Lcom/lzx/iteam/treeview/TreeViewAdapter$6;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;
    invoke-static {v1}, Lcom/lzx/iteam/treeview/TreeViewAdapter$6;->access$0(Lcom/lzx/iteam/treeview/TreeViewAdapter$6;)Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-result-object v1

    # getter for: Lcom/lzx/iteam/treeview/TreeViewAdapter;->mHandler1:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->access$7(Lcom/lzx/iteam/treeview/TreeViewAdapter;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 938
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 941
    return-void
.end method
