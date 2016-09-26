.class Lcom/lzx/iteam/treeview/TreeViewAdapter$2;
.super Ljava/lang/Object;
.source "TreeViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/treeview/TreeViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    iput-object p1, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$2;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    .line 652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 657
    iget-object v0, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$2;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    iget-object v0, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->treeflag:Lcom/lzx/iteam/TreeFrag;

    iget-boolean v0, v0, Lcom/lzx/iteam/TreeFrag;->isBatch:Z

    if-nez v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$2;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    const-string v1, "\u5168\u90e8\u6210\u5458"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->showButtonWindow(Ljava/lang/String;ZI)V

    .line 664
    :goto_0
    return-void

    .line 662
    :cond_0
    sget-object v0, Lcom/lzx/iteam/CloudDialerActivity;->instance:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v0, v3}, Lcom/lzx/iteam/CloudDialerActivity;->changePage(Z)V

    goto :goto_0
.end method
