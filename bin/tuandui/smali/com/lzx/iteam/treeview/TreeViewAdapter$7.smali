.class Lcom/lzx/iteam/treeview/TreeViewAdapter$7;
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
    iput-object p1, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$7;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    .line 953
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 956
    iget-object v1, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$7;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    # getter for: Lcom/lzx/iteam/treeview/TreeViewAdapter;->mAddContactsWin:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->access$5(Lcom/lzx/iteam/treeview/TreeViewAdapter;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 957
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$7;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    # getter for: Lcom/lzx/iteam/treeview/TreeViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->access$0(Lcom/lzx/iteam/treeview/TreeViewAdapter;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/lzx/iteam/CloudDialerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 958
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "structure_add_local_member"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 959
    const-string v1, "group_id"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$7;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    iget v3, v3, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mGroupId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 964
    const-string v1, "group_name"

    iget-object v2, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$7;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    iget-object v2, v2, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 967
    sget-object v1, Lcom/lzx/iteam/CloudDialerActivity;->instance:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v1, v0}, Lcom/lzx/iteam/CloudDialerActivity;->initIntentData(Landroid/content/Intent;)V

    .line 982
    return-void
.end method
