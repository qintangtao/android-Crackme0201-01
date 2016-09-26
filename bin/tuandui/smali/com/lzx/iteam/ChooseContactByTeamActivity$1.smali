.class Lcom/lzx/iteam/ChooseContactByTeamActivity$1;
.super Ljava/lang/Object;
.source "ChooseContactByTeamActivity.java"

# interfaces
.implements Lcom/lzx/iteam/net/CloudGroupListCenter$CloudGroupDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/ChooseContactByTeamActivity;->setCloudListData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ChooseContactByTeamActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ChooseContactByTeamActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity$1;->this$0:Lcom/lzx/iteam/ChooseContactByTeamActivity;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/util/ArrayList;)V
    .locals 1
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
    .line 200
    .local p1, "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/CloudGroup;>;"
    iget-object v0, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity$1;->this$0:Lcom/lzx/iteam/ChooseContactByTeamActivity;

    # getter for: Lcom/lzx/iteam/ChooseContactByTeamActivity;->mGroupListData:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/ChooseContactByTeamActivity;->access$0(Lcom/lzx/iteam/ChooseContactByTeamActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 201
    iget-object v0, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity$1;->this$0:Lcom/lzx/iteam/ChooseContactByTeamActivity;

    # getter for: Lcom/lzx/iteam/ChooseContactByTeamActivity;->mGroupListData:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/ChooseContactByTeamActivity;->access$0(Lcom/lzx/iteam/ChooseContactByTeamActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 202
    iget-object v0, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity$1;->this$0:Lcom/lzx/iteam/ChooseContactByTeamActivity;

    # getter for: Lcom/lzx/iteam/ChooseContactByTeamActivity;->mAdapter:Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/ChooseContactByTeamActivity;->access$5(Lcom/lzx/iteam/ChooseContactByTeamActivity;)Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter;->updateCloudGroupList(Ljava/util/ArrayList;)V

    .line 203
    iget-object v0, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity$1;->this$0:Lcom/lzx/iteam/ChooseContactByTeamActivity;

    # getter for: Lcom/lzx/iteam/ChooseContactByTeamActivity;->mAdapter:Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/ChooseContactByTeamActivity;->access$5(Lcom/lzx/iteam/ChooseContactByTeamActivity;)Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter;->notifyDataSetChanged()V

    .line 204
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 2
    .param p1, "errNum"    # I
    .param p2, "obj"    # Ljava/lang/String;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity$1;->this$0:Lcom/lzx/iteam/ChooseContactByTeamActivity;

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 217
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
    .line 208
    .local p1, "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/CloudGroup;>;"
    iget-object v0, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity$1;->this$0:Lcom/lzx/iteam/ChooseContactByTeamActivity;

    # getter for: Lcom/lzx/iteam/ChooseContactByTeamActivity;->mGroupListData:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/ChooseContactByTeamActivity;->access$0(Lcom/lzx/iteam/ChooseContactByTeamActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 209
    iget-object v0, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity$1;->this$0:Lcom/lzx/iteam/ChooseContactByTeamActivity;

    # getter for: Lcom/lzx/iteam/ChooseContactByTeamActivity;->mGroupListData:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/ChooseContactByTeamActivity;->access$0(Lcom/lzx/iteam/ChooseContactByTeamActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 210
    iget-object v0, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity$1;->this$0:Lcom/lzx/iteam/ChooseContactByTeamActivity;

    # getter for: Lcom/lzx/iteam/ChooseContactByTeamActivity;->mAdapter:Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/ChooseContactByTeamActivity;->access$5(Lcom/lzx/iteam/ChooseContactByTeamActivity;)Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity$1;->this$0:Lcom/lzx/iteam/ChooseContactByTeamActivity;

    # getter for: Lcom/lzx/iteam/ChooseContactByTeamActivity;->mGroupListData:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lzx/iteam/ChooseContactByTeamActivity;->access$0(Lcom/lzx/iteam/ChooseContactByTeamActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter;->updateCloudGroupList(Ljava/util/ArrayList;)V

    .line 211
    iget-object v0, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity$1;->this$0:Lcom/lzx/iteam/ChooseContactByTeamActivity;

    # getter for: Lcom/lzx/iteam/ChooseContactByTeamActivity;->mAdapter:Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/ChooseContactByTeamActivity;->access$5(Lcom/lzx/iteam/ChooseContactByTeamActivity;)Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter;->notifyDataSetChanged()V

    .line 212
    return-void
.end method
