.class Lcom/lzx/iteam/treeview/TreeViewAdapter$4;
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

.field private final synthetic val$cancelText:Ljava/lang/String;

.field private final synthetic val$isFirst:Z

.field private final synthetic val$okText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/treeview/TreeViewAdapter;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$4;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    iput-boolean p2, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$4;->val$isFirst:Z

    iput-object p3, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$4;->val$okText:Ljava/lang/String;

    iput-object p4, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$4;->val$cancelText:Ljava/lang/String;

    .line 861
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/treeview/TreeViewAdapter$4;)Lcom/lzx/iteam/treeview/TreeViewAdapter;
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$4;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 865
    iget-object v0, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$4;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    # getter for: Lcom/lzx/iteam/treeview/TreeViewAdapter;->mAddContactsWin:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->access$5(Lcom/lzx/iteam/treeview/TreeViewAdapter;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 866
    const-string v5, ""

    .line 867
    .local v5, "addText":Ljava/lang/String;
    iget-boolean v0, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$4;->val$isFirst:Z

    if-eqz v0, :cond_0

    .line 868
    const-string v5, "\u521b\u5efa\u4e00\u7ea7\u90e8\u95e8"

    .line 872
    :goto_0
    iget-object v0, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$4;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    # getter for: Lcom/lzx/iteam/treeview/TreeViewAdapter;->dialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;
    invoke-static {v0}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->access$6(Lcom/lzx/iteam/treeview/TreeViewAdapter;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$4;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    iget-object v1, v1, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$4;->val$okText:Ljava/lang/String;

    iget-object v4, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$4;->val$cancelText:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/util/AllDialogUtil;->titleEditBtnStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 873
    iget-object v0, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$4;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    # getter for: Lcom/lzx/iteam/treeview/TreeViewAdapter;->dialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;
    invoke-static {v0}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->access$6(Lcom/lzx/iteam/treeview/TreeViewAdapter;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v0

    new-instance v1, Lcom/lzx/iteam/treeview/TreeViewAdapter$4$1;

    iget-boolean v2, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$4;->val$isFirst:Z

    invoke-direct {v1, p0, v2}, Lcom/lzx/iteam/treeview/TreeViewAdapter$4$1;-><init>(Lcom/lzx/iteam/treeview/TreeViewAdapter$4;Z)V

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/util/AllDialogUtil;->setOnEditDialogListener(Lcom/lzx/iteam/util/AllDialogUtil$EditDialogOnClickListener;)V

    .line 903
    return-void

    .line 870
    :cond_0
    const-string v5, "\u6dfb\u52a0\u4e0b\u7ea7\u90e8\u95e8"

    goto :goto_0
.end method
