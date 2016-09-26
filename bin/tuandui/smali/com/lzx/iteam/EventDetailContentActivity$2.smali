.class Lcom/lzx/iteam/EventDetailContentActivity$2;
.super Landroid/os/Handler;
.source "EventDetailContentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/EventDetailContentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/EventDetailContentActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/EventDetailContentActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    .line 255
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/EventDetailContentActivity$2;)Lcom/lzx/iteam/EventDetailContentActivity;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 24
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 258
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 259
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 261
    :pswitch_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    if-nez v19, :cond_3

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    const-string v20, ""

    invoke-static/range {v19 .. v20}, Lcom/lzx/iteam/EventDetailContentActivity;->access$1(Lcom/lzx/iteam/EventDetailContentActivity;Ljava/lang/String;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mEtInput:Landroid/widget/EditText;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$0(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/widget/EditText;

    move-result-object v19

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 265
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;

    .line 266
    .local v4, "backData":Lcom/lzx/iteam/bean/aidl/EventReplyNewData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$4(Lcom/lzx/iteam/EventDetailContentActivity;)Lcom/lzx/iteam/provider/CloudDBOperation;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v20, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mEventId:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/lzx/iteam/EventDetailContentActivity;->access$5(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Lcom/lzx/iteam/provider/CloudDBOperation;->updateEventReply(Lcom/lzx/iteam/bean/aidl/EventReplyNewData;Ljava/lang/String;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mReplyDate:Ljava/util/List;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$6(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mTvReplyCount:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$7(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/widget/TextView;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "\u5171\u6709"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v21, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mReplyDate:Ljava/util/List;
    invoke-static/range {v21 .. v21}, Lcom/lzx/iteam/EventDetailContentActivity;->access$6(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\u6761\u56de\u590d"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mAdapter:Lcom/lzx/iteam/adapter/EventReplyAdapter;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$8(Lcom/lzx/iteam/EventDetailContentActivity;)Lcom/lzx/iteam/adapter/EventReplyAdapter;

    move-result-object v19

    if-eqz v19, :cond_2

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mAdapter:Lcom/lzx/iteam/adapter/EventReplyAdapter;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$8(Lcom/lzx/iteam/EventDetailContentActivity;)Lcom/lzx/iteam/adapter/EventReplyAdapter;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v20, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mReplyDate:Ljava/util/List;
    invoke-static/range {v20 .. v20}, Lcom/lzx/iteam/EventDetailContentActivity;->access$6(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/util/List;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/lzx/iteam/adapter/EventReplyAdapter;->bindData(Ljava/util/List;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mLvReply:Landroid/widget/ListView;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$9(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/widget/ListView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v20, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mReplyDate:Ljava/util/List;
    invoke-static/range {v20 .. v20}, Lcom/lzx/iteam/EventDetailContentActivity;->access$6(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->setSelection(I)V

    .line 288
    .end local v4    # "backData":Lcom/lzx/iteam/bean/aidl/EventReplyNewData;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mDialog:Landroid/app/Dialog;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$11(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/app/Dialog;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    .line 274
    .restart local v4    # "backData":Lcom/lzx/iteam/bean/aidl/EventReplyNewData;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    new-instance v20, Lcom/lzx/iteam/adapter/EventReplyAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v21, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mReplyDate:Ljava/util/List;
    invoke-static/range {v21 .. v21}, Lcom/lzx/iteam/EventDetailContentActivity;->access$6(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v22, v0

    invoke-direct/range {v20 .. v22}, Lcom/lzx/iteam/adapter/EventReplyAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    invoke-static/range {v19 .. v20}, Lcom/lzx/iteam/EventDetailContentActivity;->access$10(Lcom/lzx/iteam/EventDetailContentActivity;Lcom/lzx/iteam/adapter/EventReplyAdapter;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mLvReply:Landroid/widget/ListView;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$9(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/widget/ListView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v20, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mAdapter:Lcom/lzx/iteam/adapter/EventReplyAdapter;
    invoke-static/range {v20 .. v20}, Lcom/lzx/iteam/EventDetailContentActivity;->access$8(Lcom/lzx/iteam/EventDetailContentActivity;)Lcom/lzx/iteam/adapter/EventReplyAdapter;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    .line 280
    .end local v4    # "backData":Lcom/lzx/iteam/bean/aidl/EventReplyNewData;
    :cond_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    const/16 v20, 0x1f41

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    const v20, 0x7f080042

    .line 282
    const/16 v21, 0x1

    .line 281
    invoke-static/range {v19 .. v21}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v19

    .line 282
    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 283
    :cond_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    const/16 v20, 0x3ea

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    const/16 v20, 0x3eb

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    const/16 v20, 0x3ed

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/String;

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 291
    :pswitch_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    if-nez v19, :cond_c

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mEventType:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$12(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "7"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/util/List;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->access$13(Lcom/lzx/iteam/EventDetailContentActivity;Ljava/util/List;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mReplyDate:Ljava/util/List;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$6(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/util/List;

    move-result-object v19

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;

    .line 295
    .local v16, "replyData":Lcom/lzx/iteam/bean/aidl/EventReplyNewData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v16 .. v16}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->getMemberCount()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    invoke-static/range {v19 .. v20}, Lcom/lzx/iteam/EventDetailContentActivity;->access$14(Lcom/lzx/iteam/EventDetailContentActivity;I)V

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v16 .. v16}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->getJoinCount()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    invoke-static/range {v19 .. v20}, Lcom/lzx/iteam/EventDetailContentActivity;->access$15(Lcom/lzx/iteam/EventDetailContentActivity;I)V

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v16 .. v16}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->getActiveDetailBeans()Ljava/util/ArrayList;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/lzx/iteam/EventDetailContentActivity;->access$16(Lcom/lzx/iteam/EventDetailContentActivity;Ljava/util/ArrayList;)V

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    new-instance v20, Lcom/lzx/iteam/adapter/ActiveDetailAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mDetailBeans:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lcom/lzx/iteam/EventDetailContentActivity;->access$17(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/util/ArrayList;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Lcom/lzx/iteam/adapter/ActiveDetailAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static/range {v19 .. v20}, Lcom/lzx/iteam/EventDetailContentActivity;->access$18(Lcom/lzx/iteam/EventDetailContentActivity;Lcom/lzx/iteam/adapter/ActiveDetailAdapter;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mLvActiveDetail:Lcom/lzx/iteam/widget/MyListView;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$19(Lcom/lzx/iteam/EventDetailContentActivity;)Lcom/lzx/iteam/widget/MyListView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v20, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mActiveDetailAdapter:Lcom/lzx/iteam/adapter/ActiveDetailAdapter;
    invoke-static/range {v20 .. v20}, Lcom/lzx/iteam/EventDetailContentActivity;->access$20(Lcom/lzx/iteam/EventDetailContentActivity;)Lcom/lzx/iteam/adapter/ActiveDetailAdapter;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/lzx/iteam/widget/MyListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mTvCount:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$21(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/widget/TextView;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v21, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mDetailBeans:Ljava/util/ArrayList;
    invoke-static/range {v21 .. v21}, Lcom/lzx/iteam/EventDetailContentActivity;->access$17(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mDetailBeans:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$17(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_0

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mLlActiveList:Landroid/widget/LinearLayout;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$22(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/widget/LinearLayout;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 306
    .end local v16    # "replyData":Lcom/lzx/iteam/bean/aidl/EventReplyNewData;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mEventType:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$12(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "8"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/util/ArrayList;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->access$23(Lcom/lzx/iteam/EventDetailContentActivity;Ljava/util/ArrayList;)V

    .line 309
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mVoteReplyDate:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$24(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-lt v8, v0, :cond_6

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mTvCount:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$21(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/widget/TextView;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v21, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mHasVoteCount:I
    invoke-static/range {v21 .. v21}, Lcom/lzx/iteam/EventDetailContentActivity;->access$25(Lcom/lzx/iteam/EventDetailContentActivity;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    new-instance v20, Lcom/lzx/iteam/adapter/VoteDetailAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mVoteReplyDate:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lcom/lzx/iteam/EventDetailContentActivity;->access$24(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mHasVoteCount:I
    invoke-static/range {v23 .. v23}, Lcom/lzx/iteam/EventDetailContentActivity;->access$25(Lcom/lzx/iteam/EventDetailContentActivity;)I

    move-result v23

    invoke-direct/range {v20 .. v23}, Lcom/lzx/iteam/adapter/VoteDetailAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    invoke-static/range {v19 .. v20}, Lcom/lzx/iteam/EventDetailContentActivity;->access$28(Lcom/lzx/iteam/EventDetailContentActivity;Lcom/lzx/iteam/adapter/VoteDetailAdapter;)V

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mLvVoteBottom:Lcom/lzx/iteam/widget/MyListView;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$29(Lcom/lzx/iteam/EventDetailContentActivity;)Lcom/lzx/iteam/widget/MyListView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v20, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mVoteDetailAdapter:Lcom/lzx/iteam/adapter/VoteDetailAdapter;
    invoke-static/range {v20 .. v20}, Lcom/lzx/iteam/EventDetailContentActivity;->access$30(Lcom/lzx/iteam/EventDetailContentActivity;)Lcom/lzx/iteam/adapter/VoteDetailAdapter;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/lzx/iteam/widget/MyListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 310
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v20, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mHasVoteCount:I
    invoke-static/range {v20 .. v20}, Lcom/lzx/iteam/EventDetailContentActivity;->access$25(Lcom/lzx/iteam/EventDetailContentActivity;)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mVoteReplyDate:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$24(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/lzx/iteam/bean/EventVoteBean;

    invoke-virtual/range {v19 .. v19}, Lcom/lzx/iteam/bean/EventVoteBean;->getCount()I

    move-result v19

    add-int v19, v19, v21

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->access$26(Lcom/lzx/iteam/EventDetailContentActivity;I)V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mVoteReplyDate:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$24(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/lzx/iteam/bean/EventVoteBean;

    new-instance v20, Ljava/lang/StringBuilder;

    add-int/lit8 v21, v8, 0x41

    move/from16 v0, v21

    int-to-char v0, v0

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, ": "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v20, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mVotes:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/lzx/iteam/EventDetailContentActivity;->access$27(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/lzx/iteam/bean/EventVoteBean;->setVote(Ljava/lang/String;)V

    .line 309
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 317
    .end local v8    # "i":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mEventType:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$12(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "9"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 318
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lorg/json/JSONObject;

    .line 319
    .local v17, "result":Lorg/json/JSONObject;
    const/4 v15, 0x0

    .line 321
    .local v15, "object":Lorg/json/JSONObject;
    :try_start_0
    const-string v19, "data"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 325
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {v19 .. v20}, Lcom/lzx/iteam/EventDetailContentActivity;->access$31(Lcom/lzx/iteam/EventDetailContentActivity;Ljava/util/ArrayList;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {v19 .. v20}, Lcom/lzx/iteam/EventDetailContentActivity;->access$32(Lcom/lzx/iteam/EventDetailContentActivity;Ljava/util/ArrayList;)V

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {v19 .. v20}, Lcom/lzx/iteam/EventDetailContentActivity;->access$33(Lcom/lzx/iteam/EventDetailContentActivity;Ljava/util/ArrayList;)V

    .line 329
    :try_start_1
    const-string v19, "jok"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 330
    .local v9, "jok":Lorg/json/JSONArray;
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_4
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v19

    move/from16 v0, v19

    if-lt v8, v0, :cond_8

    .line 343
    .end local v8    # "i":I
    .end local v9    # "jok":Lorg/json/JSONArray;
    :goto_5
    :try_start_2
    const-string v19, "jlate"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 344
    .local v10, "jokLate":Lorg/json/JSONArray;
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_6
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v19

    move/from16 v0, v19

    if-lt v8, v0, :cond_9

    .line 357
    .end local v8    # "i":I
    .end local v10    # "jokLate":Lorg/json/JSONArray;
    :goto_7
    :try_start_3
    const-string v19, "jnone"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 358
    .local v11, "jokNone":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v20

    invoke-static/range {v19 .. v20}, Lcom/lzx/iteam/EventDetailContentActivity;->access$36(Lcom/lzx/iteam/EventDetailContentActivity;I)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 362
    .end local v11    # "jokNone":Lorg/json/JSONArray;
    :goto_8
    new-instance v9, Landroid/text/SpannableString;

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v20, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mJok:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/lzx/iteam/EventDetailContentActivity;->access$34(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 363
    .local v9, "jok":Landroid/text/SpannableString;
    new-instance v14, Lcom/lzx/iteam/widget/TextViewSpan;

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v20, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mJok:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/lzx/iteam/EventDetailContentActivity;->access$34(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    const/16 v22, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v14, v0, v1, v2, v3}, Lcom/lzx/iteam/widget/TextViewSpan;-><init>(Ljava/lang/String;Landroid/content/Context;II)V

    .line 364
    .local v14, "mJokSize":Lcom/lzx/iteam/widget/TextViewSpan;
    const/16 v19, 0x0

    invoke-virtual {v9}, Landroid/text/SpannableString;->length()I

    move-result v20

    const/16 v21, 0x11

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v9, v14, v0, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 366
    new-instance v10, Landroid/text/SpannableString;

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v20, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mJokLate:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/lzx/iteam/EventDetailContentActivity;->access$35(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 367
    .local v10, "jokLate":Landroid/text/SpannableString;
    new-instance v12, Lcom/lzx/iteam/widget/TextViewSpan;

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v20, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mJokLate:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/lzx/iteam/EventDetailContentActivity;->access$35(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    const/16 v22, 0x2

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v12, v0, v1, v2, v3}, Lcom/lzx/iteam/widget/TextViewSpan;-><init>(Ljava/lang/String;Landroid/content/Context;II)V

    .line 368
    .local v12, "mJokLateSize":Lcom/lzx/iteam/widget/TextViewSpan;
    const/16 v19, 0x0

    invoke-virtual {v10}, Landroid/text/SpannableString;->length()I

    move-result v20

    const/16 v21, 0x11

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v10, v12, v0, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 370
    new-instance v11, Landroid/text/SpannableString;

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v20, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mJokNone:I
    invoke-static/range {v20 .. v20}, Lcom/lzx/iteam/EventDetailContentActivity;->access$37(Lcom/lzx/iteam/EventDetailContentActivity;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 371
    .local v11, "jokNone":Landroid/text/SpannableString;
    new-instance v13, Lcom/lzx/iteam/widget/TextViewSpan;

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v20, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mJokNone:I
    invoke-static/range {v20 .. v20}, Lcom/lzx/iteam/EventDetailContentActivity;->access$37(Lcom/lzx/iteam/EventDetailContentActivity;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    const/16 v22, 0x3

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v13, v0, v1, v2, v3}, Lcom/lzx/iteam/widget/TextViewSpan;-><init>(Ljava/lang/String;Landroid/content/Context;II)V

    .line 372
    .local v13, "mJokNoneSize":Lcom/lzx/iteam/widget/TextViewSpan;
    const/16 v19, 0x0

    invoke-virtual {v11}, Landroid/text/SpannableString;->length()I

    move-result v20

    const/16 v21, 0x11

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v11, v13, v0, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mTvRegCountDetail:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$38(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/widget/TextView;

    move-result-object v19

    const-string v20, "\u7b7e\u5230"

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mTvRegCountDetail:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$38(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mTvRegCountDetail:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$38(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/widget/TextView;

    move-result-object v19

    const-string v20, "\u4eba  \u8fdf\u5230"

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mTvRegCountDetail:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$38(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mTvRegCountDetail:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$38(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/widget/TextView;

    move-result-object v19

    const-string v20, "\u4eba  \u672a\u5230"

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mTvRegCountDetail:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$38(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mTvRegCountDetail:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$38(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/widget/TextView;

    move-result-object v19

    const-string v20, "\u4eba"

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mRegData:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$39(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v20, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mJok:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/lzx/iteam/EventDetailContentActivity;->access$34(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mRegData:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$39(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v20, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mJokLate:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/lzx/iteam/EventDetailContentActivity;->access$35(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mTvCount:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$21(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/widget/TextView;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v21, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mRegData:Ljava/util/ArrayList;
    invoke-static/range {v21 .. v21}, Lcom/lzx/iteam/EventDetailContentActivity;->access$39(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    new-instance v20, Lcom/lzx/iteam/adapter/EventRegAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mRegData:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lcom/lzx/iteam/EventDetailContentActivity;->access$39(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/util/ArrayList;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Lcom/lzx/iteam/adapter/EventRegAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static/range {v19 .. v20}, Lcom/lzx/iteam/EventDetailContentActivity;->access$40(Lcom/lzx/iteam/EventDetailContentActivity;Lcom/lzx/iteam/adapter/EventRegAdapter;)V

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mLvRegDetail:Lcom/lzx/iteam/widget/MyListView;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$41(Lcom/lzx/iteam/EventDetailContentActivity;)Lcom/lzx/iteam/widget/MyListView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v20, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mRegAdapter:Lcom/lzx/iteam/adapter/EventRegAdapter;
    invoke-static/range {v20 .. v20}, Lcom/lzx/iteam/EventDetailContentActivity;->access$42(Lcom/lzx/iteam/EventDetailContentActivity;)Lcom/lzx/iteam/adapter/EventRegAdapter;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/lzx/iteam/widget/MyListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mLlRegList:Landroid/widget/LinearLayout;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$43(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/widget/LinearLayout;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 322
    .end local v9    # "jok":Landroid/text/SpannableString;
    .end local v10    # "jokLate":Landroid/text/SpannableString;
    .end local v11    # "jokNone":Landroid/text/SpannableString;
    .end local v12    # "mJokLateSize":Lcom/lzx/iteam/widget/TextViewSpan;
    .end local v13    # "mJokNoneSize":Lcom/lzx/iteam/widget/TextViewSpan;
    .end local v14    # "mJokSize":Lcom/lzx/iteam/widget/TextViewSpan;
    :catch_0
    move-exception v7

    .line 323
    .local v7, "e":Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_3

    .line 331
    .end local v7    # "e":Lorg/json/JSONException;
    .restart local v8    # "i":I
    .local v9, "jok":Lorg/json/JSONArray;
    :cond_8
    :try_start_4
    new-instance v5, Lcom/lzx/iteam/bean/EventRegBean;

    invoke-direct {v5}, Lcom/lzx/iteam/bean/EventRegBean;-><init>()V

    .line 332
    .local v5, "bean":Lcom/lzx/iteam/bean/EventRegBean;
    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    const-string v20, "user_id"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/lzx/iteam/bean/EventRegBean;->setUid(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    const-string v20, "user_name"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/lzx/iteam/bean/EventRegBean;->setName(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    const-string v20, "user_image"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/lzx/iteam/bean/EventRegBean;->setImage(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    const-string v20, "reg_time"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/lzx/iteam/bean/EventRegBean;->setRegTime(Ljava/lang/String;)V

    .line 336
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/lzx/iteam/bean/EventRegBean;->setIsTimeOut(Z)V

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mJok:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$34(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    .line 330
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    .line 339
    .end local v5    # "bean":Lcom/lzx/iteam/bean/EventRegBean;
    .end local v8    # "i":I
    .end local v9    # "jok":Lorg/json/JSONArray;
    :catch_1
    move-exception v7

    .line 340
    .restart local v7    # "e":Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_5

    .line 345
    .end local v7    # "e":Lorg/json/JSONException;
    .restart local v8    # "i":I
    .local v10, "jokLate":Lorg/json/JSONArray;
    :cond_9
    :try_start_5
    new-instance v5, Lcom/lzx/iteam/bean/EventRegBean;

    invoke-direct {v5}, Lcom/lzx/iteam/bean/EventRegBean;-><init>()V

    .line 346
    .restart local v5    # "bean":Lcom/lzx/iteam/bean/EventRegBean;
    invoke-virtual {v10, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    const-string v20, "user_id"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/lzx/iteam/bean/EventRegBean;->setUid(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v10, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    const-string v20, "user_name"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/lzx/iteam/bean/EventRegBean;->setName(Ljava/lang/String;)V

    .line 348
    invoke-virtual {v10, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    const-string v20, "user_image"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/lzx/iteam/bean/EventRegBean;->setImage(Ljava/lang/String;)V

    .line 349
    invoke-virtual {v10, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    const-string v20, "reg_time"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/lzx/iteam/bean/EventRegBean;->setRegTime(Ljava/lang/String;)V

    .line 350
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/lzx/iteam/bean/EventRegBean;->setIsTimeOut(Z)V

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mJokLate:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$35(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    .line 344
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_6

    .line 353
    .end local v5    # "bean":Lcom/lzx/iteam/bean/EventRegBean;
    .end local v8    # "i":I
    .end local v10    # "jokLate":Lorg/json/JSONArray;
    :catch_2
    move-exception v7

    .line 354
    .restart local v7    # "e":Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_7

    .line 359
    .end local v7    # "e":Lorg/json/JSONException;
    :catch_3
    move-exception v7

    .line 360
    .restart local v7    # "e":Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_8

    .line 389
    .end local v7    # "e":Lorg/json/JSONException;
    .end local v15    # "object":Lorg/json/JSONObject;
    .end local v17    # "result":Lorg/json/JSONObject;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/util/List;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->access$13(Lcom/lzx/iteam/EventDetailContentActivity;Ljava/util/List;)V

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mReplyDate:Ljava/util/List;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$6(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_b

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mAdapter:Lcom/lzx/iteam/adapter/EventReplyAdapter;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$8(Lcom/lzx/iteam/EventDetailContentActivity;)Lcom/lzx/iteam/adapter/EventReplyAdapter;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v20, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mReplyDate:Ljava/util/List;
    invoke-static/range {v20 .. v20}, Lcom/lzx/iteam/EventDetailContentActivity;->access$6(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/util/List;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/lzx/iteam/adapter/EventReplyAdapter;->bindData(Ljava/util/List;)V

    .line 395
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mTvReplyCount:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$7(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/widget/TextView;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "\u5171\u6709"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v21, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mReplyDate:Ljava/util/List;
    invoke-static/range {v21 .. v21}, Lcom/lzx/iteam/EventDetailContentActivity;->access$6(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\u6761\u56de\u590d"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 398
    :cond_c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    const/16 v20, 0x1b58

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/String;

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->show()V

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-static/range {v19 .. v20}, Lcom/lzx/iteam/EventDetailContentActivity;->access$44(Lcom/lzx/iteam/EventDetailContentActivity;Z)V

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$4(Lcom/lzx/iteam/EventDetailContentActivity;)Lcom/lzx/iteam/provider/CloudDBOperation;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v20, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mEventId:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/lzx/iteam/EventDetailContentActivity;->access$5(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/lzx/iteam/provider/CloudDBOperation;->deleteEventByEventId(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 403
    :cond_d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    const/16 v20, 0x1f41

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    const v20, 0x7f080042

    .line 405
    const/16 v21, 0x1

    .line 404
    invoke-static/range {v19 .. v21}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v19

    .line 405
    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 406
    :cond_e
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    const/16 v20, 0x3ea

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    const/16 v20, 0x3eb

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    const/16 v20, 0x3ed

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    .line 407
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$45(Lcom/lzx/iteam/EventDetailContentActivity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v20

    const-string v21, "\u63d0\u793a"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v22, v0

    const v23, 0x7f08002c

    invoke-virtual/range {v22 .. v23}, Lcom/lzx/iteam/EventDetailContentActivity;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/lzx/iteam/util/AllDialogUtil;->titleMsgBtnStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$45(Lcom/lzx/iteam/EventDetailContentActivity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v19

    new-instance v20, Lcom/lzx/iteam/EventDetailContentActivity$2$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lzx/iteam/EventDetailContentActivity$2$1;-><init>(Lcom/lzx/iteam/EventDetailContentActivity$2;)V

    invoke-virtual/range {v19 .. v20}, Lcom/lzx/iteam/util/AllDialogUtil;->setOnDialogListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;)V

    goto/16 :goto_0

    .line 431
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/String;

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 436
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mDialog:Landroid/app/Dialog;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$11(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/app/Dialog;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Dialog;->dismiss()V

    .line 437
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    if-nez v19, :cond_16

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->hasJoin:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$46(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "1"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_14

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    const-string v20, "2"

    invoke-static/range {v19 .. v20}, Lcom/lzx/iteam/EventDetailContentActivity;->access$47(Lcom/lzx/iteam/EventDetailContentActivity;Ljava/lang/String;)V

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mIvActiviteImage:Landroid/widget/ImageView;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$48(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/widget/ImageView;

    move-result-object v19

    const v20, 0x7f020108

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mTvActiteApply:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$49(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/widget/TextView;

    move-result-object v19

    const-string v20, "\u60a8\u4e0d\u80fd\u53c2\u4e0e"

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mTvActiteApply:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$49(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/widget/TextView;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mApplyCount:I
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$50(Lcom/lzx/iteam/EventDetailContentActivity;)I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    invoke-static/range {v19 .. v20}, Lcom/lzx/iteam/EventDetailContentActivity;->access$15(Lcom/lzx/iteam/EventDetailContentActivity;I)V

    .line 444
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mDetailBeans:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$17(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-lt v8, v0, :cond_12

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mActiveDetailAdapter:Lcom/lzx/iteam/adapter/ActiveDetailAdapter;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$20(Lcom/lzx/iteam/EventDetailContentActivity;)Lcom/lzx/iteam/adapter/ActiveDetailAdapter;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/lzx/iteam/adapter/ActiveDetailAdapter;->notifyDataSetChanged()V

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mTvCount:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$21(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/widget/TextView;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v21, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mDetailBeans:Ljava/util/ArrayList;
    invoke-static/range {v21 .. v21}, Lcom/lzx/iteam/EventDetailContentActivity;->access$17(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mDetailBeans:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$17(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-nez v19, :cond_11

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mLlActiveList:Landroid/widget/LinearLayout;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$22(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/widget/LinearLayout;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 456
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$4(Lcom/lzx/iteam/EventDetailContentActivity;)Lcom/lzx/iteam/provider/CloudDBOperation;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v20, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mEventId:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/lzx/iteam/EventDetailContentActivity;->access$5(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mApplyCount:I
    invoke-static/range {v22 .. v22}, Lcom/lzx/iteam/EventDetailContentActivity;->access$50(Lcom/lzx/iteam/EventDetailContentActivity;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->hasJoin:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/lzx/iteam/EventDetailContentActivity;->access$46(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v19 .. v22}, Lcom/lzx/iteam/provider/CloudDBOperation;->updateEventApplyCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 445
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mDetailBeans:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$17(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/lzx/iteam/bean/aidl/ActiveDetailBean;

    invoke-virtual/range {v19 .. v19}, Lcom/lzx/iteam/bean/aidl/ActiveDetailBean;->getUid()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v20, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mUid:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/lzx/iteam/EventDetailContentActivity;->access$51(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_13

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mDetailBeans:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$17(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 444
    :cond_13
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_9

    .line 457
    .end local v8    # "i":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->hasJoin:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$46(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "0"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    const-string v20, "1"

    invoke-static/range {v19 .. v20}, Lcom/lzx/iteam/EventDetailContentActivity;->access$47(Lcom/lzx/iteam/EventDetailContentActivity;Ljava/lang/String;)V

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mIvActiviteImage:Landroid/widget/ImageView;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$48(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/widget/ImageView;

    move-result-object v19

    const v20, 0x7f0200fd

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mTvActiteApply:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$49(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/widget/TextView;

    move-result-object v19

    const-string v20, "\u9000\u51fa\u6d3b\u52a8"

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mApplyCount:I
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$50(Lcom/lzx/iteam/EventDetailContentActivity;)I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    invoke-static/range {v19 .. v20}, Lcom/lzx/iteam/EventDetailContentActivity;->access$15(Lcom/lzx/iteam/EventDetailContentActivity;I)V

    .line 462
    new-instance v5, Lcom/lzx/iteam/bean/aidl/ActiveDetailBean;

    invoke-direct {v5}, Lcom/lzx/iteam/bean/aidl/ActiveDetailBean;-><init>()V

    .line 463
    .local v5, "bean":Lcom/lzx/iteam/bean/aidl/ActiveDetailBean;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mNameCard:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$52(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/util/ArrayList;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/lzx/iteam/bean/aidl/ActiveDetailBean;->setPhone(Ljava/lang/String;)V

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mNameCard:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$52(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/util/ArrayList;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/lzx/iteam/bean/aidl/ActiveDetailBean;->setName(Ljava/lang/String;)V

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mNameCard:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$52(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/util/ArrayList;

    move-result-object v19

    const/16 v20, 0x7

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/lzx/iteam/bean/aidl/ActiveDetailBean;->setImage(Ljava/lang/String;)V

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mUid:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$51(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/lzx/iteam/bean/aidl/ActiveDetailBean;->setUid(Ljava/lang/String;)V

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mDetailBeans:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$17(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mActiveDetailAdapter:Lcom/lzx/iteam/adapter/ActiveDetailAdapter;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$20(Lcom/lzx/iteam/EventDetailContentActivity;)Lcom/lzx/iteam/adapter/ActiveDetailAdapter;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/lzx/iteam/adapter/ActiveDetailAdapter;->notifyDataSetChanged()V

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mTvCount:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$21(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/widget/TextView;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v21, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mDetailBeans:Ljava/util/ArrayList;
    invoke-static/range {v21 .. v21}, Lcom/lzx/iteam/EventDetailContentActivity;->access$17(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mDetailBeans:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$17(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_15

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mLlActiveList:Landroid/widget/LinearLayout;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$22(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/widget/LinearLayout;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 475
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$4(Lcom/lzx/iteam/EventDetailContentActivity;)Lcom/lzx/iteam/provider/CloudDBOperation;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v20, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mEventId:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/lzx/iteam/EventDetailContentActivity;->access$5(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mApplyCount:I
    invoke-static/range {v22 .. v22}, Lcom/lzx/iteam/EventDetailContentActivity;->access$50(Lcom/lzx/iteam/EventDetailContentActivity;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->hasJoin:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/lzx/iteam/EventDetailContentActivity;->access$46(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v19 .. v22}, Lcom/lzx/iteam/provider/CloudDBOperation;->updateEventApplyCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 479
    .end local v5    # "bean":Lcom/lzx/iteam/bean/aidl/ActiveDetailBean;
    :cond_16
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    const/16 v20, 0x1f41

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_17

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    const v20, 0x7f080042

    .line 481
    const/16 v21, 0x1

    .line 480
    invoke-static/range {v19 .. v21}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v19

    .line 481
    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 483
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/String;

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 488
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mDialog:Landroid/app/Dialog;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$11(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/app/Dialog;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Dialog;->dismiss()V

    .line 489
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    if-nez v19, :cond_19

    .line 490
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lorg/json/JSONObject;

    .line 492
    .restart local v17    # "result":Lorg/json/JSONObject;
    :try_start_6
    const-string v19, "data"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    const-string v20, "voted"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 493
    .local v18, "vote":Ljava/lang/String;
    sput-object v18, Lcom/lzx/iteam/EventDetailContentActivity;->mVote:Ljava/lang/String;

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$4(Lcom/lzx/iteam/EventDetailContentActivity;)Lcom/lzx/iteam/provider/CloudDBOperation;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v20, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mEventId:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/lzx/iteam/EventDetailContentActivity;->access$5(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/provider/CloudDBOperation;->updateEventVote(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->charAt(I)C

    move-result v19

    add-int/lit8 v8, v19, -0x41

    .line 496
    .restart local v8    # "i":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mVoteReplyDate:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$24(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/lzx/iteam/bean/EventVoteBean;

    invoke-virtual/range {v19 .. v19}, Lcom/lzx/iteam/bean/EventVoteBean;->getCount()I

    move-result v19

    add-int/lit8 v6, v19, 0x1

    .line 497
    .local v6, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mHasVoteCount:I
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$25(Lcom/lzx/iteam/EventDetailContentActivity;)I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    invoke-static/range {v19 .. v20}, Lcom/lzx/iteam/EventDetailContentActivity;->access$26(Lcom/lzx/iteam/EventDetailContentActivity;I)V

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mTvCount:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$21(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/widget/TextView;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v21, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mHasVoteCount:I
    invoke-static/range {v21 .. v21}, Lcom/lzx/iteam/EventDetailContentActivity;->access$25(Lcom/lzx/iteam/EventDetailContentActivity;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mVoteReplyDate:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$24(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/lzx/iteam/bean/EventVoteBean;

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/bean/EventVoteBean;->setCount(I)V

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mVoteDetailAdapter:Lcom/lzx/iteam/adapter/VoteDetailAdapter;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$30(Lcom/lzx/iteam/EventDetailContentActivity;)Lcom/lzx/iteam/adapter/VoteDetailAdapter;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v20, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mVoteReplyDate:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/lzx/iteam/EventDetailContentActivity;->access$24(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v21, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mHasVoteCount:I
    invoke-static/range {v21 .. v21}, Lcom/lzx/iteam/EventDetailContentActivity;->access$25(Lcom/lzx/iteam/EventDetailContentActivity;)I

    move-result v21

    invoke-virtual/range {v19 .. v21}, Lcom/lzx/iteam/adapter/VoteDetailAdapter;->bindData(Ljava/util/ArrayList;I)V

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mLvVoteTop:Lcom/lzx/iteam/widget/MyListView;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$53(Lcom/lzx/iteam/EventDetailContentActivity;)Lcom/lzx/iteam/widget/MyListView;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Lcom/lzx/iteam/widget/MyListView;->setVisibility(I)V

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mLvVoteBottom:Lcom/lzx/iteam/widget/MyListView;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$29(Lcom/lzx/iteam/EventDetailContentActivity;)Lcom/lzx/iteam/widget/MyListView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/lzx/iteam/widget/MyListView;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_18

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mLvVoteBottom:Lcom/lzx/iteam/widget/MyListView;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$29(Lcom/lzx/iteam/EventDetailContentActivity;)Lcom/lzx/iteam/widget/MyListView;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/lzx/iteam/widget/MyListView;->setVisibility(I)V

    .line 505
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mLlCount:Landroid/widget/LinearLayout;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$54(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/widget/LinearLayout;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4

    .line 509
    .end local v6    # "count":I
    .end local v8    # "i":I
    .end local v18    # "vote":Ljava/lang/String;
    :goto_a
    const/16 v19, -0x1

    sput v19, Lcom/lzx/iteam/EventDetailContentActivity;->index:I

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mVoteTopAdapter:Lcom/lzx/iteam/adapter/VoteTopAdapter;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$55(Lcom/lzx/iteam/EventDetailContentActivity;)Lcom/lzx/iteam/adapter/VoteTopAdapter;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/lzx/iteam/adapter/VoteTopAdapter;->setShowCheck(Z)V

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mVoteTopAdapter:Lcom/lzx/iteam/adapter/VoteTopAdapter;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$55(Lcom/lzx/iteam/EventDetailContentActivity;)Lcom/lzx/iteam/adapter/VoteTopAdapter;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/lzx/iteam/adapter/VoteTopAdapter;->notifyDataSetChanged()V

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mTvVoteApply:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$56(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/widget/TextView;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mTvVoteApply:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/EventDetailContentActivity;->access$56(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/widget/TextView;

    move-result-object v19

    const-string v20, "\u5df2\u6295\u7968"

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 506
    :catch_4
    move-exception v7

    .line 507
    .restart local v7    # "e":Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_a

    .line 517
    .end local v7    # "e":Lorg/json/JSONException;
    .end local v17    # "result":Lorg/json/JSONObject;
    :cond_19
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    const/16 v20, 0x1f41

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1a

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v19, v0

    const v20, 0x7f080042

    .line 519
    const/16 v21, 0x1

    .line 518
    invoke-static/range {v19 .. v21}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v19

    .line 519
    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 521
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventDetailContentActivity$2;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/String;

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 259
    :pswitch_data_0
    .packed-switch 0x1389
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
