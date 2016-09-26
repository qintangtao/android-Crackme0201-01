.class Lcom/lzx/iteam/ContactsFragment$3;
.super Ljava/lang/Object;
.source "ContactsFragment.java"

# interfaces
.implements Lcom/lzx/iteam/net/CloudGroupListCenter$CloudGroupDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/ContactsFragment;->setCloudListData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ContactsFragment;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ContactsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ContactsFragment$3;->this$0:Lcom/lzx/iteam/ContactsFragment;

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/CloudGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/CloudGroup;>;"
    iget-object v0, p0, Lcom/lzx/iteam/ContactsFragment$3;->this$0:Lcom/lzx/iteam/ContactsFragment;

    # getter for: Lcom/lzx/iteam/ContactsFragment;->mGroupListData:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/ContactsFragment;->access$0(Lcom/lzx/iteam/ContactsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 248
    iget-object v0, p0, Lcom/lzx/iteam/ContactsFragment$3;->this$0:Lcom/lzx/iteam/ContactsFragment;

    # getter for: Lcom/lzx/iteam/ContactsFragment;->mGroupListData:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/ContactsFragment;->access$0(Lcom/lzx/iteam/ContactsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/ContactsFragment$3;->this$0:Lcom/lzx/iteam/ContactsFragment;

    # getter for: Lcom/lzx/iteam/ContactsFragment;->localContact:Lcom/lzx/iteam/bean/CloudGroup;
    invoke-static {v1}, Lcom/lzx/iteam/ContactsFragment;->access$7(Lcom/lzx/iteam/ContactsFragment;)Lcom/lzx/iteam/bean/CloudGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object v0, p0, Lcom/lzx/iteam/ContactsFragment$3;->this$0:Lcom/lzx/iteam/ContactsFragment;

    # getter for: Lcom/lzx/iteam/ContactsFragment;->mGroupListData:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/ContactsFragment;->access$0(Lcom/lzx/iteam/ContactsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 250
    iget-object v0, p0, Lcom/lzx/iteam/ContactsFragment$3;->this$0:Lcom/lzx/iteam/ContactsFragment;

    # getter for: Lcom/lzx/iteam/ContactsFragment;->mGroupListData:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/ContactsFragment;->access$0(Lcom/lzx/iteam/ContactsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/ContactsFragment$3;->this$0:Lcom/lzx/iteam/ContactsFragment;

    # getter for: Lcom/lzx/iteam/ContactsFragment;->localContact:Lcom/lzx/iteam/bean/CloudGroup;
    invoke-static {v1}, Lcom/lzx/iteam/ContactsFragment;->access$7(Lcom/lzx/iteam/ContactsFragment;)Lcom/lzx/iteam/bean/CloudGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    iget-object v0, p0, Lcom/lzx/iteam/ContactsFragment$3;->this$0:Lcom/lzx/iteam/ContactsFragment;

    # getter for: Lcom/lzx/iteam/ContactsFragment;->mAdapter:Lcom/lzx/iteam/adapter/CloudGroupAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/ContactsFragment;->access$2(Lcom/lzx/iteam/ContactsFragment;)Lcom/lzx/iteam/adapter/CloudGroupAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/ContactsFragment$3;->this$0:Lcom/lzx/iteam/ContactsFragment;

    # getter for: Lcom/lzx/iteam/ContactsFragment;->mGroupListData:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lzx/iteam/ContactsFragment;->access$0(Lcom/lzx/iteam/ContactsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/adapter/CloudGroupAdapter;->updateCloudGroupList(Ljava/util/ArrayList;)V

    .line 252
    iget-object v0, p0, Lcom/lzx/iteam/ContactsFragment$3;->this$0:Lcom/lzx/iteam/ContactsFragment;

    # getter for: Lcom/lzx/iteam/ContactsFragment;->mProgress:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/lzx/iteam/ContactsFragment;->access$11(Lcom/lzx/iteam/ContactsFragment;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 255
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 2
    .param p1, "errNum"    # I
    .param p2, "obj"    # Ljava/lang/String;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/lzx/iteam/ContactsFragment$3;->this$0:Lcom/lzx/iteam/ContactsFragment;

    # getter for: Lcom/lzx/iteam/ContactsFragment;->mProgress:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/lzx/iteam/ContactsFragment;->access$11(Lcom/lzx/iteam/ContactsFragment;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/ContactsFragment$3;->this$0:Lcom/lzx/iteam/ContactsFragment;

    # getter for: Lcom/lzx/iteam/ContactsFragment;->mProgress:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/lzx/iteam/ContactsFragment;->access$11(Lcom/lzx/iteam/ContactsFragment;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/lzx/iteam/ContactsFragment$3;->this$0:Lcom/lzx/iteam/ContactsFragment;

    # getter for: Lcom/lzx/iteam/ContactsFragment;->mProgress:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/lzx/iteam/ContactsFragment;->access$11(Lcom/lzx/iteam/ContactsFragment;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/ContactsFragment$3;->this$0:Lcom/lzx/iteam/ContactsFragment;

    # getter for: Lcom/lzx/iteam/ContactsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v0}, Lcom/lzx/iteam/ContactsFragment;->access$5(Lcom/lzx/iteam/ContactsFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 273
    return-void
.end method

.method public onNoChange(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/CloudGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 259
    .local p1, "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/CloudGroup;>;"
    iget-object v0, p0, Lcom/lzx/iteam/ContactsFragment$3;->this$0:Lcom/lzx/iteam/ContactsFragment;

    # getter for: Lcom/lzx/iteam/ContactsFragment;->mAdapter:Lcom/lzx/iteam/adapter/CloudGroupAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/ContactsFragment;->access$2(Lcom/lzx/iteam/ContactsFragment;)Lcom/lzx/iteam/adapter/CloudGroupAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/ContactsFragment$3;->this$0:Lcom/lzx/iteam/ContactsFragment;

    # getter for: Lcom/lzx/iteam/ContactsFragment;->mGroupListData:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lzx/iteam/ContactsFragment;->access$0(Lcom/lzx/iteam/ContactsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/adapter/CloudGroupAdapter;->updateCloudGroupList(Ljava/util/ArrayList;)V

    .line 260
    iget-object v0, p0, Lcom/lzx/iteam/ContactsFragment$3;->this$0:Lcom/lzx/iteam/ContactsFragment;

    # getter for: Lcom/lzx/iteam/ContactsFragment;->mProgress:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/lzx/iteam/ContactsFragment;->access$11(Lcom/lzx/iteam/ContactsFragment;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/ContactsFragment$3;->this$0:Lcom/lzx/iteam/ContactsFragment;

    # getter for: Lcom/lzx/iteam/ContactsFragment;->mProgress:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/lzx/iteam/ContactsFragment;->access$11(Lcom/lzx/iteam/ContactsFragment;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/lzx/iteam/ContactsFragment$3;->this$0:Lcom/lzx/iteam/ContactsFragment;

    # getter for: Lcom/lzx/iteam/ContactsFragment;->mProgress:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/lzx/iteam/ContactsFragment;->access$11(Lcom/lzx/iteam/ContactsFragment;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 265
    :cond_0
    return-void
.end method
