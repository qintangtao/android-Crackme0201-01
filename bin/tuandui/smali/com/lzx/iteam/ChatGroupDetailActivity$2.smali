.class Lcom/lzx/iteam/ChatGroupDetailActivity$2;
.super Ljava/lang/Object;
.source "ChatGroupDetailActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/ChatGroupDetailActivity;->initViews()V
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
.field final synthetic this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ChatGroupDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$2;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    .line 299
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
    .line 302
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v2, "\u6dfb\u52a0"

    iget-object v1, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$2;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->adapter1:Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter;
    invoke-static {v1}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$14(Lcom/lzx/iteam/ChatGroupDetailActivity;)Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/bean/ChatContact;

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/ChatContact;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v2, "\u53d1\u8d77\u7fa4\u804a"

    iget-object v1, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$2;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->adapter1:Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter;
    invoke-static {v1}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$14(Lcom/lzx/iteam/ChatGroupDetailActivity;)Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/bean/ChatContact;

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/ChatContact;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 303
    :cond_0
    const-string v1, "0"

    iget-object v2, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$2;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mIsActive:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$27(Lcom/lzx/iteam/ChatGroupDetailActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 304
    iget-object v1, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$2;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    const-string v2, "\u5bf9\u4e0d\u8d77\uff0c\u8be5\u5c0f\u7ec4\u5df2\u7ecf\u89e3\u6563\uff0c\u65e0\u6cd5\u8fdb\u884c\u6b64\u64cd\u4f5c"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 315
    :cond_1
    :goto_0
    return-void

    .line 306
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$2;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    const-class v2, Lcom/lzx/iteam/ChooseContactByTeamActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 307
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "create_chat_group"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    const-string v1, "chat_group_id"

    iget-object v2, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$2;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mGroupID:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$7(Lcom/lzx/iteam/ChatGroupDetailActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    const-string v1, "chat_group_name"

    iget-object v2, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$2;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mGroupName:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$2(Lcom/lzx/iteam/ChatGroupDetailActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    const-string v1, "user_type"

    iget-object v2, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$2;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mUserType:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$16(Lcom/lzx/iteam/ChatGroupDetailActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    const-string v1, "is_note"

    iget-object v2, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$2;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mIsNote:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$23(Lcom/lzx/iteam/ChatGroupDetailActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    iget-object v1, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$2;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    invoke-virtual {v1, v0}, Lcom/lzx/iteam/ChatGroupDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
