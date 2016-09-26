.class Lcom/lzx/iteam/ManageGroupActivity$1;
.super Landroid/os/Handler;
.source "ManageGroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/ManageGroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ManageGroupActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ManageGroupActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    .line 103
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 21
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 106
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    sparse-switch v17, :sswitch_data_0

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 108
    :sswitch_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 109
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/lzx/iteam/ManageGroupActivity$GroupInfo;

    .line 110
    .local v9, "info":Lcom/lzx/iteam/ManageGroupActivity$GroupInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/lzx/iteam/ManageGroupActivity;->updateGroupInfo(Lcom/lzx/iteam/ManageGroupActivity$GroupInfo;)V

    goto :goto_0

    .line 112
    .end local v9    # "info":Lcom/lzx/iteam/ManageGroupActivity$GroupInfo;
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    const/16 v18, 0x1f41

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v17, v0

    const v18, 0x7f080042

    .line 114
    const/16 v19, 0x1

    .line 113
    invoke-static/range {v17 .. v19}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v17

    .line 114
    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 116
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 121
    :sswitch_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    if-nez v17, :cond_3

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v18, v0

    # getter for: Lcom/lzx/iteam/ManageGroupActivity;->mGroupId:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/lzx/iteam/ManageGroupActivity;->access$0(Lcom/lzx/iteam/ManageGroupActivity;)Ljava/lang/String;

    move-result-object v18

    # invokes: Lcom/lzx/iteam/ManageGroupActivity;->groupGet(Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/lzx/iteam/ManageGroupActivity;->access$1(Lcom/lzx/iteam/ManageGroupActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    const/16 v18, 0x1f41

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v17, v0

    const v18, 0x7f080042

    .line 127
    const/16 v19, 0x1

    .line 126
    invoke-static/range {v17 .. v19}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v17

    .line 127
    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 129
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 135
    :sswitch_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    if-nez v17, :cond_5

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v17, v0

    const-string v18, "\u9000\u51fa\u56e2\u961f\u6210\u529f"

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    .line 140
    new-instance v10, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v17, v0

    const-class v18, Lcom/lzx/iteam/MainActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    .local v10, "intent":Landroid/content/Intent;
    const/high16 v17, 0x24000000

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/lzx/iteam/ManageGroupActivity;->startActivity(Landroid/content/Intent;)V

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lzx/iteam/ManageGroupActivity;->finish()V

    goto/16 :goto_0

    .line 145
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    const/16 v18, 0x1f41

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v17, v0

    const v18, 0x7f080042

    .line 147
    const/16 v19, 0x1

    .line 146
    invoke-static/range {v17 .. v19}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v17

    .line 147
    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 149
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 154
    :sswitch_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    if-nez v17, :cond_7

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v17, v0

    const-string v18, "\u89e3\u6563\u56e2\u961f\u6210\u529f"

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    .line 159
    new-instance v10, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v17, v0

    const-class v18, Lcom/lzx/iteam/MainActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    .restart local v10    # "intent":Landroid/content/Intent;
    const/high16 v17, 0x24000000

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/lzx/iteam/ManageGroupActivity;->startActivity(Landroid/content/Intent;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lzx/iteam/ManageGroupActivity;->finish()V

    goto/16 :goto_0

    .line 164
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_7
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    const/16 v18, 0x1f41

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v17, v0

    const v18, 0x7f080042

    .line 166
    const/16 v19, 0x1

    .line 165
    invoke-static/range {v17 .. v19}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v17

    .line 166
    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 168
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 173
    :sswitch_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    if-nez v17, :cond_14

    .line 174
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    .line 175
    .local v12, "mResult":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/bean/GroupManageCreate;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v11, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v17, v0

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {v17 .. v18}, Lcom/lzx/iteam/ManageGroupActivity;->access$2(Lcom/lzx/iteam/ManageGroupActivity;Ljava/util/ArrayList;)V

    .line 177
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-lt v7, v0, :cond_c

    .line 198
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .local v15, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lzx/iteam/ManageGroupActivity;->managerData:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/lzx/iteam/ManageGroupActivity;->access$4(Lcom/lzx/iteam/ManageGroupActivity;)Ljava/util/ArrayList;

    move-result-object v17

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lzx/iteam/ManageGroupActivity;->managerData:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/lzx/iteam/ManageGroupActivity;->access$4(Lcom/lzx/iteam/ManageGroupActivity;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-eqz v17, :cond_9

    .line 200
    const/4 v7, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lzx/iteam/ManageGroupActivity;->managerData:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/lzx/iteam/ManageGroupActivity;->access$4(Lcom/lzx/iteam/ManageGroupActivity;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-lt v7, v0, :cond_f

    .line 204
    :cond_9
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    if-lez v17, :cond_10

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lzx/iteam/ManageGroupActivity;->mGroupManager:Landroid/widget/TextView;
    invoke-static/range {v17 .. v17}, Lcom/lzx/iteam/ManageGroupActivity;->access$9(Lcom/lzx/iteam/ManageGroupActivity;)Landroid/widget/TextView;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    :goto_3
    const-string v17, "3"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v18, v0

    # getter for: Lcom/lzx/iteam/ManageGroupActivity;->mCreateType:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/lzx/iteam/ManageGroupActivity;->access$5(Lcom/lzx/iteam/ManageGroupActivity;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v17, v0

    new-instance v18, Lcom/lzx/iteam/gridimg/ImageAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-direct/range {v18 .. v20}, Lcom/lzx/iteam/gridimg/ImageAdapter;-><init>(Landroid/content/Context;Z)V

    invoke-static/range {v17 .. v18}, Lcom/lzx/iteam/ManageGroupActivity;->access$10(Lcom/lzx/iteam/ManageGroupActivity;Lcom/lzx/iteam/gridimg/ImageAdapter;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lzx/iteam/ManageGroupActivity;->mGroupManagerGrid:Lcom/lzx/iteam/gridimg/AllEasyGridView;
    invoke-static/range {v17 .. v17}, Lcom/lzx/iteam/ManageGroupActivity;->access$11(Lcom/lzx/iteam/ManageGroupActivity;)Lcom/lzx/iteam/gridimg/AllEasyGridView;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/ManageGroupActivity;->adapter:Lcom/lzx/iteam/gridimg/ImageAdapter;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/ManageGroupActivity;->access$12(Lcom/lzx/iteam/ManageGroupActivity;)Lcom/lzx/iteam/gridimg/ImageAdapter;

    move-result-object v19

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v11, v2}, Lcom/lzx/iteam/gridimg/AllEasyGridView;->initData(ZLjava/util/ArrayList;Lcom/lzx/iteam/gridimg/ImageAdapter;)V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lzx/iteam/ManageGroupActivity;->mGroupManagerGrid:Lcom/lzx/iteam/gridimg/AllEasyGridView;
    invoke-static/range {v17 .. v17}, Lcom/lzx/iteam/ManageGroupActivity;->access$11(Lcom/lzx/iteam/ManageGroupActivity;)Lcom/lzx/iteam/gridimg/AllEasyGridView;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/lzx/iteam/gridimg/AllEasyGridView;->setHandleGridView(Lcom/lzx/iteam/gridimg/EasyGridView$IHandleGridView;)V

    .line 224
    :goto_4
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_0

    .line 225
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/lzx/iteam/bean/GroupManageCreate;

    invoke-virtual/range {v17 .. v17}, Lcom/lzx/iteam/bean/GroupManageCreate;->getGroupName()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_a

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lzx/iteam/ManageGroupActivity;->mGroupName:Landroid/widget/TextView;
    invoke-static/range {v17 .. v17}, Lcom/lzx/iteam/ManageGroupActivity;->access$17(Lcom/lzx/iteam/ManageGroupActivity;)Landroid/widget/TextView;

    move-result-object v18

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/lzx/iteam/bean/GroupManageCreate;

    invoke-virtual/range {v17 .. v17}, Lcom/lzx/iteam/bean/GroupManageCreate;->getGroupName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    :cond_a
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/lzx/iteam/bean/GroupManageCreate;

    invoke-virtual/range {v17 .. v17}, Lcom/lzx/iteam/bean/GroupManageCreate;->getGroupImg()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_b

    .line 229
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/lzx/iteam/bean/GroupManageCreate;

    invoke-virtual/range {v17 .. v17}, Lcom/lzx/iteam/bean/GroupManageCreate;->getGroupImg()Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_13

    const-string v8, ""

    .line 230
    .local v8, "imgPath":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v18, v0

    # getter for: Lcom/lzx/iteam/ManageGroupActivity;->mGroupHead:Landroid/widget/ImageView;
    invoke-static/range {v18 .. v18}, Lcom/lzx/iteam/ManageGroupActivity;->access$18(Lcom/lzx/iteam/ManageGroupActivity;)Landroid/widget/ImageView;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/ManageGroupActivity;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/ManageGroupActivity;->access$19(Lcom/lzx/iteam/ManageGroupActivity;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v20, v0

    # getter for: Lcom/lzx/iteam/ManageGroupActivity;->animateFirstListener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
    invoke-static/range {v20 .. v20}, Lcom/lzx/iteam/ManageGroupActivity;->access$20(Lcom/lzx/iteam/ManageGroupActivity;)Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v8, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;)V

    .line 232
    .end local v8    # "imgPath":Ljava/lang/String;
    :cond_b
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/lzx/iteam/bean/GroupManageCreate;

    invoke-virtual/range {v17 .. v17}, Lcom/lzx/iteam/bean/GroupManageCreate;->getGroupType()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v18, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/lzx/iteam/bean/GroupManageCreate;

    invoke-virtual/range {v17 .. v17}, Lcom/lzx/iteam/bean/GroupManageCreate;->getGroupType()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, v18

    move/from16 v1, v17

    # invokes: Lcom/lzx/iteam/ManageGroupActivity;->setGroupType(I)V
    invoke-static {v0, v1}, Lcom/lzx/iteam/ManageGroupActivity;->access$21(Lcom/lzx/iteam/ManageGroupActivity;I)V

    goto/16 :goto_0

    .line 178
    .end local v15    # "sb":Ljava/lang/StringBuilder;
    :cond_c
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lzx/iteam/bean/GroupManageCreate;

    .line 179
    .local v4, "bean":Lcom/lzx/iteam/bean/GroupManageCreate;
    invoke-virtual {v4}, Lcom/lzx/iteam/bean/GroupManageCreate;->getUserType()Ljava/lang/String;

    move-result-object v17

    const-string v18, "3"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lzx/iteam/ManageGroupActivity;->mGroupCreator:Landroid/widget/TextView;
    invoke-static/range {v17 .. v17}, Lcom/lzx/iteam/ManageGroupActivity;->access$3(Lcom/lzx/iteam/ManageGroupActivity;)Landroid/widget/TextView;

    move-result-object v17

    invoke-virtual {v4}, Lcom/lzx/iteam/bean/GroupManageCreate;->getContactName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    :cond_d
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 183
    :cond_e
    invoke-virtual {v4}, Lcom/lzx/iteam/bean/GroupManageCreate;->getUserType()Ljava/lang/String;

    move-result-object v17

    const-string v18, "2"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lzx/iteam/ManageGroupActivity;->managerData:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/lzx/iteam/ManageGroupActivity;->access$4(Lcom/lzx/iteam/ManageGroupActivity;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 186
    .local v13, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v17, "text"

    invoke-virtual {v4}, Lcom/lzx/iteam/bean/GroupManageCreate;->getContactName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v17, "icon"

    invoke-virtual {v4}, Lcom/lzx/iteam/bean/GroupManageCreate;->getContactImage()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    const-string v17, "1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v18, v0

    # getter for: Lcom/lzx/iteam/ManageGroupActivity;->mCreateType:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/lzx/iteam/ManageGroupActivity;->access$5(Lcom/lzx/iteam/ManageGroupActivity;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    iget-object v0, v4, Lcom/lzx/iteam/bean/GroupManageCreate;->userId:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v18, v0

    # getter for: Lcom/lzx/iteam/ManageGroupActivity;->mUid:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/lzx/iteam/ManageGroupActivity;->access$6(Lcom/lzx/iteam/ManageGroupActivity;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v17, v0

    const-string v18, "2"

    invoke-static/range {v17 .. v18}, Lcom/lzx/iteam/ManageGroupActivity;->access$7(Lcom/lzx/iteam/ManageGroupActivity;Ljava/lang/String;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v18, v0

    # getter for: Lcom/lzx/iteam/ManageGroupActivity;->mCreateType:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/lzx/iteam/ManageGroupActivity;->access$5(Lcom/lzx/iteam/ManageGroupActivity;)Ljava/lang/String;

    move-result-object v18

    # invokes: Lcom/lzx/iteam/ManageGroupActivity;->setInfoView(Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/lzx/iteam/ManageGroupActivity;->access$8(Lcom/lzx/iteam/ManageGroupActivity;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 201
    .end local v4    # "bean":Lcom/lzx/iteam/bean/GroupManageCreate;
    .end local v13    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v15    # "sb":Ljava/lang/StringBuilder;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lzx/iteam/ManageGroupActivity;->managerData:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/lzx/iteam/ManageGroupActivity;->access$4(Lcom/lzx/iteam/ManageGroupActivity;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/lzx/iteam/bean/GroupManageCreate;

    invoke-virtual/range {v17 .. v17}, Lcom/lzx/iteam/bean/GroupManageCreate;->getContactName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 207
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lzx/iteam/ManageGroupActivity;->mGroupManager:Landroid/widget/TextView;
    invoke-static/range {v17 .. v17}, Lcom/lzx/iteam/ManageGroupActivity;->access$9(Lcom/lzx/iteam/ManageGroupActivity;)Landroid/widget/TextView;

    move-result-object v17

    const-string v18, "\u65e0"

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 215
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lzx/iteam/ManageGroupActivity;->managerData:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/lzx/iteam/ManageGroupActivity;->access$4(Lcom/lzx/iteam/ManageGroupActivity;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lzx/iteam/ManageGroupActivity;->managerData:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/lzx/iteam/ManageGroupActivity;->access$4(Lcom/lzx/iteam/ManageGroupActivity;)Ljava/util/ArrayList;

    move-result-object v17

    if-eqz v17, :cond_12

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v17, v0

    new-instance v18, Lcom/lzx/iteam/adapter/GroupGridAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Lcom/lzx/iteam/adapter/GroupGridAdapter;-><init>(Landroid/content/Context;)V

    invoke-static/range {v17 .. v18}, Lcom/lzx/iteam/ManageGroupActivity;->access$13(Lcom/lzx/iteam/ManageGroupActivity;Lcom/lzx/iteam/adapter/GroupGridAdapter;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lzx/iteam/ManageGroupActivity;->adapter1:Lcom/lzx/iteam/adapter/GroupGridAdapter;
    invoke-static/range {v17 .. v17}, Lcom/lzx/iteam/ManageGroupActivity;->access$14(Lcom/lzx/iteam/ManageGroupActivity;)Lcom/lzx/iteam/adapter/GroupGridAdapter;

    move-result-object v17

    const/16 v18, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/ManageGroupActivity;->managerData:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/ManageGroupActivity;->access$4(Lcom/lzx/iteam/ManageGroupActivity;)Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/lzx/iteam/adapter/GroupGridAdapter;->bindData(ILjava/util/ArrayList;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lzx/iteam/ManageGroupActivity;->mNormalGrid:Landroid/widget/GridView;
    invoke-static/range {v17 .. v17}, Lcom/lzx/iteam/ManageGroupActivity;->access$15(Lcom/lzx/iteam/ManageGroupActivity;)Landroid/widget/GridView;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v18, v0

    # getter for: Lcom/lzx/iteam/ManageGroupActivity;->adapter1:Lcom/lzx/iteam/adapter/GroupGridAdapter;
    invoke-static/range {v18 .. v18}, Lcom/lzx/iteam/ManageGroupActivity;->access$14(Lcom/lzx/iteam/ManageGroupActivity;)Lcom/lzx/iteam/adapter/GroupGridAdapter;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_4

    .line 220
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lzx/iteam/ManageGroupActivity;->mGroupManagerLayout:Landroid/widget/RelativeLayout;
    invoke-static/range {v17 .. v17}, Lcom/lzx/iteam/ManageGroupActivity;->access$16(Lcom/lzx/iteam/ManageGroupActivity;)Landroid/widget/RelativeLayout;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    goto/16 :goto_4

    .line 229
    :cond_13
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/lzx/iteam/bean/GroupManageCreate;

    invoke-virtual/range {v17 .. v17}, Lcom/lzx/iteam/bean/GroupManageCreate;->getGroupImg()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_5

    .line 238
    .end local v7    # "i":I
    .end local v11    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v12    # "mResult":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/bean/GroupManageCreate;>;"
    .end local v15    # "sb":Ljava/lang/StringBuilder;
    :cond_14
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    const/16 v18, 0x1f41

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_15

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v17, v0

    const v18, 0x7f080042

    .line 240
    const/16 v19, 0x1

    .line 239
    invoke-static/range {v17 .. v19}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v17

    .line 240
    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 242
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 247
    :sswitch_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 248
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Ljava/util/HashMap;

    .line 249
    .local v14, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v17, "token"

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 250
    .local v16, "token":Ljava/lang/String;
    const-string v17, "file"

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 251
    .local v5, "file":[B
    const-string v17, "fileName"

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 252
    .local v6, "fileName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ManageGroupActivity$1;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v5, v6}, Lcom/lzx/iteam/ManageGroupActivity;->setPhoto(Ljava/lang/String;[BLjava/lang/String;)V

    goto/16 :goto_0

    .line 106
    nop

    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_0
        0x67 -> :sswitch_2
        0x68 -> :sswitch_3
        0x6b -> :sswitch_1
        0x6c -> :sswitch_4
        0x3e8 -> :sswitch_5
    .end sparse-switch
.end method
