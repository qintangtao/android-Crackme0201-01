.class Lcom/lzx/iteam/treeview/TreeViewAdapter$5;
.super Ljava/lang/Object;
.source "TreeViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/treeview/TreeViewAdapter;->showButtonWindow(Ljava/lang/String;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/treeview/TreeViewAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$5;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    .line 906
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 910
    iget-object v0, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$5;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    # getter for: Lcom/lzx/iteam/treeview/TreeViewAdapter;->mAddContactsWin:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->access$5(Lcom/lzx/iteam/treeview/TreeViewAdapter;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 911
    iget-object v0, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$5;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    iget-object v1, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$5;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    # getter for: Lcom/lzx/iteam/treeview/TreeViewAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->access$9(Lcom/lzx/iteam/treeview/TreeViewAdapter;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$5;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    iget v3, v3, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/lzx/iteam/treeview/TreeViewAdapter;->getGroupContact(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->access$10(Lcom/lzx/iteam/treeview/TreeViewAdapter;Landroid/os/Message;Ljava/lang/String;)V

    .line 921
    return-void
.end method
