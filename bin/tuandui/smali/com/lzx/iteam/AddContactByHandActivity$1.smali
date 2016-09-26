.class Lcom/lzx/iteam/AddContactByHandActivity$1;
.super Landroid/os/Handler;
.source "AddContactByHandActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/AddContactByHandActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/AddContactByHandActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/AddContactByHandActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/AddContactByHandActivity$1;->this$0:Lcom/lzx/iteam/AddContactByHandActivity;

    .line 52
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 55
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 56
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 90
    :goto_0
    return-void

    .line 58
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lzx/iteam/AddContactByHandActivity$1;->this$0:Lcom/lzx/iteam/AddContactByHandActivity;

    const-class v2, Lcom/lzx/iteam/CreateGroupActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    .local v0, "toCreate":Landroid/content/Intent;
    const-class v1, Lcom/lzx/iteam/bean/CloudGroup;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/AddContactByHandActivity$1;->this$0:Lcom/lzx/iteam/AddContactByHandActivity;

    # getter for: Lcom/lzx/iteam/AddContactByHandActivity;->mCloudGroup:Lcom/lzx/iteam/bean/CloudGroup;
    invoke-static {v2}, Lcom/lzx/iteam/AddContactByHandActivity;->access$0(Lcom/lzx/iteam/AddContactByHandActivity;)Lcom/lzx/iteam/bean/CloudGroup;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 60
    const-string v1, "code"

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    const-string v1, "tag_id"

    iget-object v2, p0, Lcom/lzx/iteam/AddContactByHandActivity$1;->this$0:Lcom/lzx/iteam/AddContactByHandActivity;

    # getter for: Lcom/lzx/iteam/AddContactByHandActivity;->mTagId:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/AddContactByHandActivity;->access$1(Lcom/lzx/iteam/AddContactByHandActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const-string v1, "contact_count"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_2

    .line 64
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "success_num"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 66
    const-string v2, "err_num"

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "err_num"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const-string v2, "success_num"

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "success_num"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string v2, "err_contact_names"

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "err_contact_names"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    :cond_0
    :goto_1
    const-string v1, "where"

    const-string v2, "addContact"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    iget-object v1, p0, Lcom/lzx/iteam/AddContactByHandActivity$1;->this$0:Lcom/lzx/iteam/AddContactByHandActivity;

    invoke-virtual {v1, v0}, Lcom/lzx/iteam/AddContactByHandActivity;->startActivity(Landroid/content/Intent;)V

    .line 87
    iget-object v1, p0, Lcom/lzx/iteam/AddContactByHandActivity$1;->this$0:Lcom/lzx/iteam/AddContactByHandActivity;

    invoke-virtual {v1}, Lcom/lzx/iteam/AddContactByHandActivity;->finish()V

    goto/16 :goto_0

    .line 70
    :cond_1
    const-string v1, "err_num"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-string v1, "success_num"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string v1, "err_contact_names"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 77
    :cond_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0x1f41

    if-ne v1, v2, :cond_3

    .line 78
    iget-object v1, p0, Lcom/lzx/iteam/AddContactByHandActivity$1;->this$0:Lcom/lzx/iteam/AddContactByHandActivity;

    const v2, 0x7f080042

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 79
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 81
    :cond_3
    iget-object v1, p0, Lcom/lzx/iteam/AddContactByHandActivity$1;->this$0:Lcom/lzx/iteam/AddContactByHandActivity;

    invoke-virtual {v1}, Lcom/lzx/iteam/AddContactByHandActivity;->finish()V

    .line 82
    iget-object v2, p0, Lcom/lzx/iteam/AddContactByHandActivity$1;->this$0:Lcom/lzx/iteam/AddContactByHandActivity;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
