.class Lcom/lzx/iteam/EventReceiveMemberActivity$2;
.super Ljava/lang/Object;
.source "EventReceiveMemberActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/EventReceiveMemberActivity;->initViews()V
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
.field final synthetic this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/EventReceiveMemberActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$2;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 169
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v2, "\u6dfb\u52a0"

    iget-object v1, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$2;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    # getter for: Lcom/lzx/iteam/EventReceiveMemberActivity;->mUnReadAdapter:Lcom/lzx/iteam/adapter/EventMemberAdapter;
    invoke-static {v1}, Lcom/lzx/iteam/EventReceiveMemberActivity;->access$8(Lcom/lzx/iteam/EventReceiveMemberActivity;)Lcom/lzx/iteam/adapter/EventMemberAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/lzx/iteam/adapter/EventMemberAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/net/EventMemberMsg;

    invoke-virtual {v1}, Lcom/lzx/iteam/net/EventMemberMsg;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$2;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    const-class v2, Lcom/lzx/iteam/ChooseContactByTeamActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "event_add_receiver"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const-string v1, "event_id"

    iget-object v2, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$2;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    # getter for: Lcom/lzx/iteam/EventReceiveMemberActivity;->mEventId:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/EventReceiveMemberActivity;->access$9(Lcom/lzx/iteam/EventReceiveMemberActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const-string v1, "event_type"

    iget-object v2, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$2;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    # getter for: Lcom/lzx/iteam/EventReceiveMemberActivity;->mEventType:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/EventReceiveMemberActivity;->access$0(Lcom/lzx/iteam/EventReceiveMemberActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    iget-object v1, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$2;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    invoke-virtual {v1, v0}, Lcom/lzx/iteam/EventReceiveMemberActivity;->startActivity(Landroid/content/Intent;)V

    .line 177
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
