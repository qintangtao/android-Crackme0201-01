.class Lcom/lzx/iteam/TreeFrag$4;
.super Ljava/lang/Object;
.source "TreeFrag.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/TreeFrag;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/TreeFrag;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/TreeFrag;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/TreeFrag$4;->this$0:Lcom/lzx/iteam/TreeFrag;

    .line 657
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x0

    .line 661
    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    .line 686
    :goto_0
    return v4

    .line 666
    :cond_0
    add-int/lit8 p3, p3, -0x1

    .line 667
    iget-object v1, p0, Lcom/lzx/iteam/TreeFrag$4;->this$0:Lcom/lzx/iteam/TreeFrag;

    iput p3, v1, Lcom/lzx/iteam/TreeFrag;->currentPosition:I

    .line 670
    sget-object v2, Lcom/lzx/iteam/CloudDialerActivity;->instance:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v1, p0, Lcom/lzx/iteam/TreeFrag$4;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;
    invoke-static {v1}, Lcom/lzx/iteam/TreeFrag;->access$9(Lcom/lzx/iteam/TreeFrag;)Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/treeview/Element;

    iput-object v1, v2, Lcom/lzx/iteam/CloudDialerActivity;->chooseelement:Lcom/lzx/iteam/treeview/Element;

    .line 672
    iget-object v1, p0, Lcom/lzx/iteam/TreeFrag$4;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;
    invoke-static {v1}, Lcom/lzx/iteam/TreeFrag;->access$9(Lcom/lzx/iteam/TreeFrag;)Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-result-object v2

    iget-object v1, p0, Lcom/lzx/iteam/TreeFrag$4;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;
    invoke-static {v1}, Lcom/lzx/iteam/TreeFrag;->access$9(Lcom/lzx/iteam/TreeFrag;)Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/treeview/Element;

    invoke-virtual {v1}, Lcom/lzx/iteam/treeview/Element;->getId()I

    move-result v1

    iput v1, v2, Lcom/lzx/iteam/treeview/TreeViewAdapter;->selectId:I

    .line 675
    iget-object v1, p0, Lcom/lzx/iteam/TreeFrag$4;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;
    invoke-static {v1}, Lcom/lzx/iteam/TreeFrag;->access$9(Lcom/lzx/iteam/TreeFrag;)Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-result-object v2

    iget-object v1, p0, Lcom/lzx/iteam/TreeFrag$4;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;
    invoke-static {v1}, Lcom/lzx/iteam/TreeFrag;->access$9(Lcom/lzx/iteam/TreeFrag;)Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/treeview/Element;

    invoke-virtual {v1}, Lcom/lzx/iteam/treeview/Element;->getContentText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mName:Ljava/lang/String;

    .line 676
    iget-object v1, p0, Lcom/lzx/iteam/TreeFrag$4;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;
    invoke-static {v1}, Lcom/lzx/iteam/TreeFrag;->access$9(Lcom/lzx/iteam/TreeFrag;)Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-result-object v2

    iget-object v1, p0, Lcom/lzx/iteam/TreeFrag$4;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;
    invoke-static {v1}, Lcom/lzx/iteam/TreeFrag;->access$9(Lcom/lzx/iteam/TreeFrag;)Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/treeview/Element;

    invoke-virtual {v1}, Lcom/lzx/iteam/treeview/Element;->getId()I

    move-result v1

    iput v1, v2, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mId:I

    .line 677
    iget-object v1, p0, Lcom/lzx/iteam/TreeFrag$4;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;
    invoke-static {v1}, Lcom/lzx/iteam/TreeFrag;->access$9(Lcom/lzx/iteam/TreeFrag;)Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-result-object v2

    iget-object v1, p0, Lcom/lzx/iteam/TreeFrag$4;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;
    invoke-static {v1}, Lcom/lzx/iteam/TreeFrag;->access$9(Lcom/lzx/iteam/TreeFrag;)Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/treeview/Element;

    invoke-virtual {v1}, Lcom/lzx/iteam/treeview/Element;->getParendId()I

    move-result v1

    iput v1, v2, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mParentId:I

    .line 679
    iget-object v1, p0, Lcom/lzx/iteam/TreeFrag$4;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;
    invoke-static {v1}, Lcom/lzx/iteam/TreeFrag;->access$9(Lcom/lzx/iteam/TreeFrag;)Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lzx/iteam/TreeFrag$4;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;
    invoke-static {v1}, Lcom/lzx/iteam/TreeFrag;->access$9(Lcom/lzx/iteam/TreeFrag;)Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/treeview/Element;

    invoke-virtual {v1}, Lcom/lzx/iteam/treeview/Element;->getContactCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mContactCount:Ljava/lang/String;

    .line 680
    iget-object v1, p0, Lcom/lzx/iteam/TreeFrag$4;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;
    invoke-static {v1}, Lcom/lzx/iteam/TreeFrag;->access$9(Lcom/lzx/iteam/TreeFrag;)Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/TreeFrag$4;->this$0:Lcom/lzx/iteam/TreeFrag;

    iget v2, v2, Lcom/lzx/iteam/TreeFrag;->currentPosition:I

    iput v2, v1, Lcom/lzx/iteam/treeview/TreeViewAdapter;->currentPosition:I

    .line 682
    iget-object v1, p0, Lcom/lzx/iteam/TreeFrag$4;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;
    invoke-static {v1}, Lcom/lzx/iteam/TreeFrag;->access$9(Lcom/lzx/iteam/TreeFrag;)Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/treeview/Element;

    invoke-virtual {v1}, Lcom/lzx/iteam/treeview/Element;->getContentText()Ljava/lang/String;

    move-result-object v0

    .line 683
    .local v0, "tagName":Ljava/lang/String;
    iget-object v1, p0, Lcom/lzx/iteam/TreeFrag$4;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;
    invoke-static {v1}, Lcom/lzx/iteam/TreeFrag;->access$9(Lcom/lzx/iteam/TreeFrag;)Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-result-object v1

    invoke-virtual {v1, v0, v4, p3}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->showButtonWindow(Ljava/lang/String;ZI)V

    goto/16 :goto_0
.end method
