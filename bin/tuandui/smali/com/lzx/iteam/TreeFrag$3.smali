.class Lcom/lzx/iteam/TreeFrag$3;
.super Ljava/lang/Object;
.source "TreeFrag.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/TreeFrag;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/TreeFrag;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/TreeFrag$3;->this$0:Lcom/lzx/iteam/TreeFrag;

    .line 510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
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
    .line 515
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    if-ne p3, v5, :cond_3

    .line 518
    iget-object v5, p0, Lcom/lzx/iteam/TreeFrag$3;->this$0:Lcom/lzx/iteam/TreeFrag;

    const/4 v6, -0x1

    iput v6, v5, Lcom/lzx/iteam/TreeFrag;->currentPosition:I

    .line 521
    iget-object v5, p0, Lcom/lzx/iteam/TreeFrag$3;->this$0:Lcom/lzx/iteam/TreeFrag;

    invoke-virtual {v5}, Lcom/lzx/iteam/TreeFrag;->getallcontact()V

    .line 523
    iget-object v5, p0, Lcom/lzx/iteam/TreeFrag$3;->this$0:Lcom/lzx/iteam/TreeFrag;

    iget-object v5, v5, Lcom/lzx/iteam/TreeFrag;->root:Lcom/lzx/iteam/treeview/Element;

    iget-boolean v5, v5, Lcom/lzx/iteam/treeview/Element;->isExpanded:Z

    if-eqz v5, :cond_1

    .line 525
    iget-object v5, p0, Lcom/lzx/iteam/TreeFrag$3;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;
    invoke-static {v5}, Lcom/lzx/iteam/TreeFrag;->access$9(Lcom/lzx/iteam/TreeFrag;)Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-result-object v5

    iget v5, v5, Lcom/lzx/iteam/treeview/TreeViewAdapter;->selectId:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 527
    iget-object v5, p0, Lcom/lzx/iteam/TreeFrag$3;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;
    invoke-static {v5}, Lcom/lzx/iteam/TreeFrag;->access$9(Lcom/lzx/iteam/TreeFrag;)Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v6, v7}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->initData(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 528
    iget-object v5, p0, Lcom/lzx/iteam/TreeFrag$3;->this$0:Lcom/lzx/iteam/TreeFrag;

    iget-object v5, v5, Lcom/lzx/iteam/TreeFrag;->root:Lcom/lzx/iteam/treeview/Element;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/lzx/iteam/treeview/Element;->isExpanded:Z

    .line 547
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/lzx/iteam/TreeFrag$3;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;
    invoke-static {v5}, Lcom/lzx/iteam/TreeFrag;->access$9(Lcom/lzx/iteam/TreeFrag;)Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-result-object v5

    const/4 v6, -0x1

    iput v6, v5, Lcom/lzx/iteam/treeview/TreeViewAdapter;->selectId:I

    .line 548
    iget-object v5, p0, Lcom/lzx/iteam/TreeFrag$3;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;
    invoke-static {v5}, Lcom/lzx/iteam/TreeFrag;->access$9(Lcom/lzx/iteam/TreeFrag;)Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->notifyDataSetChanged()V

    .line 613
    :goto_1
    return-void

    .line 536
    :cond_1
    iget-object v5, p0, Lcom/lzx/iteam/TreeFrag$3;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->elements:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/lzx/iteam/TreeFrag;->access$2(Lcom/lzx/iteam/TreeFrag;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 537
    iget-object v5, p0, Lcom/lzx/iteam/TreeFrag$3;->this$0:Lcom/lzx/iteam/TreeFrag;

    iget-object v5, v5, Lcom/lzx/iteam/TreeFrag;->fixelements:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 543
    iget-object v5, p0, Lcom/lzx/iteam/TreeFrag$3;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;
    invoke-static {v5}, Lcom/lzx/iteam/TreeFrag;->access$9(Lcom/lzx/iteam/TreeFrag;)Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/lzx/iteam/TreeFrag$3;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->elements:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/lzx/iteam/TreeFrag;->access$2(Lcom/lzx/iteam/TreeFrag;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/lzx/iteam/TreeFrag$3;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->elementsData:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/lzx/iteam/TreeFrag;->access$3(Lcom/lzx/iteam/TreeFrag;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->initData(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 544
    iget-object v5, p0, Lcom/lzx/iteam/TreeFrag$3;->this$0:Lcom/lzx/iteam/TreeFrag;

    iget-object v5, v5, Lcom/lzx/iteam/TreeFrag;->root:Lcom/lzx/iteam/treeview/Element;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/lzx/iteam/treeview/Element;->isExpanded:Z

    goto :goto_0

    .line 537
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/treeview/Element;

    .line 539
    .local v1, "it":Lcom/lzx/iteam/treeview/Element;
    const/4 v6, 0x0

    iput-boolean v6, v1, Lcom/lzx/iteam/treeview/Element;->isExpanded:Z

    .line 540
    iget-object v6, p0, Lcom/lzx/iteam/TreeFrag$3;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->elements:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/lzx/iteam/TreeFrag;->access$2(Lcom/lzx/iteam/TreeFrag;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 555
    .end local v1    # "it":Lcom/lzx/iteam/treeview/Element;
    :cond_3
    add-int/lit8 p3, p3, -0x1

    .line 557
    iget-object v5, p0, Lcom/lzx/iteam/TreeFrag$3;->this$0:Lcom/lzx/iteam/TreeFrag;

    iput p3, v5, Lcom/lzx/iteam/TreeFrag;->currentPosition:I

    .line 559
    iget-object v5, p0, Lcom/lzx/iteam/TreeFrag$3;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;
    invoke-static {v5}, Lcom/lzx/iteam/TreeFrag;->access$9(Lcom/lzx/iteam/TreeFrag;)Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lzx/iteam/treeview/Element;

    invoke-virtual {v5}, Lcom/lzx/iteam/treeview/Element;->getId()I

    .line 563
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/lzx/iteam/TreeFrag$3;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;
    invoke-static {v5}, Lcom/lzx/iteam/TreeFrag;->access$9(Lcom/lzx/iteam/TreeFrag;)Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lzx/iteam/treeview/Element;

    invoke-virtual {v5}, Lcom/lzx/iteam/treeview/Element;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 564
    .local v3, "tagId":Ljava/lang/String;
    iget-object v5, p0, Lcom/lzx/iteam/TreeFrag$3;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;
    invoke-static {v5}, Lcom/lzx/iteam/TreeFrag;->access$9(Lcom/lzx/iteam/TreeFrag;)Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lzx/iteam/treeview/Element;

    invoke-virtual {v5}, Lcom/lzx/iteam/treeview/Element;->getContentText()Ljava/lang/String;

    move-result-object v4

    .line 565
    .local v4, "tagName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/lzx/iteam/TreeFrag$3;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;
    invoke-static {v5}, Lcom/lzx/iteam/TreeFrag;->access$9(Lcom/lzx/iteam/TreeFrag;)Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lzx/iteam/treeview/Element;

    invoke-virtual {v5}, Lcom/lzx/iteam/treeview/Element;->getContactCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 567
    .local v2, "tagCount":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 568
    .local v0, "intent":Landroid/content/Intent;
    const-string v5, "tag_id"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 569
    const-string v5, "intent_tag_name"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 570
    const-string v5, "tag_count"

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 571
    const-string v5, "group_id"

    iget-object v6, p0, Lcom/lzx/iteam/TreeFrag$3;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->mGid:Ljava/lang/String;
    invoke-static {v6}, Lcom/lzx/iteam/TreeFrag;->access$5(Lcom/lzx/iteam/TreeFrag;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 572
    const-string v5, "group_name"

    iget-object v6, p0, Lcom/lzx/iteam/TreeFrag$3;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->mGroupName:Ljava/lang/String;
    invoke-static {v6}, Lcom/lzx/iteam/TreeFrag;->access$6(Lcom/lzx/iteam/TreeFrag;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 576
    sget-object v6, Lcom/lzx/iteam/CloudDialerActivity;->instance:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v5, p0, Lcom/lzx/iteam/TreeFrag$3;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;
    invoke-static {v5}, Lcom/lzx/iteam/TreeFrag;->access$9(Lcom/lzx/iteam/TreeFrag;)Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lzx/iteam/treeview/Element;

    iput-object v5, v6, Lcom/lzx/iteam/CloudDialerActivity;->chooseelement:Lcom/lzx/iteam/treeview/Element;

    .line 577
    sget-object v5, Lcom/lzx/iteam/CloudDialerActivity;->instance:Lcom/lzx/iteam/CloudDialerActivity;

    iput-object v3, v5, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    .line 579
    iget-object v5, p0, Lcom/lzx/iteam/TreeFrag$3;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->type:I
    invoke-static {v5}, Lcom/lzx/iteam/TreeFrag;->access$15(Lcom/lzx/iteam/TreeFrag;)I

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/lzx/iteam/TreeFrag$3;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->type:I
    invoke-static {v5}, Lcom/lzx/iteam/TreeFrag;->access$15(Lcom/lzx/iteam/TreeFrag;)I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_4

    iget-object v5, p0, Lcom/lzx/iteam/TreeFrag$3;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->type:I
    invoke-static {v5}, Lcom/lzx/iteam/TreeFrag;->access$15(Lcom/lzx/iteam/TreeFrag;)I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_7

    .line 580
    :cond_4
    sget-object v6, Lcom/lzx/iteam/CloudDialerActivity;->instance:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v5, p0, Lcom/lzx/iteam/TreeFrag$3;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;
    invoke-static {v5}, Lcom/lzx/iteam/TreeFrag;->access$9(Lcom/lzx/iteam/TreeFrag;)Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lzx/iteam/treeview/Element;

    iput-object v5, v6, Lcom/lzx/iteam/CloudDialerActivity;->chooseelement:Lcom/lzx/iteam/treeview/Element;

    .line 583
    const-string v5, "structure_tag_click"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 584
    iget-object v5, p0, Lcom/lzx/iteam/TreeFrag$3;->this$0:Lcom/lzx/iteam/TreeFrag;

    iget-boolean v5, v5, Lcom/lzx/iteam/TreeFrag;->isBatch:Z

    if-nez v5, :cond_6

    .line 585
    sget-object v6, Lcom/lzx/iteam/CloudDialerActivity;->instance:Lcom/lzx/iteam/CloudDialerActivity;

    const/4 v7, -0x1

    iget-object v5, p0, Lcom/lzx/iteam/TreeFrag$3;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;
    invoke-static {v5}, Lcom/lzx/iteam/TreeFrag;->access$9(Lcom/lzx/iteam/TreeFrag;)Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lzx/iteam/treeview/Element;

    invoke-virtual {v6, v0, v7, v5}, Lcom/lzx/iteam/CloudDialerActivity;->ListRefresh(Landroid/content/Intent;ILcom/lzx/iteam/treeview/Element;)V

    .line 601
    :cond_5
    :goto_3
    iget-object v5, p0, Lcom/lzx/iteam/TreeFrag$3;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;
    invoke-static {v5}, Lcom/lzx/iteam/TreeFrag;->access$9(Lcom/lzx/iteam/TreeFrag;)Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->setTreeStyle(I)V

    .line 603
    iget-object v5, p0, Lcom/lzx/iteam/TreeFrag$3;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;
    invoke-static {v5}, Lcom/lzx/iteam/TreeFrag;->access$9(Lcom/lzx/iteam/TreeFrag;)Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-result-object v6

    iget-object v5, p0, Lcom/lzx/iteam/TreeFrag$3;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;
    invoke-static {v5}, Lcom/lzx/iteam/TreeFrag;->access$9(Lcom/lzx/iteam/TreeFrag;)Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lzx/iteam/treeview/Element;

    invoke-virtual {v5}, Lcom/lzx/iteam/treeview/Element;->getId()I

    move-result v5

    iput v5, v6, Lcom/lzx/iteam/treeview/TreeViewAdapter;->selectId:I

    .line 605
    const v5, 0x7f0a0057

    invoke-virtual {p2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 609
    sput-object v0, Lcom/lzx/iteam/CloudDialerActivity;->recordintent:Landroid/content/Intent;

    .line 611
    iget-object v5, p0, Lcom/lzx/iteam/TreeFrag$3;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;
    invoke-static {v5}, Lcom/lzx/iteam/TreeFrag;->access$9(Lcom/lzx/iteam/TreeFrag;)Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->notifyDataSetChanged()V

    goto/16 :goto_1

    .line 587
    :cond_6
    sget-object v6, Lcom/lzx/iteam/CloudDialerActivity;->instance:Lcom/lzx/iteam/CloudDialerActivity;

    const/4 v7, -0x2

    iget-object v5, p0, Lcom/lzx/iteam/TreeFrag$3;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;
    invoke-static {v5}, Lcom/lzx/iteam/TreeFrag;->access$9(Lcom/lzx/iteam/TreeFrag;)Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lzx/iteam/treeview/Element;

    invoke-virtual {v6, v0, v7, v5}, Lcom/lzx/iteam/CloudDialerActivity;->ListRefresh(Landroid/content/Intent;ILcom/lzx/iteam/treeview/Element;)V

    goto :goto_3

    .line 592
    :cond_7
    iget-object v5, p0, Lcom/lzx/iteam/TreeFrag$3;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->type:I
    invoke-static {v5}, Lcom/lzx/iteam/TreeFrag;->access$15(Lcom/lzx/iteam/TreeFrag;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_8

    .line 593
    sget-object v5, Lcom/lzx/iteam/CloudDialerActivity;->instance:Lcom/lzx/iteam/CloudDialerActivity;

    const/16 v6, 0x276a

    invoke-virtual {v5, v0, v6}, Lcom/lzx/iteam/CloudDialerActivity;->ListRefresh(Landroid/content/Intent;I)V

    goto :goto_3

    .line 595
    :cond_8
    iget-object v5, p0, Lcom/lzx/iteam/TreeFrag$3;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->type:I
    invoke-static {v5}, Lcom/lzx/iteam/TreeFrag;->access$15(Lcom/lzx/iteam/TreeFrag;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    .line 596
    const-string v5, "manage_delete_member"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 597
    sget-object v5, Lcom/lzx/iteam/CloudDialerActivity;->instance:Lcom/lzx/iteam/CloudDialerActivity;

    const/16 v6, 0x276c

    invoke-virtual {v5, v0, v6}, Lcom/lzx/iteam/CloudDialerActivity;->ListRefresh(Landroid/content/Intent;I)V

    goto :goto_3
.end method
