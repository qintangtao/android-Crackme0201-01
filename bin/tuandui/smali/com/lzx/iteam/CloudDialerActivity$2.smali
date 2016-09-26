.class Lcom/lzx/iteam/CloudDialerActivity$2;
.super Landroid/os/Handler;
.source "CloudDialerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/CloudDialerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/CloudDialerActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/CloudDialerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/CloudDialerActivity$2;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    .line 5530
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 5532
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 5695
    :goto_0
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 5696
    :goto_1
    return-void

    .line 5534
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CloudDialerActivity$2;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->flagSize:I
    invoke-static {v2}, Lcom/lzx/iteam/CloudDialerActivity;->access$14(Lcom/lzx/iteam/CloudDialerActivity;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/lzx/iteam/CloudDialerActivity;->access$15(Lcom/lzx/iteam/CloudDialerActivity;I)V

    .line 5535
    new-instance v13, Landroid/os/Message;

    invoke-direct {v13}, Landroid/os/Message;-><init>()V

    .line 5536
    .local v13, "message":Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v13, Landroid/os/Message;->what:I

    .line 5537
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CloudDialerActivity$2;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->arg1:I
    invoke-static {v2}, Lcom/lzx/iteam/CloudDialerActivity;->access$16(Lcom/lzx/iteam/CloudDialerActivity;)I

    move-result v2

    iput v2, v13, Landroid/os/Message;->arg1:I

    .line 5538
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CloudDialerActivity$2;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->arg2:I
    invoke-static {v2}, Lcom/lzx/iteam/CloudDialerActivity;->access$17(Lcom/lzx/iteam/CloudDialerActivity;)I

    move-result v2

    iput v2, v13, Landroid/os/Message;->arg2:I

    .line 5539
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CloudDialerActivity$2;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->obj:Ljava/lang/Object;
    invoke-static {v2}, Lcom/lzx/iteam/CloudDialerActivity;->access$18(Lcom/lzx/iteam/CloudDialerActivity;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5540
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CloudDialerActivity$2;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v2, v2, Lcom/lzx/iteam/CloudDialerActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 5543
    .end local v13    # "message":Landroid/os/Message;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CloudDialerActivity$2;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->flagSize:I
    invoke-static {v2}, Lcom/lzx/iteam/CloudDialerActivity;->access$14(Lcom/lzx/iteam/CloudDialerActivity;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/lzx/iteam/CloudDialerActivity;->access$15(Lcom/lzx/iteam/CloudDialerActivity;I)V

    .line 5544
    new-instance v14, Landroid/os/Message;

    invoke-direct {v14}, Landroid/os/Message;-><init>()V

    .line 5545
    .local v14, "message1":Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v14, Landroid/os/Message;->what:I

    .line 5546
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    iput v2, v14, Landroid/os/Message;->arg1:I

    .line 5547
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    iput v2, v14, Landroid/os/Message;->arg2:I

    .line 5548
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v2, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5549
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CloudDialerActivity$2;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-static {v2, v3}, Lcom/lzx/iteam/CloudDialerActivity;->access$19(Lcom/lzx/iteam/CloudDialerActivity;I)V

    .line 5550
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CloudDialerActivity$2;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    invoke-static {v2, v3}, Lcom/lzx/iteam/CloudDialerActivity;->access$20(Lcom/lzx/iteam/CloudDialerActivity;I)V

    .line 5551
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CloudDialerActivity$2;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/lzx/iteam/CloudDialerActivity;->access$21(Lcom/lzx/iteam/CloudDialerActivity;Ljava/lang/Object;)V

    .line 5552
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CloudDialerActivity$2;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v2, v2, Lcom/lzx/iteam/CloudDialerActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 5580
    .end local v14    # "message1":Landroid/os/Message;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/util/Map;

    .line 5582
    .local v16, "object":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v17, 0x0

    .line 5583
    .local v17, "success_num":Ljava/lang/String;
    const/4 v11, 0x0

    .line 5584
    .local v11, "err_num":Ljava/lang/String;
    const/4 v10, 0x0

    .line 5585
    .local v10, "err_name":Ljava/lang/String;
    const-string v15, ""

    .line 5590
    .local v15, "msgNote":Ljava/lang/String;
    :try_start_0
    const-string v2, "success_num"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object/from16 v17, v0

    .line 5591
    const-string v2, "err_num"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v11, v0

    .line 5592
    const-string v2, "err_contact_names"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    .line 5594
    const-string v2, "0"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5595
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6210\u529f\u5bfc\u5165"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u4eba,\u5931\u8d25"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u4eba"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 5600
    :goto_2
    const-string v2, "create_group_import_contact"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/CloudDialerActivity$2;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mAction:Ljava/lang/String;
    invoke-static {v3}, Lcom/lzx/iteam/CloudDialerActivity;->access$22(Lcom/lzx/iteam/CloudDialerActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CloudDialerActivity$2;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;
    invoke-static {v2}, Lcom/lzx/iteam/CloudDialerActivity;->access$6(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v2

    const-string v3, "\u63d0\u793a"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/CloudDialerActivity$2;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    const v5, 0x7f08002c

    invoke-virtual {v4, v5}, Lcom/lzx/iteam/CloudDialerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v15, v4}, Lcom/lzx/iteam/util/AllDialogUtil;->titleMsgBtnStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 5604
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CloudDialerActivity$2;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;
    invoke-static {v2}, Lcom/lzx/iteam/CloudDialerActivity;->access$6(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v2

    new-instance v3, Lcom/lzx/iteam/CloudDialerActivity$2$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/lzx/iteam/CloudDialerActivity$2$1;-><init>(Lcom/lzx/iteam/CloudDialerActivity$2;)V

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/util/AllDialogUtil;->setOnDialogListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;)V

    .line 5618
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CloudDialerActivity$2;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v2, v2, Lcom/lzx/iteam/CloudDialerActivity;->mTreeFrag:Lcom/lzx/iteam/TreeFrag;

    if-eqz v2, :cond_1

    .line 5619
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CloudDialerActivity$2;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v2, v2, Lcom/lzx/iteam/CloudDialerActivity;->mTreeFrag:Lcom/lzx/iteam/TreeFrag;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/TreeFrag;->addcontactnum(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 5629
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CloudDialerActivity$2;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-boolean v2, v2, Lcom/lzx/iteam/CloudDialerActivity;->showDepartment:Z

    if-nez v2, :cond_3

    .line 5630
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CloudDialerActivity$2;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v2, v2, Lcom/lzx/iteam/CloudDialerActivity;->ivChange:Landroid/widget/ImageView;

    const v3, 0x7f02020b

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 5635
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CloudDialerActivity$2;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    sget-object v3, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CLOUD_CONTACT:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    iput-object v3, v2, Lcom/lzx/iteam/CloudDialerActivity;->mListStatus:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    .line 5640
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CloudDialerActivity$2;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v2, v2, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    if-eqz v2, :cond_4

    .line 5641
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CloudDialerActivity$2;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/CloudDialerActivity$2;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v3, v3, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v4, "group_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/lzx/iteam/CloudDialerActivity;->mCloudGid:J

    .line 5642
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CloudDialerActivity$2;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/CloudDialerActivity$2;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v3, v3, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v4, "group_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    .line 5643
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CloudDialerActivity$2;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/CloudDialerActivity$2;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v3, v3, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v4, "group_name"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/lzx/iteam/CloudDialerActivity;->groupName:Ljava/lang/String;

    .line 5645
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CloudDialerActivity$2;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/CloudDialerActivity$2;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v3, v3, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v4, "contact_count"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/lzx/iteam/CloudDialerActivity;->contactCount:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 5670
    :goto_5
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 5671
    .local v12, "intent":Landroid/content/Intent;
    const-string v2, "tag_id"

    const-string v3, "0"

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5672
    const-string v2, "intent_tag_name"

    const-string v3, "\u5168\u90e8\u6210\u5458"

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5673
    const-string v2, "tag_count"

    const-string v3, ""

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5674
    const-string v2, "group_id"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/CloudDialerActivity$2;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v3, v3, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5675
    const-string v2, "group_name"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/CloudDialerActivity$2;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v3, v3, Lcom/lzx/iteam/CloudDialerActivity;->groupName:Ljava/lang/String;

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5676
    const-string v2, "contact_count"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/CloudDialerActivity$2;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget v3, v3, Lcom/lzx/iteam/CloudDialerActivity;->contactCount:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5679
    const-string v2, "structure_tag_click"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5680
    sget-object v2, Lcom/lzx/iteam/CloudDialerActivity;->instance:Lcom/lzx/iteam/CloudDialerActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v12, v3}, Lcom/lzx/iteam/CloudDialerActivity;->ListRefresh(Landroid/content/Intent;I)V

    .line 5683
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CloudDialerActivity$2;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lzx/iteam/CloudDialerActivity$2;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-boolean v5, v5, Lcom/lzx/iteam/CloudDialerActivity;->showDepartment:Z

    # invokes: Lcom/lzx/iteam/CloudDialerActivity;->keyBoardVert(ZLjava/lang/String;Z)V
    invoke-static {v2, v3, v4, v5}, Lcom/lzx/iteam/CloudDialerActivity;->access$13(Lcom/lzx/iteam/CloudDialerActivity;ZLjava/lang/String;Z)V

    goto/16 :goto_0

    .line 5597
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_2
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6210\u529f\u5bfc\u5165"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u4eba,\u5931\u8d25"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u4eba,\u5931\u8d25\u7684\u4eba\u662f:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v15

    goto/16 :goto_2

    .line 5632
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CloudDialerActivity$2;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v2, v2, Lcom/lzx/iteam/CloudDialerActivity;->ivChange:Landroid/widget/ImageView;

    const v3, 0x7f02020a

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_4

    .line 5649
    :cond_4
    const-string v2, "cloud_contact_list"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/CloudDialerActivity$2;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mAction:Ljava/lang/String;
    invoke-static {v3}, Lcom/lzx/iteam/CloudDialerActivity;->access$22(Lcom/lzx/iteam/CloudDialerActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5651
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CloudDialerActivity$2;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/lzx/iteam/CloudDialerActivity;->quitBatchOperation(ZZ)V

    .line 5652
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CloudDialerActivity$2;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/CloudDialerActivity$2;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-wide v4, v3, Lcom/lzx/iteam/CloudDialerActivity;->mCloudGid:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lzx/iteam/CloudDialerActivity$2;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v5, v5, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    const/16 v6, 0xbb8

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lzx/iteam/CloudDialerActivity$2;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v6, v6, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/CloudDialerActivity$2;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v7, v7, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5655
    :cond_5
    const-string v2, "create_group_import_contact"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/CloudDialerActivity$2;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mAction:Ljava/lang/String;
    invoke-static {v3}, Lcom/lzx/iteam/CloudDialerActivity;->access$22(Lcom/lzx/iteam/CloudDialerActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5656
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 5657
    .local v8, "backintent":Landroid/content/Intent;
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 5658
    .local v9, "bundle":Landroid/os/Bundle;
    const-string v2, "msgNote"

    invoke-virtual {v9, v2, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5659
    invoke-virtual {v8, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 5660
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CloudDialerActivity$2;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v8}, Lcom/lzx/iteam/CloudDialerActivity;->setResult(ILandroid/content/Intent;)V

    .line 5661
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CloudDialerActivity$2;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v2}, Lcom/lzx/iteam/CloudDialerActivity;->finish()V

    goto/16 :goto_1

    .line 5665
    .end local v8    # "backintent":Landroid/content/Intent;
    .end local v9    # "bundle":Landroid/os/Bundle;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CloudDialerActivity$2;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v2}, Lcom/lzx/iteam/CloudDialerActivity;->finish()V

    goto/16 :goto_1

    .line 5649
    :catch_0
    move-exception v2

    goto/16 :goto_5

    :catch_1
    move-exception v2

    goto/16 :goto_3

    .line 5532
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
