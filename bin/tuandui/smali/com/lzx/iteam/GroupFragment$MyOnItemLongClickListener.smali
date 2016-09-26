.class Lcom/lzx/iteam/GroupFragment$MyOnItemLongClickListener;
.super Ljava/lang/Object;
.source "GroupFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/GroupFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyOnItemLongClickListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/GroupFragment;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/GroupFragment;)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcom/lzx/iteam/GroupFragment$MyOnItemLongClickListener;->this$0:Lcom/lzx/iteam/GroupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
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
    .line 452
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/lzx/iteam/GroupFragment$MyOnItemLongClickListener;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->adapter:Lcom/lzx/iteam/adapter/ChatGroupAdatpter;
    invoke-static {v1}, Lcom/lzx/iteam/GroupFragment;->access$3(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/adapter/ChatGroupAdatpter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/lzx/iteam/adapter/ChatGroupAdatpter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/ChatGroup;

    .line 453
    .local v0, "chatGroup":Lcom/lzx/iteam/bean/ChatGroup;
    iget-object v1, p0, Lcom/lzx/iteam/GroupFragment$MyOnItemLongClickListener;->this$0:Lcom/lzx/iteam/GroupFragment;

    invoke-static {v1, p3}, Lcom/lzx/iteam/GroupFragment;->access$8(Lcom/lzx/iteam/GroupFragment;I)V

    .line 454
    iget-object v1, p0, Lcom/lzx/iteam/GroupFragment$MyOnItemLongClickListener;->this$0:Lcom/lzx/iteam/GroupFragment;

    invoke-virtual {v1, v0}, Lcom/lzx/iteam/GroupFragment;->showExitGroupDlg(Lcom/lzx/iteam/bean/ChatGroup;)V

    .line 455
    const/4 v1, 0x1

    return v1
.end method
