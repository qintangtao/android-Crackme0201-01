.class Lcom/lzx/iteam/GroupFragment$MyOnItemClickListener;
.super Ljava/lang/Object;
.source "GroupFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/GroupFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyOnItemClickListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/GroupFragment;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/GroupFragment;)V
    .locals 0

    .prologue
    .line 427
    iput-object p1, p0, Lcom/lzx/iteam/GroupFragment$MyOnItemClickListener;->this$0:Lcom/lzx/iteam/GroupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 430
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-static {}, Lcom/lzx/iteam/util/Constants;->isFastClick()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 445
    :goto_0
    return-void

    .line 433
    :cond_0
    iget-object v2, p0, Lcom/lzx/iteam/GroupFragment$MyOnItemClickListener;->this$0:Lcom/lzx/iteam/GroupFragment;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/lzx/iteam/GroupFragment;->access$7(Lcom/lzx/iteam/GroupFragment;Z)V

    .line 435
    iget-object v2, p0, Lcom/lzx/iteam/GroupFragment$MyOnItemClickListener;->this$0:Lcom/lzx/iteam/GroupFragment;

    invoke-virtual {v2}, Lcom/lzx/iteam/GroupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/DialerApp;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/DialerApp;->setGetChatGroupList(Z)V

    .line 436
    iget-object v2, p0, Lcom/lzx/iteam/GroupFragment$MyOnItemClickListener;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->adapter:Lcom/lzx/iteam/adapter/ChatGroupAdatpter;
    invoke-static {v2}, Lcom/lzx/iteam/GroupFragment;->access$3(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/adapter/ChatGroupAdatpter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/lzx/iteam/adapter/ChatGroupAdatpter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/ChatGroup;

    .line 437
    .local v0, "chatGroup":Lcom/lzx/iteam/bean/ChatGroup;
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lzx/iteam/GroupFragment$MyOnItemClickListener;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v2}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v2

    const-class v3, Lcom/lzx/iteam/ChatActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 438
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "chat_group_name"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ChatGroup;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    const-string v2, "chat_group_id"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ChatGroup;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    const-string v2, "chat_count"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ChatGroup;->getMemberCount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    const-string v2, "userType"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ChatGroup;->getUserType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    const-string v2, "type"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ChatGroup;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    const-string v2, "isActive"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ChatGroup;->getIsActive()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 444
    iget-object v2, p0, Lcom/lzx/iteam/GroupFragment$MyOnItemClickListener;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v2}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v2

    const/16 v3, 0x276f

    invoke-virtual {v2, v1, v3}, Lcom/lzx/iteam/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
