.class Lcom/lzx/iteam/TreeFrag$1;
.super Landroid/os/Handler;
.source "TreeFrag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/TreeFrag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/TreeFrag;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/TreeFrag;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/TreeFrag$1;->this$0:Lcom/lzx/iteam/TreeFrag;

    .line 199
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v3, 0x7f080042

    const/16 v1, 0x1f41

    const/4 v2, 0x1

    .line 201
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 273
    :goto_0
    return-void

    .line 203
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/lzx/iteam/TreeFrag$1;->this$0:Lcom/lzx/iteam/TreeFrag;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/lzx/iteam/TreeFrag;->access$0(Lcom/lzx/iteam/TreeFrag;Ljava/util/ArrayList;)V

    .line 205
    iget-object v0, p0, Lcom/lzx/iteam/TreeFrag$1;->this$0:Lcom/lzx/iteam/TreeFrag;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/lzx/iteam/TreeFrag;->access$1(Lcom/lzx/iteam/TreeFrag;Ljava/util/ArrayList;)V

    .line 206
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/util/Map;

    .line 207
    .local v10, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/treeview/Element;>;>;"
    iget-object v1, p0, Lcom/lzx/iteam/TreeFrag$1;->this$0:Lcom/lzx/iteam/TreeFrag;

    const-string v0, "top"

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, v1, Lcom/lzx/iteam/TreeFrag;->fixelements:Ljava/util/ArrayList;

    .line 209
    iget-object v0, p0, Lcom/lzx/iteam/TreeFrag$1;->this$0:Lcom/lzx/iteam/TreeFrag;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/lzx/iteam/TreeFrag;->access$0(Lcom/lzx/iteam/TreeFrag;Ljava/util/ArrayList;)V

    .line 210
    iget-object v0, p0, Lcom/lzx/iteam/TreeFrag$1;->this$0:Lcom/lzx/iteam/TreeFrag;

    iget-object v0, v0, Lcom/lzx/iteam/TreeFrag;->fixelements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/lzx/iteam/TreeFrag$1;->this$0:Lcom/lzx/iteam/TreeFrag;

    const-string v0, "all"

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/lzx/iteam/TreeFrag;->access$1(Lcom/lzx/iteam/TreeFrag;Ljava/util/ArrayList;)V

    .line 222
    iget-object v0, p0, Lcom/lzx/iteam/TreeFrag$1;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->elementsData:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/TreeFrag;->access$3(Lcom/lzx/iteam/TreeFrag;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 223
    iget-object v12, p0, Lcom/lzx/iteam/TreeFrag$1;->this$0:Lcom/lzx/iteam/TreeFrag;

    new-instance v0, Lcom/lzx/iteam/treeview/TreeViewAdapter;

    .line 224
    iget-object v1, p0, Lcom/lzx/iteam/TreeFrag$1;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->inflater:Landroid/view/LayoutInflater;
    invoke-static {v1}, Lcom/lzx/iteam/TreeFrag;->access$4(Lcom/lzx/iteam/TreeFrag;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/TreeFrag$1;->this$0:Lcom/lzx/iteam/TreeFrag;

    iget-object v3, p0, Lcom/lzx/iteam/TreeFrag$1;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->mGid:Ljava/lang/String;
    invoke-static {v3}, Lcom/lzx/iteam/TreeFrag;->access$5(Lcom/lzx/iteam/TreeFrag;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/lzx/iteam/TreeFrag$1;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->mGroupName:Ljava/lang/String;
    invoke-static {v4}, Lcom/lzx/iteam/TreeFrag;->access$6(Lcom/lzx/iteam/TreeFrag;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/lzx/iteam/TreeFrag$1;->this$0:Lcom/lzx/iteam/TreeFrag;

    iget-boolean v6, v6, Lcom/lzx/iteam/TreeFrag;->isBatch:Z

    iget-object v7, p0, Lcom/lzx/iteam/TreeFrag$1;->this$0:Lcom/lzx/iteam/TreeFrag;

    iget v7, v7, Lcom/lzx/iteam/TreeFrag;->mCount:I

    iget-object v8, p0, Lcom/lzx/iteam/TreeFrag$1;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->mContactId:Ljava/lang/String;
    invoke-static {v8}, Lcom/lzx/iteam/TreeFrag;->access$7(Lcom/lzx/iteam/TreeFrag;)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/lzx/iteam/treeview/TreeViewAdapter;-><init>(Landroid/view/LayoutInflater;Lcom/lzx/iteam/TreeFrag;ILjava/lang/String;Ljava/util/ArrayList;ZILjava/lang/String;)V

    .line 223
    invoke-static {v12, v0}, Lcom/lzx/iteam/TreeFrag;->access$8(Lcom/lzx/iteam/TreeFrag;Lcom/lzx/iteam/treeview/TreeViewAdapter;)V

    .line 225
    iget-object v0, p0, Lcom/lzx/iteam/TreeFrag$1;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/TreeFrag;->access$9(Lcom/lzx/iteam/TreeFrag;)Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/TreeFrag$1;->this$0:Lcom/lzx/iteam/TreeFrag;

    iget-object v1, v1, Lcom/lzx/iteam/TreeFrag;->root:Lcom/lzx/iteam/treeview/Element;

    iput-object v1, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->root:Lcom/lzx/iteam/treeview/Element;

    .line 226
    iget-object v0, p0, Lcom/lzx/iteam/TreeFrag$1;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/TreeFrag;->access$9(Lcom/lzx/iteam/TreeFrag;)Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->selectId:I

    .line 227
    iget-object v0, p0, Lcom/lzx/iteam/TreeFrag$1;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/TreeFrag;->access$9(Lcom/lzx/iteam/TreeFrag;)Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/TreeFrag$1;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->elements:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lzx/iteam/TreeFrag;->access$2(Lcom/lzx/iteam/TreeFrag;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/TreeFrag$1;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->elementsData:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lzx/iteam/TreeFrag;->access$3(Lcom/lzx/iteam/TreeFrag;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->initData(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 229
    iget-object v0, p0, Lcom/lzx/iteam/TreeFrag$1;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->treeview:Lcom/lzx/iteam/widget/PullListView;
    invoke-static {v0}, Lcom/lzx/iteam/TreeFrag;->access$10(Lcom/lzx/iteam/TreeFrag;)Lcom/lzx/iteam/widget/PullListView;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/TreeFrag$1;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;
    invoke-static {v1}, Lcom/lzx/iteam/TreeFrag;->access$9(Lcom/lzx/iteam/TreeFrag;)Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/PullListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 230
    iget-object v0, p0, Lcom/lzx/iteam/TreeFrag$1;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->treeview:Lcom/lzx/iteam/widget/PullListView;
    invoke-static {v0}, Lcom/lzx/iteam/TreeFrag;->access$10(Lcom/lzx/iteam/TreeFrag;)Lcom/lzx/iteam/widget/PullListView;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/TreeFrag$1;->this$0:Lcom/lzx/iteam/TreeFrag;

    iget v1, v1, Lcom/lzx/iteam/TreeFrag;->currentPosition:I

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/PullListView;->setSelection(I)V

    .line 232
    iget-object v0, p0, Lcom/lzx/iteam/TreeFrag$1;->this$0:Lcom/lzx/iteam/TreeFrag;

    invoke-virtual {v0}, Lcom/lzx/iteam/TreeFrag;->getallcontact()V

    .line 234
    iget-object v0, p0, Lcom/lzx/iteam/TreeFrag$1;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->treeview:Lcom/lzx/iteam/widget/PullListView;
    invoke-static {v0}, Lcom/lzx/iteam/TreeFrag;->access$10(Lcom/lzx/iteam/TreeFrag;)Lcom/lzx/iteam/widget/PullListView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6700\u8fd1\u66f4\u65b0\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/lzx/iteam/util/DateUtil;->getUpDateTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/PullListView;->onRefreshComplete(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 210
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lzx/iteam/treeview/Element;

    .line 212
    .local v9, "it":Lcom/lzx/iteam/treeview/Element;
    iget-object v1, p0, Lcom/lzx/iteam/TreeFrag$1;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->elements:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lzx/iteam/TreeFrag;->access$2(Lcom/lzx/iteam/TreeFrag;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 237
    .end local v9    # "it":Lcom/lzx/iteam/treeview/Element;
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/TreeFrag$1;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->line:Landroid/view/View;
    invoke-static {v0}, Lcom/lzx/iteam/TreeFrag;->access$11(Lcom/lzx/iteam/TreeFrag;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 242
    .end local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/treeview/Element;>;>;"
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_3

    .line 243
    iget-object v0, p0, Lcom/lzx/iteam/TreeFrag$1;->this$0:Lcom/lzx/iteam/TreeFrag;

    invoke-virtual {v0}, Lcom/lzx/iteam/TreeFrag;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 244
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 246
    :cond_3
    iget-object v0, p0, Lcom/lzx/iteam/TreeFrag$1;->this$0:Lcom/lzx/iteam/TreeFrag;

    invoke-virtual {v0}, Lcom/lzx/iteam/TreeFrag;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 253
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_4

    .line 254
    iget-object v0, p0, Lcom/lzx/iteam/TreeFrag$1;->this$0:Lcom/lzx/iteam/TreeFrag;

    invoke-virtual {v0}, Lcom/lzx/iteam/TreeFrag;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u6dfb\u52a0\u7ec4\u6210\u5458\u6210\u529f"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 255
    sget-object v0, Lcom/lzx/iteam/TreeFrag;->mHandler1:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v11

    .line 256
    .local v11, "msg1":Landroid/os/Message;
    const/16 v0, 0x14

    iput v0, v11, Landroid/os/Message;->what:I

    .line 257
    sget-object v0, Lcom/lzx/iteam/TreeFrag;->mHandler1:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 259
    .end local v11    # "msg1":Landroid/os/Message;
    :cond_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_5

    .line 260
    iget-object v0, p0, Lcom/lzx/iteam/TreeFrag$1;->this$0:Lcom/lzx/iteam/TreeFrag;

    invoke-virtual {v0}, Lcom/lzx/iteam/TreeFrag;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 261
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 263
    :cond_5
    iget-object v0, p0, Lcom/lzx/iteam/TreeFrag$1;->this$0:Lcom/lzx/iteam/TreeFrag;

    invoke-virtual {v0}, Lcom/lzx/iteam/TreeFrag;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
