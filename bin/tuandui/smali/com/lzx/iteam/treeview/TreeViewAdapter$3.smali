.class Lcom/lzx/iteam/treeview/TreeViewAdapter$3;
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

.field private final synthetic val$okText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/treeview/TreeViewAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$3;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    iput-object p2, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$3;->val$okText:Ljava/lang/String;

    iput-object p3, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$3;->val$cancelText:Ljava/lang/String;

    .line 827
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/treeview/TreeViewAdapter$3;)Lcom/lzx/iteam/treeview/TreeViewAdapter;
    .locals 1

    .prologue
    .line 827
    iget-object v0, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$3;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 830
    iget-object v0, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$3;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    # getter for: Lcom/lzx/iteam/treeview/TreeViewAdapter;->mAddContactsWin:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->access$5(Lcom/lzx/iteam/treeview/TreeViewAdapter;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 831
    iget-object v0, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$3;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    # getter for: Lcom/lzx/iteam/treeview/TreeViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->access$0(Lcom/lzx/iteam/treeview/TreeViewAdapter;)Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f080164

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 832
    .local v1, "addText":Ljava/lang/String;
    iget-object v0, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$3;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    # getter for: Lcom/lzx/iteam/treeview/TreeViewAdapter;->dialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;
    invoke-static {v0}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->access$6(Lcom/lzx/iteam/treeview/TreeViewAdapter;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v0

    iget-object v2, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$3;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    iget-object v2, v2, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mName:Ljava/lang/String;

    iget-object v3, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$3;->val$okText:Ljava/lang/String;

    iget-object v4, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$3;->val$cancelText:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/util/AllDialogUtil;->titleEditBtnStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 833
    iget-object v0, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$3;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    # getter for: Lcom/lzx/iteam/treeview/TreeViewAdapter;->dialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;
    invoke-static {v0}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->access$6(Lcom/lzx/iteam/treeview/TreeViewAdapter;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v0

    new-instance v2, Lcom/lzx/iteam/treeview/TreeViewAdapter$3$1;

    invoke-direct {v2, p0}, Lcom/lzx/iteam/treeview/TreeViewAdapter$3$1;-><init>(Lcom/lzx/iteam/treeview/TreeViewAdapter$3;)V

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/util/AllDialogUtil;->setOnEditDialogListener(Lcom/lzx/iteam/util/AllDialogUtil$EditDialogOnClickListener;)V

    .line 858
    return-void
.end method
