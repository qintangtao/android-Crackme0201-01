.class Lcom/lzx/iteam/CloudContactDetailActivity$1;
.super Landroid/os/Handler;
.source "CloudContactDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/CloudContactDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/CloudContactDetailActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/CloudContactDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/CloudContactDetailActivity$1;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    .line 97
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/CloudContactDetailActivity$1;)Lcom/lzx/iteam/CloudContactDetailActivity;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity$1;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 101
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 107
    :pswitch_0
    iget-object v7, p0, Lcom/lzx/iteam/CloudContactDetailActivity$1;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity;->mDialog:Landroid/app/Dialog;
    invoke-static {v7}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$0(Lcom/lzx/iteam/CloudContactDetailActivity;)Landroid/app/Dialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    .line 108
    iget v7, p1, Landroid/os/Message;->arg1:I

    if-nez v7, :cond_1

    .line 109
    new-instance v7, Lcom/lzx/iteam/CloudContactDetailActivity$1$1;

    invoke-direct {v7, p0}, Lcom/lzx/iteam/CloudContactDetailActivity$1$1;-><init>(Lcom/lzx/iteam/CloudContactDetailActivity$1;)V

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Void;

    .line 116
    invoke-virtual {v7, v8}, Lcom/lzx/iteam/CloudContactDetailActivity$1$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 117
    iget-object v7, p0, Lcom/lzx/iteam/CloudContactDetailActivity$1;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    const/16 v8, 0x2711

    invoke-virtual {v7, v8}, Lcom/lzx/iteam/CloudContactDetailActivity;->setResult(I)V

    .line 118
    iget-object v7, p0, Lcom/lzx/iteam/CloudContactDetailActivity$1;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    invoke-virtual {v7}, Lcom/lzx/iteam/CloudContactDetailActivity;->finish()V

    goto :goto_0

    .line 137
    :cond_1
    iget-object v7, p0, Lcom/lzx/iteam/CloudContactDetailActivity$1;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;
    invoke-static {v7}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$4(Lcom/lzx/iteam/CloudContactDetailActivity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v7

    const-string v8, "\u63d0\u793a"

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity$1;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    const v11, 0x7f080061

    invoke-virtual {v10, v11}, Lcom/lzx/iteam/CloudContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Lcom/lzx/iteam/util/AllDialogUtil;->titleMsgBtnStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 138
    iget-object v7, p0, Lcom/lzx/iteam/CloudContactDetailActivity$1;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;
    invoke-static {v7}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$4(Lcom/lzx/iteam/CloudContactDetailActivity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v7

    new-instance v8, Lcom/lzx/iteam/CloudContactDetailActivity$1$2;

    invoke-direct {v8, p0}, Lcom/lzx/iteam/CloudContactDetailActivity$1$2;-><init>(Lcom/lzx/iteam/CloudContactDetailActivity$1;)V

    invoke-virtual {v7, v8}, Lcom/lzx/iteam/util/AllDialogUtil;->setOnDialogListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;)V

    goto :goto_0

    .line 153
    :pswitch_1
    iget v7, p1, Landroid/os/Message;->arg1:I

    if-nez v7, :cond_0

    .line 154
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v7, :cond_2

    .line 155
    iget-object v8, p0, Lcom/lzx/iteam/CloudContactDetailActivity$1;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/lzx/iteam/bean/CloudContact;

    invoke-static {v8, v7}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$5(Lcom/lzx/iteam/CloudContactDetailActivity;Lcom/lzx/iteam/bean/CloudContact;)V

    .line 156
    iget-object v7, p0, Lcom/lzx/iteam/CloudContactDetailActivity$1;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    iget-object v8, p0, Lcom/lzx/iteam/CloudContactDetailActivity$1;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity;->cloudContact:Lcom/lzx/iteam/bean/CloudContact;
    invoke-static {v8}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$6(Lcom/lzx/iteam/CloudContactDetailActivity;)Lcom/lzx/iteam/bean/CloudContact;

    move-result-object v8

    # invokes: Lcom/lzx/iteam/CloudContactDetailActivity;->setCloudContactData(Lcom/lzx/iteam/bean/CloudContact;)V
    invoke-static {v7, v8}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$7(Lcom/lzx/iteam/CloudContactDetailActivity;Lcom/lzx/iteam/bean/CloudContact;)V

    .line 158
    :cond_2
    const-string v7, "cloudContact"

    iget-object v8, p0, Lcom/lzx/iteam/CloudContactDetailActivity$1;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity;->cloudContact:Lcom/lzx/iteam/bean/CloudContact;
    invoke-static {v8}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$6(Lcom/lzx/iteam/CloudContactDetailActivity;)Lcom/lzx/iteam/bean/CloudContact;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lzx/iteam/bean/CloudContact;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 163
    :pswitch_2
    iget v7, p1, Landroid/os/Message;->arg1:I

    if-nez v7, :cond_0

    .line 164
    iget v7, p1, Landroid/os/Message;->arg1:I

    if-nez v7, :cond_4

    .line 165
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lzx/iteam/bean/ChatGroup;

    .line 166
    .local v0, "chatGroup":Lcom/lzx/iteam/bean/ChatGroup;
    const-string v7, "1"

    iput-object v7, v0, Lcom/lzx/iteam/bean/ChatGroup;->type:Ljava/lang/String;

    .line 167
    const-string v7, "2"

    iput-object v7, v0, Lcom/lzx/iteam/bean/ChatGroup;->memberCount:Ljava/lang/String;

    .line 168
    iget-object v7, p0, Lcom/lzx/iteam/CloudContactDetailActivity$1;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;
    invoke-static {v7}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$1(Lcom/lzx/iteam/CloudContactDetailActivity;)Lcom/lzx/iteam/provider/CloudDBOperation;

    move-result-object v7

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ChatGroup;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/lzx/iteam/provider/CloudDBOperation;->getChatGroupCount(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_3

    .line 169
    iget-object v7, p0, Lcom/lzx/iteam/CloudContactDetailActivity$1;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;
    invoke-static {v7}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$1(Lcom/lzx/iteam/CloudContactDetailActivity;)Lcom/lzx/iteam/provider/CloudDBOperation;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/lzx/iteam/provider/CloudDBOperation;->insertChatGroup(Lcom/lzx/iteam/bean/ChatGroup;)J

    .line 171
    :cond_3
    new-instance v2, Landroid/content/Intent;

    iget-object v7, p0, Lcom/lzx/iteam/CloudContactDetailActivity$1;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    const-class v8, Lcom/lzx/iteam/ChatActivity;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    .local v2, "intent":Landroid/content/Intent;
    const-string v7, "chat_group_id"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ChatGroup;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const-string v7, "chat_group_name"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ChatGroup;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string v7, "chat_count"

    const-string v8, "2"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const-string v7, "userType"

    const-string v8, "2"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const-string v7, "creatorName"

    const-string v8, ""

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const-string v7, "isSingle"

    const-string v8, "1"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    iget-object v7, p0, Lcom/lzx/iteam/CloudContactDetailActivity$1;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    invoke-virtual {v7, v2}, Lcom/lzx/iteam/CloudContactDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 179
    iget-object v7, p0, Lcom/lzx/iteam/CloudContactDetailActivity$1;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    invoke-virtual {v7}, Lcom/lzx/iteam/CloudContactDetailActivity;->finish()V

    goto/16 :goto_0

    .line 182
    .end local v0    # "chatGroup":Lcom/lzx/iteam/bean/ChatGroup;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v7, p0, Lcom/lzx/iteam/CloudContactDetailActivity$1;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    const-string v8, "\u521b\u5efa\u5c0f\u7ec4\u5931\u8d25"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 187
    :pswitch_3
    iget v7, p1, Landroid/os/Message;->arg1:I

    if-nez v7, :cond_0

    .line 188
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/util/Map;

    .line 189
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v8, p0, Lcom/lzx/iteam/CloudContactDetailActivity$1;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    const-string v7, "access"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v8, v7}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$8(Lcom/lzx/iteam/CloudContactDetailActivity;I)V

    .line 190
    iget-object v8, p0, Lcom/lzx/iteam/CloudContactDetailActivity$1;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    const-string v7, "shield"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v8, v7}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$9(Lcom/lzx/iteam/CloudContactDetailActivity;I)V

    .line 191
    iget-object v7, p0, Lcom/lzx/iteam/CloudContactDetailActivity$1;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    # invokes: Lcom/lzx/iteam/CloudContactDetailActivity;->setAuthIcon()V
    invoke-static {v7}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$10(Lcom/lzx/iteam/CloudContactDetailActivity;)V

    goto/16 :goto_0

    .line 195
    .end local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :pswitch_4
    iget v7, p1, Landroid/os/Message;->arg1:I

    if-nez v7, :cond_0

    .line 196
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/util/Map;

    .line 197
    .restart local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v8, p0, Lcom/lzx/iteam/CloudContactDetailActivity$1;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    const-string v7, "set_type"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v8, v7}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$8(Lcom/lzx/iteam/CloudContactDetailActivity;I)V

    .line 198
    iget-object v7, p0, Lcom/lzx/iteam/CloudContactDetailActivity$1;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    # invokes: Lcom/lzx/iteam/CloudContactDetailActivity;->setAuthIcon()V
    invoke-static {v7}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$10(Lcom/lzx/iteam/CloudContactDetailActivity;)V

    .line 199
    iget-object v7, p0, Lcom/lzx/iteam/CloudContactDetailActivity$1;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    invoke-virtual {v7}, Lcom/lzx/iteam/CloudContactDetailActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 200
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f0300c6

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 201
    .local v3, "layout":Landroid/view/View;
    new-instance v6, Landroid/widget/Toast;

    iget-object v7, p0, Lcom/lzx/iteam/CloudContactDetailActivity$1;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    invoke-virtual {v7}, Lcom/lzx/iteam/CloudContactDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 202
    .local v6, "toast":Landroid/widget/Toast;
    const/16 v7, 0x11

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/widget/Toast;->setGravity(III)V

    .line 203
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/Toast;->setDuration(I)V

    .line 204
    invoke-virtual {v6, v3}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 205
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 209
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "layout":Landroid/view/View;
    .end local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v6    # "toast":Landroid/widget/Toast;
    :pswitch_5
    iget v7, p1, Landroid/os/Message;->arg1:I

    if-nez v7, :cond_0

    .line 210
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/util/Map;

    .line 211
    .restart local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v8, p0, Lcom/lzx/iteam/CloudContactDetailActivity$1;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    const-string v7, "set_type"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v8, v7}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$9(Lcom/lzx/iteam/CloudContactDetailActivity;I)V

    .line 212
    iget-object v7, p0, Lcom/lzx/iteam/CloudContactDetailActivity$1;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    # invokes: Lcom/lzx/iteam/CloudContactDetailActivity;->setAuthIcon()V
    invoke-static {v7}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$10(Lcom/lzx/iteam/CloudContactDetailActivity;)V

    .line 213
    iget-object v7, p0, Lcom/lzx/iteam/CloudContactDetailActivity$1;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    iget-object v8, p0, Lcom/lzx/iteam/CloudContactDetailActivity$1;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    iget-object v9, p0, Lcom/lzx/iteam/CloudContactDetailActivity$1;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$11(Lcom/lzx/iteam/CloudContactDetailActivity;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x2716

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    # invokes: Lcom/lzx/iteam/CloudContactDetailActivity;->getTalkPreView(Landroid/content/Context;Landroid/os/Message;)V
    invoke-static {v7, v8, v9}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$12(Lcom/lzx/iteam/CloudContactDetailActivity;Landroid/content/Context;Landroid/os/Message;)V

    .line 214
    iget-object v7, p0, Lcom/lzx/iteam/CloudContactDetailActivity$1;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    invoke-virtual {v7}, Lcom/lzx/iteam/CloudContactDetailActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 215
    .restart local v1    # "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f0300c6

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 216
    .restart local v3    # "layout":Landroid/view/View;
    new-instance v6, Landroid/widget/Toast;

    iget-object v7, p0, Lcom/lzx/iteam/CloudContactDetailActivity$1;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    invoke-virtual {v7}, Lcom/lzx/iteam/CloudContactDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 217
    .restart local v6    # "toast":Landroid/widget/Toast;
    const/16 v7, 0x11

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/widget/Toast;->setGravity(III)V

    .line 218
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/Toast;->setDuration(I)V

    .line 219
    invoke-virtual {v6, v3}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 220
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 225
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "layout":Landroid/view/View;
    .end local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v6    # "toast":Landroid/widget/Toast;
    :pswitch_6
    iget v7, p1, Landroid/os/Message;->arg1:I

    if-nez v7, :cond_0

    .line 226
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    .line 227
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 228
    iget-object v7, p0, Lcom/lzx/iteam/CloudContactDetailActivity$1;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity;->mLlTalkImage:Landroid/widget/LinearLayout;
    invoke-static {v7}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$13(Lcom/lzx/iteam/CloudContactDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 229
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    packed-switch v7, :pswitch_data_1

    goto/16 :goto_0

    .line 237
    :goto_1
    :pswitch_7
    iget-object v7, p0, Lcom/lzx/iteam/CloudContactDetailActivity$1;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;
    invoke-static {v7}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$14(Lcom/lzx/iteam/CloudContactDetailActivity;)Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v8

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v9, p0, Lcom/lzx/iteam/CloudContactDetailActivity$1;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity;->mIvTalkImage1:Landroid/widget/ImageView;
    invoke-static {v9}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$18(Lcom/lzx/iteam/CloudContactDetailActivity;)Landroid/widget/ImageView;

    move-result-object v9

    sget-object v10, Lcom/lzx/iteam/util/ImageLoaderInterface;->optionEventImage:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v8, v7, v9, v10}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto/16 :goto_0

    .line 231
    :pswitch_8
    iget-object v7, p0, Lcom/lzx/iteam/CloudContactDetailActivity$1;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;
    invoke-static {v7}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$14(Lcom/lzx/iteam/CloudContactDetailActivity;)Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v8

    const/4 v7, 0x3

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v9, p0, Lcom/lzx/iteam/CloudContactDetailActivity$1;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity;->mIvTalkImage4:Landroid/widget/ImageView;
    invoke-static {v9}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$15(Lcom/lzx/iteam/CloudContactDetailActivity;)Landroid/widget/ImageView;

    move-result-object v9

    sget-object v10, Lcom/lzx/iteam/util/ImageLoaderInterface;->optionEventImage:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v8, v7, v9, v10}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 233
    :pswitch_9
    iget-object v7, p0, Lcom/lzx/iteam/CloudContactDetailActivity$1;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;
    invoke-static {v7}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$14(Lcom/lzx/iteam/CloudContactDetailActivity;)Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v8

    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v9, p0, Lcom/lzx/iteam/CloudContactDetailActivity$1;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity;->mIvTalkImage3:Landroid/widget/ImageView;
    invoke-static {v9}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$16(Lcom/lzx/iteam/CloudContactDetailActivity;)Landroid/widget/ImageView;

    move-result-object v9

    sget-object v10, Lcom/lzx/iteam/util/ImageLoaderInterface;->optionEventImage:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v8, v7, v9, v10}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 235
    :pswitch_a
    iget-object v7, p0, Lcom/lzx/iteam/CloudContactDetailActivity$1;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;
    invoke-static {v7}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$14(Lcom/lzx/iteam/CloudContactDetailActivity;)Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v8

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v9, p0, Lcom/lzx/iteam/CloudContactDetailActivity$1;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity;->mIvTalkImage2:Landroid/widget/ImageView;
    invoke-static {v9}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$17(Lcom/lzx/iteam/CloudContactDetailActivity;)Landroid/widget/ImageView;

    move-result-object v9

    sget-object v10, Lcom/lzx/iteam/util/ImageLoaderInterface;->optionEventImage:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v8, v7, v9, v10}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto :goto_1

    .line 243
    :cond_5
    iget-object v7, p0, Lcom/lzx/iteam/CloudContactDetailActivity$1;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity;->mLlTalkImage:Landroid/widget/LinearLayout;
    invoke-static {v7}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$13(Lcom/lzx/iteam/CloudContactDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 229
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method
