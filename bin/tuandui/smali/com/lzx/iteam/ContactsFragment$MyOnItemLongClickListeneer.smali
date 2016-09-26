.class Lcom/lzx/iteam/ContactsFragment$MyOnItemLongClickListeneer;
.super Ljava/lang/Object;
.source "ContactsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/ContactsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyOnItemLongClickListeneer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ContactsFragment;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ContactsFragment;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/lzx/iteam/ContactsFragment$MyOnItemLongClickListeneer;->this$0:Lcom/lzx/iteam/ContactsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "l"    # J
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
    .line 347
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-eqz p3, :cond_0

    .line 349
    iget-object v2, p0, Lcom/lzx/iteam/ContactsFragment$MyOnItemLongClickListeneer;->this$0:Lcom/lzx/iteam/ContactsFragment;

    # getter for: Lcom/lzx/iteam/ContactsFragment;->mGroupListData:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lzx/iteam/ContactsFragment;->access$0(Lcom/lzx/iteam/ContactsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq p3, v2, :cond_0

    .line 351
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 352
    .local v0, "adapter":Landroid/widget/Adapter;
    const/16 v2, 0x67

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 353
    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/bean/CloudGroup;

    .line 354
    .local v1, "item":Lcom/lzx/iteam/bean/CloudGroup;
    iget-object v2, p0, Lcom/lzx/iteam/ContactsFragment$MyOnItemLongClickListeneer;->this$0:Lcom/lzx/iteam/ContactsFragment;

    invoke-static {v2, p3}, Lcom/lzx/iteam/ContactsFragment;->access$10(Lcom/lzx/iteam/ContactsFragment;I)V

    .line 355
    iget-object v2, p0, Lcom/lzx/iteam/ContactsFragment$MyOnItemLongClickListeneer;->this$0:Lcom/lzx/iteam/ContactsFragment;

    invoke-virtual {v2, v1}, Lcom/lzx/iteam/ContactsFragment;->showExitGroupDlg(Lcom/lzx/iteam/bean/CloudGroup;)V

    .line 359
    .end local v0    # "adapter":Landroid/widget/Adapter;
    .end local v1    # "item":Lcom/lzx/iteam/bean/CloudGroup;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method
