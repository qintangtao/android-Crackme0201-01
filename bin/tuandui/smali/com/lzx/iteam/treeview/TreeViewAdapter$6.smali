.class Lcom/lzx/iteam/treeview/TreeViewAdapter$6;
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
    iput-object p1, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$6;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    iput-object p2, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$6;->val$okText:Ljava/lang/String;

    iput-object p3, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$6;->val$cancelText:Ljava/lang/String;

    .line 925
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/treeview/TreeViewAdapter$6;)Lcom/lzx/iteam/treeview/TreeViewAdapter;
    .locals 1

    .prologue
    .line 925
    iget-object v0, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$6;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 929
    iget-object v0, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$6;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    # getter for: Lcom/lzx/iteam/treeview/TreeViewAdapter;->mAddContactsWin:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->access$5(Lcom/lzx/iteam/treeview/TreeViewAdapter;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 931
    iget-object v0, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$6;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    # getter for: Lcom/lzx/iteam/treeview/TreeViewAdapter;->dialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;
    invoke-static {v0}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->access$6(Lcom/lzx/iteam/treeview/TreeViewAdapter;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5220\u9664"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$6;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    iget-object v2, v2, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u7ec4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$6;->val$okText:Ljava/lang/String;

    iget-object v3, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$6;->val$cancelText:Ljava/lang/String;

    const-string v4, "\u6b64\u64cd\u4f5c\u4f1a\u5220\u9664\u8be5\u90e8\u95e8\u53ca\u5176\u5b50\u90e8\u95e8\n\u5176\u4e2d\u8054\u7cfb\u4eba\u4e0d\u4f1a\u88ab\u5220\u9664"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lzx/iteam/util/AllDialogUtil;->titleDeleteMsgStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 932
    iget-object v0, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$6;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    # getter for: Lcom/lzx/iteam/treeview/TreeViewAdapter;->dialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;
    invoke-static {v0}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->access$6(Lcom/lzx/iteam/treeview/TreeViewAdapter;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v0

    new-instance v1, Lcom/lzx/iteam/treeview/TreeViewAdapter$6$1;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/treeview/TreeViewAdapter$6$1;-><init>(Lcom/lzx/iteam/treeview/TreeViewAdapter$6;)V

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/util/AllDialogUtil;->setOnDialogListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;)V

    .line 950
    return-void
.end method
