.class public Lcom/lzx/iteam/treeview/TreeViewItemClickListener;
.super Ljava/lang/Object;
.source "TreeViewItemClickListener.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;


# direct methods
.method public constructor <init>(Lcom/lzx/iteam/treeview/TreeViewAdapter;)V
    .locals 0
    .param p1, "treeViewAdapter"    # Lcom/lzx/iteam/treeview/TreeViewAdapter;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/lzx/iteam/treeview/TreeViewItemClickListener;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    .line 17
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v9, 0x0

    .line 23
    iget-object v6, p0, Lcom/lzx/iteam/treeview/TreeViewItemClickListener;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    invoke-virtual {v6, p3}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/treeview/Element;

    .line 25
    .local v1, "element":Lcom/lzx/iteam/treeview/Element;
    iget-object v6, p0, Lcom/lzx/iteam/treeview/TreeViewItemClickListener;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    invoke-virtual {v6}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->getElements()Ljava/util/ArrayList;

    move-result-object v2

    .line 27
    .local v2, "elements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/treeview/Element;>;"
    iget-object v6, p0, Lcom/lzx/iteam/treeview/TreeViewItemClickListener;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    invoke-virtual {v6}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->getElementsData()Ljava/util/ArrayList;

    move-result-object v3

    .line 30
    .local v3, "elementsData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/treeview/Element;>;"
    invoke-virtual {v1}, Lcom/lzx/iteam/treeview/Element;->isHasChildren()Z

    move-result v6

    if-nez v6, :cond_0

    .line 59
    :goto_0
    return-void

    .line 35
    :cond_0
    invoke-virtual {v1}, Lcom/lzx/iteam/treeview/Element;->isExpanded()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 36
    invoke-virtual {v1, v9}, Lcom/lzx/iteam/treeview/Element;->setExpanded(Z)V

    .line 38
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v4, "elementsToDel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/treeview/Element;>;"
    add-int/lit8 v5, p3, 0x1

    .local v5, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v5, v6, :cond_2

    .line 44
    :cond_1
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 45
    iget-object v6, p0, Lcom/lzx/iteam/treeview/TreeViewItemClickListener;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    invoke-virtual {v6}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {v1}, Lcom/lzx/iteam/treeview/Element;->getLevel()I

    move-result v7

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lzx/iteam/treeview/Element;

    invoke-virtual {v6}, Lcom/lzx/iteam/treeview/Element;->getLevel()I

    move-result v6

    if-ge v7, v6, :cond_1

    .line 42
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lzx/iteam/treeview/Element;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 47
    .end local v4    # "elementsToDel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/treeview/Element;>;"
    .end local v5    # "i":I
    :cond_3
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lcom/lzx/iteam/treeview/Element;->setExpanded(Z)V

    .line 49
    const/4 v5, 0x1

    .line 50
    .restart local v5    # "i":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_5

    .line 57
    iget-object v6, p0, Lcom/lzx/iteam/treeview/TreeViewItemClickListener;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    invoke-virtual {v6}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 50
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/treeview/Element;

    .line 51
    .local v0, "e":Lcom/lzx/iteam/treeview/Element;
    invoke-virtual {v0}, Lcom/lzx/iteam/treeview/Element;->getParendId()I

    move-result v7

    invoke-virtual {v1}, Lcom/lzx/iteam/treeview/Element;->getId()I

    move-result v8

    if-ne v7, v8, :cond_4

    .line 52
    invoke-virtual {v0, v9}, Lcom/lzx/iteam/treeview/Element;->setExpanded(Z)V

    .line 53
    add-int v7, p3, v5

    invoke-virtual {v2, v7, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 54
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method
