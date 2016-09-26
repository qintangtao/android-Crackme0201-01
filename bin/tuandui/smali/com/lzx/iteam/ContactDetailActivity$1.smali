.class Lcom/lzx/iteam/ContactDetailActivity$1;
.super Landroid/os/Handler;
.source "ContactDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/ContactDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ContactDetailActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ContactDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ContactDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactDetailActivity;

    .line 89
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 94
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 125
    :goto_0
    return-void

    .line 96
    :sswitch_0
    iget-object v3, p0, Lcom/lzx/iteam/ContactDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactDetailActivity;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/lzx/iteam/bean/ContactInfo;

    invoke-static {v3, v2}, Lcom/lzx/iteam/ContactDetailActivity;->access$0(Lcom/lzx/iteam/ContactDetailActivity;Lcom/lzx/iteam/bean/ContactInfo;)V

    .line 98
    iget-object v2, p0, Lcom/lzx/iteam/ContactDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactDetailActivity;

    iget-object v3, p0, Lcom/lzx/iteam/ContactDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactDetailActivity;

    # getter for: Lcom/lzx/iteam/ContactDetailActivity;->mInfo:Lcom/lzx/iteam/bean/ContactInfo;
    invoke-static {v3}, Lcom/lzx/iteam/ContactDetailActivity;->access$1(Lcom/lzx/iteam/ContactDetailActivity;)Lcom/lzx/iteam/bean/ContactInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/ContactDetailActivity;->setLocalData(Lcom/lzx/iteam/bean/ContactInfo;)V

    goto :goto_0

    .line 103
    :sswitch_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_1

    .line 104
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lzx/iteam/bean/ChatGroup;

    .line 105
    .local v0, "chatGroup":Lcom/lzx/iteam/bean/ChatGroup;
    const-string v2, "1"

    iput-object v2, v0, Lcom/lzx/iteam/bean/ChatGroup;->type:Ljava/lang/String;

    .line 106
    const-string v2, "2"

    iput-object v2, v0, Lcom/lzx/iteam/bean/ChatGroup;->memberCount:Ljava/lang/String;

    .line 107
    iget-object v2, p0, Lcom/lzx/iteam/ContactDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactDetailActivity;

    # getter for: Lcom/lzx/iteam/ContactDetailActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;
    invoke-static {v2}, Lcom/lzx/iteam/ContactDetailActivity;->access$2(Lcom/lzx/iteam/ContactDetailActivity;)Lcom/lzx/iteam/provider/CloudDBOperation;

    move-result-object v2

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ChatGroup;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/provider/CloudDBOperation;->getChatGroupCount(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 108
    iget-object v2, p0, Lcom/lzx/iteam/ContactDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactDetailActivity;

    # getter for: Lcom/lzx/iteam/ContactDetailActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;
    invoke-static {v2}, Lcom/lzx/iteam/ContactDetailActivity;->access$2(Lcom/lzx/iteam/ContactDetailActivity;)Lcom/lzx/iteam/provider/CloudDBOperation;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/provider/CloudDBOperation;->insertChatGroup(Lcom/lzx/iteam/bean/ChatGroup;)J

    .line 110
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lzx/iteam/ContactDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactDetailActivity;

    const-class v3, Lcom/lzx/iteam/ChatActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "chat_group_id"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ChatGroup;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const-string v2, "chat_group_name"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ChatGroup;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string v2, "chat_count"

    const-string v3, "2"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const-string v2, "userType"

    const-string v3, "2"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const-string v2, "creatorName"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string v2, "isSingle"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    iget-object v2, p0, Lcom/lzx/iteam/ContactDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactDetailActivity;

    invoke-virtual {v2, v1}, Lcom/lzx/iteam/ContactDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 118
    iget-object v2, p0, Lcom/lzx/iteam/ContactDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactDetailActivity;

    invoke-virtual {v2}, Lcom/lzx/iteam/ContactDetailActivity;->finish()V

    goto :goto_0

    .line 121
    .end local v0    # "chatGroup":Lcom/lzx/iteam/bean/ChatGroup;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/lzx/iteam/ContactDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactDetailActivity;

    const-string v3, "\u521b\u5efa\u5c0f\u7ec4\u5931\u8d25"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 94
    :sswitch_data_0
    .sparse-switch
        0x14d -> :sswitch_0
        0x2712 -> :sswitch_1
    .end sparse-switch
.end method
