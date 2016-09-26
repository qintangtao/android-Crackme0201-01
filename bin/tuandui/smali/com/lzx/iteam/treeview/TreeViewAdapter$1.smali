.class Lcom/lzx/iteam/treeview/TreeViewAdapter$1;
.super Landroid/os/Handler;
.source "TreeViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/treeview/TreeViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/treeview/TreeViewAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    .line 82
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 34
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 84
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 532
    :goto_0
    return-void

    .line 86
    :pswitch_0
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    if-nez v7, :cond_0

    .line 87
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    # getter for: Lcom/lzx/iteam/treeview/TreeViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->access$0(Lcom/lzx/iteam/treeview/TreeViewAdapter;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "\u91cd\u547d\u540d\u6210\u529f"

    const/16 v31, 0x1

    move/from16 v0, v31

    invoke-static {v7, v8, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 89
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    # getter for: Lcom/lzx/iteam/treeview/TreeViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->access$0(Lcom/lzx/iteam/treeview/TreeViewAdapter;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "structure"

    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v7, v8, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v26

    .line 90
    .local v26, "sp":Landroid/content/SharedPreferences;
    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    .line 91
    .local v13, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    iget v8, v8, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mGroupId:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "tag"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v13, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 92
    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 101
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    .line 102
    .local v9, "bundle":Landroid/os/Bundle;
    const-string v7, "name"

    invoke-virtual {v9, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    iget v8, v8, Lcom/lzx/iteam/treeview/TreeViewAdapter;->currentPosition:I

    invoke-virtual {v7, v8}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/treeview/Element;

    .line 104
    .local v2, "element":Lcom/lzx/iteam/treeview/Element;
    invoke-virtual {v2, v3}, Lcom/lzx/iteam/treeview/Element;->setContentText(Ljava/lang/String;)V

    .line 106
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    invoke-virtual {v7}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->notifyDataSetChanged()V

    .line 110
    new-instance v8, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->currentPosition:I

    move/from16 v31, v0

    move/from16 v0, v31

    invoke-virtual {v7, v0}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lzx/iteam/treeview/Element;

    invoke-virtual {v7}, Lcom/lzx/iteam/treeview/Element;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 111
    .local v29, "tagId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    iget v8, v8, Lcom/lzx/iteam/treeview/TreeViewAdapter;->currentPosition:I

    invoke-virtual {v7, v8}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lzx/iteam/treeview/Element;

    invoke-virtual {v7}, Lcom/lzx/iteam/treeview/Element;->getContentText()Ljava/lang/String;

    move-result-object v30

    .line 112
    .local v30, "tagName":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->currentPosition:I

    move/from16 v31, v0

    move/from16 v0, v31

    invoke-virtual {v7, v0}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lzx/iteam/treeview/Element;

    invoke-virtual {v7}, Lcom/lzx/iteam/treeview/Element;->getContactCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 114
    .local v28, "tagCount":Ljava/lang/String;
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    .line 115
    .local v19, "intent":Landroid/content/Intent;
    const-string v7, "tag_id"

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string v7, "intent_tag_name"

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const-string v7, "tag_count"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string v7, "group_id"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    iget v8, v8, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mGroupId:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const-string v7, "group_name"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    iget-object v8, v8, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mGroupName:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-string v7, "currentPosition"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    iget v8, v8, Lcom/lzx/iteam/treeview/TreeViewAdapter;->currentPosition:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 124
    const-string v7, "structure_tag_click"

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    sget-object v7, Lcom/lzx/iteam/CloudDialerActivity;->instance:Lcom/lzx/iteam/CloudDialerActivity;

    const/4 v8, -0x1

    move-object/from16 v0, v19

    invoke-virtual {v7, v0, v8}, Lcom/lzx/iteam/CloudDialerActivity;->ListRefresh(Landroid/content/Intent;I)V

    .line 131
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->currentPosition:I

    move/from16 v31, v0

    move/from16 v0, v31

    invoke-virtual {v7, v0}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lzx/iteam/treeview/Element;

    invoke-virtual {v7}, Lcom/lzx/iteam/treeview/Element;->getId()I

    move-result v7

    iput v7, v8, Lcom/lzx/iteam/treeview/TreeViewAdapter;->selectId:I

    .line 133
    sput-object v19, Lcom/lzx/iteam/CloudDialerActivity;->recordintent:Landroid/content/Intent;

    goto/16 :goto_0

    .line 141
    .end local v2    # "element":Lcom/lzx/iteam/treeview/Element;
    .end local v3    # "name":Ljava/lang/String;
    .end local v9    # "bundle":Landroid/os/Bundle;
    .end local v13    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v19    # "intent":Landroid/content/Intent;
    .end local v26    # "sp":Landroid/content/SharedPreferences;
    .end local v28    # "tagCount":Ljava/lang/String;
    .end local v29    # "tagId":Ljava/lang/String;
    .end local v30    # "tagName":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    const/16 v8, 0x1f41

    if-ne v7, v8, :cond_1

    .line 142
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    # getter for: Lcom/lzx/iteam/treeview/TreeViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->access$0(Lcom/lzx/iteam/treeview/TreeViewAdapter;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f080042

    .line 143
    const/16 v31, 0x1

    .line 142
    move/from16 v0, v31

    invoke-static {v7, v8, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    .line 143
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 145
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    # getter for: Lcom/lzx/iteam/treeview/TreeViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->access$0(Lcom/lzx/iteam/treeview/TreeViewAdapter;)Landroid/content/Context;

    move-result-object v8

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 146
    const/16 v31, 0x1

    .line 145
    move/from16 v0, v31

    invoke-static {v8, v7, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    .line 146
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 152
    :pswitch_1
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    if-nez v7, :cond_8

    .line 153
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    # getter for: Lcom/lzx/iteam/treeview/TreeViewAdapter;->isFirstItem:Z
    invoke-static {v7}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->access$1(Lcom/lzx/iteam/treeview/TreeViewAdapter;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 154
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    # getter for: Lcom/lzx/iteam/treeview/TreeViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->access$0(Lcom/lzx/iteam/treeview/TreeViewAdapter;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "\u6dfb\u52a0\u7ec4\u6210\u529f"

    const/16 v31, 0x1

    move/from16 v0, v31

    invoke-static {v7, v8, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 159
    :goto_1
    sget-object v7, Lcom/lzx/iteam/CloudDialerActivity;->instance:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v7, v7, Lcom/lzx/iteam/CloudDialerActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v8, "structure_edit_v1"

    const/16 v31, 0x1

    move/from16 v0, v31

    invoke-virtual {v7, v8, v0}, Lcom/lzx/iteam/util/PreferenceUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .line 160
    .local v20, "isFirst":Z
    if-eqz v20, :cond_4

    .line 161
    sget-object v7, Lcom/lzx/iteam/CloudDialerActivity;->instance:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v7, v7, Lcom/lzx/iteam/CloudDialerActivity;->mHelpStructureEdit:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 168
    :goto_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    # getter for: Lcom/lzx/iteam/treeview/TreeViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->access$0(Lcom/lzx/iteam/treeview/TreeViewAdapter;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "structure"

    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v7, v8, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v26

    .line 169
    .restart local v26    # "sp":Landroid/content/SharedPreferences;
    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    .line 170
    .restart local v13    # "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    iget v8, v8, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mGroupId:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "tag"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v13, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 171
    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 173
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lorg/json/JSONObject;

    .line 177
    .local v23, "object":Lorg/json/JSONObject;
    :try_start_0
    const-string v7, "data"

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "data"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 178
    .local v12, "data":Lorg/json/JSONObject;
    const-string v7, "id"

    invoke-virtual {v12, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 179
    .local v5, "id":I
    const-string v7, "pid"

    invoke-virtual {v12, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 180
    .local v6, "pid":I
    const-string v7, "name"

    invoke-virtual {v12, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 181
    .restart local v3    # "name":Ljava/lang/String;
    const-string v7, "path"

    invoke-virtual {v12, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 182
    const-string v7, "child_count"

    invoke-virtual {v12, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 183
    .local v10, "child_count":J
    const-string v7, "group_id"

    invoke-virtual {v12, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 185
    const/4 v4, 0x1

    .line 186
    .local v4, "level":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    # getter for: Lcom/lzx/iteam/treeview/TreeViewAdapter;->isFirstItem:Z
    invoke-static {v7}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->access$1(Lcom/lzx/iteam/treeview/TreeViewAdapter;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 188
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    iget v8, v8, Lcom/lzx/iteam/treeview/TreeViewAdapter;->currentPosition:I

    invoke-virtual {v7, v8}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/lzx/iteam/treeview/Element;

    .line 189
    .local v24, "parentelement":Lcom/lzx/iteam/treeview/Element;
    const/4 v7, 0x1

    move-object/from16 v0, v24

    iput-boolean v7, v0, Lcom/lzx/iteam/treeview/Element;->hasChildren:Z

    .line 191
    move-object/from16 v0, v24

    iget-boolean v7, v0, Lcom/lzx/iteam/treeview/Element;->isExpanded:Z

    if-eqz v7, :cond_2

    .line 193
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    iget v8, v8, Lcom/lzx/iteam/treeview/TreeViewAdapter;->currentPosition:I

    invoke-virtual {v7, v8}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->setTreeStyle(I)V

    .line 195
    :cond_2
    const/4 v7, 0x1

    move-object/from16 v0, v24

    iput-boolean v7, v0, Lcom/lzx/iteam/treeview/Element;->hasChildren:Z

    .line 196
    move-object/from16 v0, v24

    iget v7, v0, Lcom/lzx/iteam/treeview/Element;->level:I

    add-int/lit8 v4, v7, 0x1

    .line 204
    .end local v24    # "parentelement":Lcom/lzx/iteam/treeview/Element;
    :goto_3
    new-instance v2, Lcom/lzx/iteam/treeview/Element;

    const-wide/16 v32, 0x0

    cmp-long v7, v10, v32

    if-lez v7, :cond_6

    const/4 v7, 0x1

    :goto_4
    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/lzx/iteam/treeview/Element;-><init>(Ljava/lang/String;IIIZZ)V

    .line 205
    .restart local v2    # "element":Lcom/lzx/iteam/treeview/Element;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    # getter for: Lcom/lzx/iteam/treeview/TreeViewAdapter;->elementsData:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->access$2(Lcom/lzx/iteam/treeview/TreeViewAdapter;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    iget-object v7, v7, Lcom/lzx/iteam/treeview/TreeViewAdapter;->treeflag:Lcom/lzx/iteam/TreeFrag;

    iget-object v7, v7, Lcom/lzx/iteam/TreeFrag;->fixelements:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    # getter for: Lcom/lzx/iteam/treeview/TreeViewAdapter;->isFirstItem:Z
    invoke-static {v7}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->access$1(Lcom/lzx/iteam/treeview/TreeViewAdapter;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 210
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    iget v8, v8, Lcom/lzx/iteam/treeview/TreeViewAdapter;->currentPosition:I

    invoke-virtual {v7, v8}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->setTreeStyleAndFocus(I)V

    .line 248
    :goto_5
    new-instance v8, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->currentPosition:I

    move/from16 v31, v0

    move/from16 v0, v31

    invoke-virtual {v7, v0}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lzx/iteam/treeview/Element;

    invoke-virtual {v7}, Lcom/lzx/iteam/treeview/Element;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 249
    .restart local v29    # "tagId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    iget v8, v8, Lcom/lzx/iteam/treeview/TreeViewAdapter;->currentPosition:I

    invoke-virtual {v7, v8}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lzx/iteam/treeview/Element;

    invoke-virtual {v7}, Lcom/lzx/iteam/treeview/Element;->getContentText()Ljava/lang/String;

    move-result-object v30

    .line 250
    .restart local v30    # "tagName":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->currentPosition:I

    move/from16 v31, v0

    move/from16 v0, v31

    invoke-virtual {v7, v0}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lzx/iteam/treeview/Element;

    invoke-virtual {v7}, Lcom/lzx/iteam/treeview/Element;->getContactCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 252
    .restart local v28    # "tagCount":Ljava/lang/String;
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    .line 253
    .restart local v19    # "intent":Landroid/content/Intent;
    const-string v7, "tag_id"

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    const-string v7, "intent_tag_name"

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    const-string v7, "tag_count"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    const-string v7, "group_id"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    iget v8, v8, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mGroupId:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const-string v7, "group_name"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    iget-object v8, v8, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mGroupName:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    const-string v7, "currentPosition"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    iget v8, v8, Lcom/lzx/iteam/treeview/TreeViewAdapter;->currentPosition:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 262
    const-string v7, "structure_tag_click"

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    sget-object v7, Lcom/lzx/iteam/CloudDialerActivity;->instance:Lcom/lzx/iteam/CloudDialerActivity;

    iput-object v2, v7, Lcom/lzx/iteam/CloudDialerActivity;->chooseelement:Lcom/lzx/iteam/treeview/Element;

    .line 265
    sget-object v7, Lcom/lzx/iteam/CloudDialerActivity;->instance:Lcom/lzx/iteam/CloudDialerActivity;

    const/4 v8, -0x1

    move-object/from16 v0, v19

    invoke-virtual {v7, v0, v8, v2}, Lcom/lzx/iteam/CloudDialerActivity;->ListRefresh(Landroid/content/Intent;ILcom/lzx/iteam/treeview/Element;)V

    .line 270
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->currentPosition:I

    move/from16 v31, v0

    move/from16 v0, v31

    invoke-virtual {v7, v0}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lzx/iteam/treeview/Element;

    invoke-virtual {v7}, Lcom/lzx/iteam/treeview/Element;->getId()I

    move-result v7

    iput v7, v8, Lcom/lzx/iteam/treeview/TreeViewAdapter;->selectId:I

    .line 272
    sput-object v19, Lcom/lzx/iteam/CloudDialerActivity;->recordintent:Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 297
    .end local v2    # "element":Lcom/lzx/iteam/treeview/Element;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "level":I
    .end local v5    # "id":I
    .end local v6    # "pid":I
    .end local v10    # "child_count":J
    .end local v12    # "data":Lorg/json/JSONObject;
    .end local v19    # "intent":Landroid/content/Intent;
    .end local v28    # "tagCount":Ljava/lang/String;
    .end local v29    # "tagId":Ljava/lang/String;
    .end local v30    # "tagName":Ljava/lang/String;
    :catch_0
    move-exception v7

    goto/16 :goto_0

    .line 156
    .end local v13    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v20    # "isFirst":Z
    .end local v23    # "object":Lorg/json/JSONObject;
    .end local v26    # "sp":Landroid/content/SharedPreferences;
    :cond_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    # getter for: Lcom/lzx/iteam/treeview/TreeViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->access$0(Lcom/lzx/iteam/treeview/TreeViewAdapter;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "\u6dfb\u52a0\u4e0b\u4e00\u7ea7\u7ec4\u6210\u529f"

    const/16 v31, 0x1

    move/from16 v0, v31

    invoke-static {v7, v8, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 163
    .restart local v20    # "isFirst":Z
    :cond_4
    sget-object v7, Lcom/lzx/iteam/CloudDialerActivity;->instance:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v7, v7, Lcom/lzx/iteam/CloudDialerActivity;->mHelpStructureEdit:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 200
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "level":I
    .restart local v5    # "id":I
    .restart local v6    # "pid":I
    .restart local v10    # "child_count":J
    .restart local v12    # "data":Lorg/json/JSONObject;
    .restart local v13    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v23    # "object":Lorg/json/JSONObject;
    .restart local v26    # "sp":Landroid/content/SharedPreferences;
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 204
    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 214
    .restart local v2    # "element":Lcom/lzx/iteam/treeview/Element;
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    iget-object v7, v7, Lcom/lzx/iteam/treeview/TreeViewAdapter;->elements:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    iget-object v8, v8, Lcom/lzx/iteam/treeview/TreeViewAdapter;->elements:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    iput v8, v7, Lcom/lzx/iteam/treeview/TreeViewAdapter;->currentPosition:I

    .line 217
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->currentPosition:I

    move/from16 v31, v0

    move/from16 v0, v31

    invoke-virtual {v7, v0}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lzx/iteam/treeview/Element;

    invoke-virtual {v7}, Lcom/lzx/iteam/treeview/Element;->getId()I

    move-result v7

    iput v7, v8, Lcom/lzx/iteam/treeview/TreeViewAdapter;->selectId:I

    .line 219
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    invoke-virtual {v7}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->notifyDataSetChanged()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    .line 303
    .end local v2    # "element":Lcom/lzx/iteam/treeview/Element;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "level":I
    .end local v5    # "id":I
    .end local v6    # "pid":I
    .end local v10    # "child_count":J
    .end local v12    # "data":Lorg/json/JSONObject;
    .end local v13    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v20    # "isFirst":Z
    .end local v23    # "object":Lorg/json/JSONObject;
    .end local v26    # "sp":Landroid/content/SharedPreferences;
    :cond_8
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    const/16 v8, 0x1f41

    if-ne v7, v8, :cond_9

    .line 304
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    # getter for: Lcom/lzx/iteam/treeview/TreeViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->access$0(Lcom/lzx/iteam/treeview/TreeViewAdapter;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f080042

    .line 305
    const/16 v31, 0x1

    .line 304
    move/from16 v0, v31

    invoke-static {v7, v8, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    .line 305
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 307
    :cond_9
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    # getter for: Lcom/lzx/iteam/treeview/TreeViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->access$0(Lcom/lzx/iteam/treeview/TreeViewAdapter;)Landroid/content/Context;

    move-result-object v8

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 308
    const/16 v31, 0x1

    .line 307
    move/from16 v0, v31

    invoke-static {v8, v7, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    .line 308
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 314
    :pswitch_2
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    if-nez v7, :cond_16

    .line 315
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    # getter for: Lcom/lzx/iteam/treeview/TreeViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->access$0(Lcom/lzx/iteam/treeview/TreeViewAdapter;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "\u5220\u9664\u7ec4\u6210\u529f"

    const/16 v31, 0x1

    move/from16 v0, v31

    invoke-static {v7, v8, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 317
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    # getter for: Lcom/lzx/iteam/treeview/TreeViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->access$0(Lcom/lzx/iteam/treeview/TreeViewAdapter;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "structure"

    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v7, v8, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v26

    .line 318
    .restart local v26    # "sp":Landroid/content/SharedPreferences;
    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    .line 319
    .restart local v13    # "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    iget v8, v8, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mGroupId:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "tag"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v13, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 320
    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 322
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    iget v8, v8, Lcom/lzx/iteam/treeview/TreeViewAdapter;->currentPosition:I

    invoke-virtual {v7, v8}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/treeview/Element;

    .line 323
    .restart local v2    # "element":Lcom/lzx/iteam/treeview/Element;
    iget-boolean v7, v2, Lcom/lzx/iteam/treeview/Element;->isExpanded:Z

    if-eqz v7, :cond_a

    .line 325
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    iget v8, v8, Lcom/lzx/iteam/treeview/TreeViewAdapter;->currentPosition:I

    invoke-virtual {v7, v8}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->setTreeStyle(I)V

    .line 329
    :cond_a
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    invoke-virtual {v7}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->getElements()Ljava/util/ArrayList;

    move-result-object v14

    .line 331
    .local v14, "elements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/treeview/Element;>;"
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    invoke-virtual {v7}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->getElementsData()Ljava/util/ArrayList;

    move-result-object v15

    .line 333
    .local v15, "elementsData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/treeview/Element;>;"
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 335
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_10

    .line 352
    :cond_c
    :goto_6
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    const/4 v8, -0x1

    iput v8, v7, Lcom/lzx/iteam/treeview/TreeViewAdapter;->selectId:I

    .line 353
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    const/4 v8, -0x1

    iput v8, v7, Lcom/lzx/iteam/treeview/TreeViewAdapter;->currentPosition:I

    .line 355
    const/16 v18, 0x1

    .local v18, "i":I
    :goto_7
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    move/from16 v0, v18

    if-lt v0, v7, :cond_12

    .line 367
    :goto_8
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    iget v7, v7, Lcom/lzx/iteam/treeview/TreeViewAdapter;->selectId:I

    if-nez v7, :cond_d

    .line 369
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    const/4 v8, -0x1

    iput v8, v7, Lcom/lzx/iteam/treeview/TreeViewAdapter;->selectId:I

    .line 373
    :cond_d
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    iget-object v7, v7, Lcom/lzx/iteam/treeview/TreeViewAdapter;->treeflag:Lcom/lzx/iteam/TreeFrag;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    iget v8, v8, Lcom/lzx/iteam/treeview/TreeViewAdapter;->currentPosition:I

    iput v8, v7, Lcom/lzx/iteam/TreeFrag;->currentPosition:I

    .line 375
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    iget v7, v7, Lcom/lzx/iteam/treeview/TreeViewAdapter;->currentPosition:I

    if-ltz v7, :cond_15

    .line 378
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    iget v8, v8, Lcom/lzx/iteam/treeview/TreeViewAdapter;->currentPosition:I

    invoke-virtual {v7, v8}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->setTreeStyle(I)V

    .line 380
    const/16 v16, 0x0

    .line 381
    .local v16, "find":Z
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_14

    .line 389
    :goto_9
    if-nez v16, :cond_f

    .line 391
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    iget v8, v8, Lcom/lzx/iteam/treeview/TreeViewAdapter;->currentPosition:I

    invoke-virtual {v7, v8}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/lzx/iteam/treeview/Element;

    .line 392
    .local v17, "findelement":Lcom/lzx/iteam/treeview/Element;
    const/4 v7, 0x0

    move-object/from16 v0, v17

    iput-boolean v7, v0, Lcom/lzx/iteam/treeview/Element;->hasChildren:Z

    .line 399
    .end local v17    # "findelement":Lcom/lzx/iteam/treeview/Element;
    :cond_f
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    invoke-virtual {v7}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->notifyDataSetChanged()V

    .line 401
    new-instance v8, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->currentPosition:I

    move/from16 v31, v0

    move/from16 v0, v31

    invoke-virtual {v7, v0}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lzx/iteam/treeview/Element;

    invoke-virtual {v7}, Lcom/lzx/iteam/treeview/Element;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 402
    .restart local v29    # "tagId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    iget v8, v8, Lcom/lzx/iteam/treeview/TreeViewAdapter;->currentPosition:I

    invoke-virtual {v7, v8}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lzx/iteam/treeview/Element;

    invoke-virtual {v7}, Lcom/lzx/iteam/treeview/Element;->getContentText()Ljava/lang/String;

    move-result-object v30

    .line 403
    .restart local v30    # "tagName":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->currentPosition:I

    move/from16 v31, v0

    move/from16 v0, v31

    invoke-virtual {v7, v0}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lzx/iteam/treeview/Element;

    invoke-virtual {v7}, Lcom/lzx/iteam/treeview/Element;->getContactCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 405
    .restart local v28    # "tagCount":Ljava/lang/String;
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    .line 406
    .restart local v19    # "intent":Landroid/content/Intent;
    const-string v7, "tag_id"

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    const-string v7, "intent_tag_name"

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    const-string v7, "tag_count"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    const-string v7, "group_id"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    iget v8, v8, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mGroupId:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    const-string v7, "group_name"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    iget-object v8, v8, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mGroupName:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    const-string v7, "currentPosition"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    iget v8, v8, Lcom/lzx/iteam/treeview/TreeViewAdapter;->currentPosition:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 415
    const-string v7, "structure_tag_click"

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    sget-object v7, Lcom/lzx/iteam/CloudDialerActivity;->instance:Lcom/lzx/iteam/CloudDialerActivity;

    const/4 v8, -0x1

    move-object/from16 v0, v19

    invoke-virtual {v7, v0, v8}, Lcom/lzx/iteam/CloudDialerActivity;->ListRefresh(Landroid/content/Intent;I)V

    .line 422
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->currentPosition:I

    move/from16 v31, v0

    move/from16 v0, v31

    invoke-virtual {v7, v0}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lzx/iteam/treeview/Element;

    invoke-virtual {v7}, Lcom/lzx/iteam/treeview/Element;->getId()I

    move-result v7

    iput v7, v8, Lcom/lzx/iteam/treeview/TreeViewAdapter;->selectId:I

    .line 424
    sput-object v19, Lcom/lzx/iteam/CloudDialerActivity;->recordintent:Landroid/content/Intent;

    goto/16 :goto_0

    .line 335
    .end local v16    # "find":Z
    .end local v18    # "i":I
    .end local v19    # "intent":Landroid/content/Intent;
    .end local v28    # "tagCount":Ljava/lang/String;
    .end local v29    # "tagId":Ljava/lang/String;
    .end local v30    # "tagName":Ljava/lang/String;
    :cond_10
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/lzx/iteam/treeview/Element;

    .line 337
    .local v27, "t":Lcom/lzx/iteam/treeview/Element;
    move-object/from16 v0, v27

    iget v8, v0, Lcom/lzx/iteam/treeview/Element;->id:I

    iget v0, v2, Lcom/lzx/iteam/treeview/Element;->id:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ne v8, v0, :cond_b

    .line 339
    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 340
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    iget-object v7, v7, Lcom/lzx/iteam/treeview/TreeViewAdapter;->treeflag:Lcom/lzx/iteam/TreeFrag;

    iget-object v7, v7, Lcom/lzx/iteam/TreeFrag;->fixelements:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_11
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/lzx/iteam/treeview/Element;

    .line 342
    .local v25, "s":Lcom/lzx/iteam/treeview/Element;
    move-object/from16 v0, v25

    iget v8, v0, Lcom/lzx/iteam/treeview/Element;->id:I

    move-object/from16 v0, v27

    iget v0, v0, Lcom/lzx/iteam/treeview/Element;->id:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ne v8, v0, :cond_11

    .line 344
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    iget-object v7, v7, Lcom/lzx/iteam/treeview/TreeViewAdapter;->treeflag:Lcom/lzx/iteam/TreeFrag;

    iget-object v7, v7, Lcom/lzx/iteam/TreeFrag;->fixelements:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 357
    .end local v25    # "s":Lcom/lzx/iteam/treeview/Element;
    .end local v27    # "t":Lcom/lzx/iteam/treeview/Element;
    .restart local v18    # "i":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/lzx/iteam/treeview/Element;

    .line 358
    .local v21, "item":Lcom/lzx/iteam/treeview/Element;
    iget v7, v2, Lcom/lzx/iteam/treeview/Element;->parendId:I

    move-object/from16 v0, v21

    iget v8, v0, Lcom/lzx/iteam/treeview/Element;->id:I

    if-ne v7, v8, :cond_13

    .line 361
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move/from16 v0, v18

    iput v0, v7, Lcom/lzx/iteam/treeview/TreeViewAdapter;->currentPosition:I

    .line 362
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    invoke-virtual/range {v21 .. v21}, Lcom/lzx/iteam/treeview/Element;->getId()I

    move-result v8

    iput v8, v7, Lcom/lzx/iteam/treeview/TreeViewAdapter;->selectId:I

    goto/16 :goto_8

    .line 355
    :cond_13
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_7

    .line 381
    .end local v21    # "item":Lcom/lzx/iteam/treeview/Element;
    .restart local v16    # "find":Z
    :cond_14
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/lzx/iteam/treeview/Element;

    .line 383
    .restart local v21    # "item":Lcom/lzx/iteam/treeview/Element;
    move-object/from16 v0, v21

    iget v8, v0, Lcom/lzx/iteam/treeview/Element;->parendId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->selectId:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ne v8, v0, :cond_e

    .line 385
    const/16 v16, 0x1

    .line 386
    goto/16 :goto_9

    .line 429
    .end local v16    # "find":Z
    .end local v21    # "item":Lcom/lzx/iteam/treeview/Element;
    :cond_15
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    const/4 v8, -0x1

    iput v8, v7, Lcom/lzx/iteam/treeview/TreeViewAdapter;->selectId:I

    .line 430
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    invoke-virtual {v7}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->notifyDataSetChanged()V

    .line 432
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    .line 433
    .restart local v19    # "intent":Landroid/content/Intent;
    const-string v7, "tag_id"

    const-string v8, "0"

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 434
    const-string v7, "intent_tag_name"

    const-string v8, "\u5168\u90e8\u6210\u5458"

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    const-string v7, "tag_count"

    const-string v8, ""

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    const-string v7, "group_id"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    iget v8, v8, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mGroupId:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    const-string v7, "group_name"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    iget-object v8, v8, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mGroupName:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    const-string v7, "structure_tag_click"

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    sget-object v7, Lcom/lzx/iteam/CloudDialerActivity;->instance:Lcom/lzx/iteam/CloudDialerActivity;

    const/4 v8, -0x1

    move-object/from16 v0, v19

    invoke-virtual {v7, v0, v8}, Lcom/lzx/iteam/CloudDialerActivity;->ListRefresh(Landroid/content/Intent;I)V

    .line 442
    sput-object v19, Lcom/lzx/iteam/CloudDialerActivity;->recordintent:Landroid/content/Intent;

    goto/16 :goto_0

    .line 461
    .end local v2    # "element":Lcom/lzx/iteam/treeview/Element;
    .end local v13    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v14    # "elements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/treeview/Element;>;"
    .end local v15    # "elementsData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/treeview/Element;>;"
    .end local v18    # "i":I
    .end local v19    # "intent":Landroid/content/Intent;
    .end local v26    # "sp":Landroid/content/SharedPreferences;
    :cond_16
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    const/16 v8, 0x1f41

    if-ne v7, v8, :cond_17

    .line 462
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    # getter for: Lcom/lzx/iteam/treeview/TreeViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->access$0(Lcom/lzx/iteam/treeview/TreeViewAdapter;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f080042

    .line 463
    const/16 v31, 0x1

    .line 462
    move/from16 v0, v31

    invoke-static {v7, v8, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    .line 463
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 465
    :cond_17
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    # getter for: Lcom/lzx/iteam/treeview/TreeViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->access$0(Lcom/lzx/iteam/treeview/TreeViewAdapter;)Landroid/content/Context;

    move-result-object v8

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 466
    const/16 v31, 0x1

    .line 465
    move/from16 v0, v31

    invoke-static {v8, v7, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    .line 466
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 473
    :pswitch_3
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    if-nez v7, :cond_18

    .line 500
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/util/ArrayList;

    .line 501
    .local v22, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/ChatContact;>;"
    new-instance v19, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    # getter for: Lcom/lzx/iteam/treeview/TreeViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->access$0(Lcom/lzx/iteam/treeview/TreeViewAdapter;)Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v0, v19

    invoke-direct {v0, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 502
    .restart local v19    # "intent":Landroid/content/Intent;
    const-string v7, "set_structure_group_contact"

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 503
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 504
    .restart local v9    # "bundle":Landroid/os/Bundle;
    const-string v7, "group_id"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mGroupId:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const-string v7, "intent_tag_name"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    iget-object v8, v8, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mName:Ljava/lang/String;

    invoke-virtual {v9, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string v7, "tag_id"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mId:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    const-string v7, "tag_path"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    iget-object v8, v8, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mTagPath:Ljava/lang/String;

    invoke-virtual {v9, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    const-string v7, "tag_count"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    iget-object v8, v8, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mContactCount:Ljava/lang/String;

    invoke-virtual {v9, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    const-string v7, "group_name"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    iget-object v8, v8, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mGroupName:Ljava/lang/String;

    invoke-virtual {v9, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const-string v7, "currentPosition"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    iget v8, v8, Lcom/lzx/iteam/treeview/TreeViewAdapter;->currentPosition:I

    invoke-virtual {v9, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 513
    const-string v7, "contact_count"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    iget v8, v8, Lcom/lzx/iteam/treeview/TreeViewAdapter;->allCount:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 514
    const-string v7, "contact_id"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    iget-object v8, v8, Lcom/lzx/iteam/treeview/TreeViewAdapter;->contactId:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 515
    const-string v7, "selectedContact"

    move-object/from16 v0, v22

    invoke-virtual {v9, v7, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 516
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 518
    sget-object v7, Lcom/lzx/iteam/CloudDialerActivity;->instance:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/lzx/iteam/CloudDialerActivity;->initIntentData(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 521
    .end local v9    # "bundle":Landroid/os/Bundle;
    .end local v19    # "intent":Landroid/content/Intent;
    .end local v22    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/ChatContact;>;"
    :cond_18
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    const/16 v8, 0x1f41

    if-ne v7, v8, :cond_19

    .line 522
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    # getter for: Lcom/lzx/iteam/treeview/TreeViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->access$0(Lcom/lzx/iteam/treeview/TreeViewAdapter;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f080042

    .line 523
    const/16 v31, 0x1

    .line 522
    move/from16 v0, v31

    invoke-static {v7, v8, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    .line 523
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 525
    :cond_19
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    # getter for: Lcom/lzx/iteam/treeview/TreeViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->access$0(Lcom/lzx/iteam/treeview/TreeViewAdapter;)Landroid/content/Context;

    move-result-object v8

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 526
    const/16 v31, 0x1

    .line 525
    move/from16 v0, v31

    invoke-static {v8, v7, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    .line 526
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
