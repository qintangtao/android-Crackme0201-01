.class Lcom/lzx/iteam/ContactsFragment$MyOnItemClickListener;
.super Ljava/lang/Object;
.source "ContactsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/ContactsFragment;
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
.field final synthetic this$0:Lcom/lzx/iteam/ContactsFragment;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ContactsFragment;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/lzx/iteam/ContactsFragment$MyOnItemClickListener;->this$0:Lcom/lzx/iteam/ContactsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
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
    .line 301
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-static {}, Lcom/lzx/iteam/util/Constants;->isFastClick()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    iget-object v3, p0, Lcom/lzx/iteam/ContactsFragment$MyOnItemClickListener;->this$0:Lcom/lzx/iteam/ContactsFragment;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/lzx/iteam/ContactsFragment;->access$6(Lcom/lzx/iteam/ContactsFragment;Z)V

    .line 305
    iget-object v3, p0, Lcom/lzx/iteam/ContactsFragment$MyOnItemClickListener;->this$0:Lcom/lzx/iteam/ContactsFragment;

    # getter for: Lcom/lzx/iteam/ContactsFragment;->mGroupListData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lzx/iteam/ContactsFragment;->access$0(Lcom/lzx/iteam/ContactsFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 306
    iget-object v3, p0, Lcom/lzx/iteam/ContactsFragment$MyOnItemClickListener;->this$0:Lcom/lzx/iteam/ContactsFragment;

    # getter for: Lcom/lzx/iteam/ContactsFragment;->mGroupListData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lzx/iteam/ContactsFragment;->access$0(Lcom/lzx/iteam/ContactsFragment;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/ContactsFragment$MyOnItemClickListener;->this$0:Lcom/lzx/iteam/ContactsFragment;

    # getter for: Lcom/lzx/iteam/ContactsFragment;->localContact:Lcom/lzx/iteam/bean/CloudGroup;
    invoke-static {v4}, Lcom/lzx/iteam/ContactsFragment;->access$7(Lcom/lzx/iteam/ContactsFragment;)Lcom/lzx/iteam/bean/CloudGroup;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    iget-object v3, p0, Lcom/lzx/iteam/ContactsFragment$MyOnItemClickListener;->this$0:Lcom/lzx/iteam/ContactsFragment;

    # getter for: Lcom/lzx/iteam/ContactsFragment;->mGroupListData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lzx/iteam/ContactsFragment;->access$0(Lcom/lzx/iteam/ContactsFragment;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/ContactsFragment$MyOnItemClickListener;->this$0:Lcom/lzx/iteam/ContactsFragment;

    # getter for: Lcom/lzx/iteam/ContactsFragment;->mCenter:Lcom/lzx/iteam/net/CloudGroupListCenter;
    invoke-static {v4}, Lcom/lzx/iteam/ContactsFragment;->access$8(Lcom/lzx/iteam/ContactsFragment;)Lcom/lzx/iteam/net/CloudGroupListCenter;

    move-result-object v4

    iget-object v5, p0, Lcom/lzx/iteam/ContactsFragment$MyOnItemClickListener;->this$0:Lcom/lzx/iteam/ContactsFragment;

    # getter for: Lcom/lzx/iteam/ContactsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v5}, Lcom/lzx/iteam/ContactsFragment;->access$5(Lcom/lzx/iteam/ContactsFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lzx/iteam/net/CloudGroupListCenter;->getCloudGroupList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 308
    iget-object v3, p0, Lcom/lzx/iteam/ContactsFragment$MyOnItemClickListener;->this$0:Lcom/lzx/iteam/ContactsFragment;

    # getter for: Lcom/lzx/iteam/ContactsFragment;->mGroupListData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lzx/iteam/ContactsFragment;->access$0(Lcom/lzx/iteam/ContactsFragment;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/ContactsFragment$MyOnItemClickListener;->this$0:Lcom/lzx/iteam/ContactsFragment;

    # getter for: Lcom/lzx/iteam/ContactsFragment;->localContact:Lcom/lzx/iteam/bean/CloudGroup;
    invoke-static {v4}, Lcom/lzx/iteam/ContactsFragment;->access$7(Lcom/lzx/iteam/ContactsFragment;)Lcom/lzx/iteam/bean/CloudGroup;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    :cond_2
    if-nez p3, :cond_3

    .line 311
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/lzx/iteam/ContactsFragment$MyOnItemClickListener;->this$0:Lcom/lzx/iteam/ContactsFragment;

    # getter for: Lcom/lzx/iteam/ContactsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v3}, Lcom/lzx/iteam/ContactsFragment;->access$5(Lcom/lzx/iteam/ContactsFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v3

    const-class v4, Lcom/lzx/iteam/CloudDialerActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 312
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "local_contact_list"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    iget-object v3, p0, Lcom/lzx/iteam/ContactsFragment$MyOnItemClickListener;->this$0:Lcom/lzx/iteam/ContactsFragment;

    invoke-virtual {v3, v1}, Lcom/lzx/iteam/ContactsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 314
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v3, p0, Lcom/lzx/iteam/ContactsFragment$MyOnItemClickListener;->this$0:Lcom/lzx/iteam/ContactsFragment;

    # getter for: Lcom/lzx/iteam/ContactsFragment;->mGroupListData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lzx/iteam/ContactsFragment;->access$0(Lcom/lzx/iteam/ContactsFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p3, v3, :cond_4

    .line 315
    iget-object v3, p0, Lcom/lzx/iteam/ContactsFragment$MyOnItemClickListener;->this$0:Lcom/lzx/iteam/ContactsFragment;

    # invokes: Lcom/lzx/iteam/ContactsFragment;->createGroup()V
    invoke-static {v3}, Lcom/lzx/iteam/ContactsFragment;->access$9(Lcom/lzx/iteam/ContactsFragment;)V

    goto :goto_0

    .line 317
    :cond_4
    iget-object v3, p0, Lcom/lzx/iteam/ContactsFragment$MyOnItemClickListener;->this$0:Lcom/lzx/iteam/ContactsFragment;

    # getter for: Lcom/lzx/iteam/ContactsFragment;->mGroupListData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lzx/iteam/ContactsFragment;->access$0(Lcom/lzx/iteam/ContactsFragment;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 318
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 319
    .local v0, "adapter":Landroid/widget/Adapter;
    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/bean/CloudGroup;

    .line 320
    .local v2, "item":Lcom/lzx/iteam/bean/CloudGroup;
    sput-object v2, Lcom/lzx/iteam/CloudDialerActivity;->selectedGroup:Lcom/lzx/iteam/bean/CloudGroup;

    .line 321
    sget-object v3, Lcom/lzx/iteam/CloudDialerActivity;->selectedGroup:Lcom/lzx/iteam/bean/CloudGroup;

    iput p3, v3, Lcom/lzx/iteam/bean/CloudGroup;->position:I

    .line 322
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/lzx/iteam/ContactsFragment$MyOnItemClickListener;->this$0:Lcom/lzx/iteam/ContactsFragment;

    # getter for: Lcom/lzx/iteam/ContactsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v3}, Lcom/lzx/iteam/ContactsFragment;->access$5(Lcom/lzx/iteam/ContactsFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v3

    const-class v4, Lcom/lzx/iteam/CloudDialerActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 323
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "cloud_contact_list"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    const-string v4, "group_id"

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/lzx/iteam/ContactsFragment$MyOnItemClickListener;->this$0:Lcom/lzx/iteam/ContactsFragment;

    # getter for: Lcom/lzx/iteam/ContactsFragment;->mGroupListData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lzx/iteam/ContactsFragment;->access$0(Lcom/lzx/iteam/ContactsFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/bean/CloudGroup;

    iget-wide v6, v3, Lcom/lzx/iteam/bean/CloudGroup;->groupId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    const-string v3, "tag_id"

    const-string v4, "0"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    const-string v4, "tag_name"

    iget-object v3, p0, Lcom/lzx/iteam/ContactsFragment$MyOnItemClickListener;->this$0:Lcom/lzx/iteam/ContactsFragment;

    # getter for: Lcom/lzx/iteam/ContactsFragment;->mGroupListData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lzx/iteam/ContactsFragment;->access$0(Lcom/lzx/iteam/ContactsFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/bean/CloudGroup;

    iget-object v3, v3, Lcom/lzx/iteam/bean/CloudGroup;->groupName:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    const-string v4, "group_name"

    iget-object v3, p0, Lcom/lzx/iteam/ContactsFragment$MyOnItemClickListener;->this$0:Lcom/lzx/iteam/ContactsFragment;

    # getter for: Lcom/lzx/iteam/ContactsFragment;->mGroupListData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lzx/iteam/ContactsFragment;->access$0(Lcom/lzx/iteam/ContactsFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/bean/CloudGroup;

    iget-object v3, v3, Lcom/lzx/iteam/bean/CloudGroup;->groupName:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    const-string v3, "pid"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    const-string v4, "contact_id"

    iget-object v3, p0, Lcom/lzx/iteam/ContactsFragment$MyOnItemClickListener;->this$0:Lcom/lzx/iteam/ContactsFragment;

    # getter for: Lcom/lzx/iteam/ContactsFragment;->mGroupListData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lzx/iteam/ContactsFragment;->access$0(Lcom/lzx/iteam/ContactsFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/bean/CloudGroup;

    iget-object v3, v3, Lcom/lzx/iteam/bean/CloudGroup;->contactId:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    const-string v4, "group_img"

    iget-object v3, p0, Lcom/lzx/iteam/ContactsFragment$MyOnItemClickListener;->this$0:Lcom/lzx/iteam/ContactsFragment;

    # getter for: Lcom/lzx/iteam/ContactsFragment;->mGroupListData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lzx/iteam/ContactsFragment;->access$0(Lcom/lzx/iteam/ContactsFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/bean/CloudGroup;

    iget-object v3, v3, Lcom/lzx/iteam/bean/CloudGroup;->groupImg:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    const-string v4, "group_type"

    iget-object v3, p0, Lcom/lzx/iteam/ContactsFragment$MyOnItemClickListener;->this$0:Lcom/lzx/iteam/ContactsFragment;

    # getter for: Lcom/lzx/iteam/ContactsFragment;->mGroupListData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lzx/iteam/ContactsFragment;->access$0(Lcom/lzx/iteam/ContactsFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/bean/CloudGroup;

    iget v3, v3, Lcom/lzx/iteam/bean/CloudGroup;->groupType:I

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 332
    const-string v4, "user_type"

    iget-object v3, p0, Lcom/lzx/iteam/ContactsFragment$MyOnItemClickListener;->this$0:Lcom/lzx/iteam/ContactsFragment;

    # getter for: Lcom/lzx/iteam/ContactsFragment;->mGroupListData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lzx/iteam/ContactsFragment;->access$0(Lcom/lzx/iteam/ContactsFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/bean/CloudGroup;

    iget-object v3, v3, Lcom/lzx/iteam/bean/CloudGroup;->userType:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    const-string v4, "contact_count"

    iget-object v3, p0, Lcom/lzx/iteam/ContactsFragment$MyOnItemClickListener;->this$0:Lcom/lzx/iteam/ContactsFragment;

    # getter for: Lcom/lzx/iteam/ContactsFragment;->mGroupListData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lzx/iteam/ContactsFragment;->access$0(Lcom/lzx/iteam/ContactsFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/bean/CloudGroup;

    iget v3, v3, Lcom/lzx/iteam/bean/CloudGroup;->contactCount:I

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 334
    iget-object v3, p0, Lcom/lzx/iteam/ContactsFragment$MyOnItemClickListener;->this$0:Lcom/lzx/iteam/ContactsFragment;

    invoke-virtual {v3, v1}, Lcom/lzx/iteam/ContactsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
