.class Lcom/lzx/iteam/EventsFragment$6;
.super Ljava/lang/Object;
.source "EventsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/EventsFragment;->initView(Landroid/view/View;)V
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
.field final synthetic this$0:Lcom/lzx/iteam/EventsFragment;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/EventsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/EventsFragment$6;->this$0:Lcom/lzx/iteam/EventsFragment;

    .line 709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 17
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
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
    .line 712
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v10, Lcom/lzx/iteam/bean/EventListData;

    invoke-direct {v10}, Lcom/lzx/iteam/bean/EventListData;-><init>()V

    .line 713
    .local v10, "eventData":Lcom/lzx/iteam/bean/EventListData;
    packed-switch p3, :pswitch_data_0

    .line 767
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lzx/iteam/EventsFragment$6;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->mGvSendGrid:Landroid/widget/GridView;
    invoke-static {v15}, Lcom/lzx/iteam/EventsFragment;->access$23(Lcom/lzx/iteam/EventsFragment;)Landroid/widget/GridView;

    move-result-object v15

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/widget/GridView;->setVisibility(I)V

    .line 768
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lzx/iteam/EventsFragment$6;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->mEventsList:Landroid/widget/ListView;
    invoke-static {v15}, Lcom/lzx/iteam/EventsFragment;->access$8(Lcom/lzx/iteam/EventsFragment;)Landroid/widget/ListView;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ListView;->setVisibility(I)V

    .line 769
    return-void

    .line 715
    :pswitch_0
    new-instance v12, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lzx/iteam/EventsFragment$6;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v15}, Lcom/lzx/iteam/EventsFragment;->access$10(Lcom/lzx/iteam/EventsFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v15

    const-class v16, Lcom/lzx/iteam/CreateNewEventActivity;

    move-object/from16 v0, v16

    invoke-direct {v12, v15, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 716
    .local v12, "notice":Landroid/content/Intent;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 717
    .local v4, "bundle1":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lzx/iteam/EventsFragment$6;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->mSendAdapter:Lcom/lzx/iteam/adapter/EventSendGridAdapter;
    invoke-static {v15}, Lcom/lzx/iteam/EventsFragment;->access$22(Lcom/lzx/iteam/EventsFragment;)Lcom/lzx/iteam/adapter/EventSendGridAdapter;

    move-result-object v15

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Lcom/lzx/iteam/adapter/EventSendGridAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "eventData":Lcom/lzx/iteam/bean/EventListData;
    check-cast v10, Lcom/lzx/iteam/bean/EventListData;

    .line 718
    .restart local v10    # "eventData":Lcom/lzx/iteam/bean/EventListData;
    const-string v15, "event_bundle"

    invoke-virtual {v4, v15, v10}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 719
    const-string v15, "event_msg"

    invoke-virtual {v12, v15, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 720
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lzx/iteam/EventsFragment$6;->this$0:Lcom/lzx/iteam/EventsFragment;

    invoke-virtual {v15, v12}, Lcom/lzx/iteam/EventsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 723
    .end local v4    # "bundle1":Landroid/os/Bundle;
    .end local v12    # "notice":Landroid/content/Intent;
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lzx/iteam/EventsFragment$6;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v15}, Lcom/lzx/iteam/EventsFragment;->access$10(Lcom/lzx/iteam/EventsFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v15

    const-class v16, Lcom/lzx/iteam/CreateNewEventActivity;

    move-object/from16 v0, v16

    invoke-direct {v1, v15, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 724
    .local v1, "activity":Landroid/content/Intent;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 725
    .local v5, "bundle2":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lzx/iteam/EventsFragment$6;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->mSendAdapter:Lcom/lzx/iteam/adapter/EventSendGridAdapter;
    invoke-static {v15}, Lcom/lzx/iteam/EventsFragment;->access$22(Lcom/lzx/iteam/EventsFragment;)Lcom/lzx/iteam/adapter/EventSendGridAdapter;

    move-result-object v15

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Lcom/lzx/iteam/adapter/EventSendGridAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "eventData":Lcom/lzx/iteam/bean/EventListData;
    check-cast v10, Lcom/lzx/iteam/bean/EventListData;

    .line 726
    .restart local v10    # "eventData":Lcom/lzx/iteam/bean/EventListData;
    const-string v15, "event_bundle"

    invoke-virtual {v5, v15, v10}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 727
    const-string v15, "event_msg"

    invoke-virtual {v1, v15, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 728
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lzx/iteam/EventsFragment$6;->this$0:Lcom/lzx/iteam/EventsFragment;

    invoke-virtual {v15, v1}, Lcom/lzx/iteam/EventsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 731
    .end local v1    # "activity":Landroid/content/Intent;
    .end local v5    # "bundle2":Landroid/os/Bundle;
    :pswitch_2
    new-instance v14, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lzx/iteam/EventsFragment$6;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v15}, Lcom/lzx/iteam/EventsFragment;->access$10(Lcom/lzx/iteam/EventsFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v15

    const-class v16, Lcom/lzx/iteam/CreateNewEventActivity;

    invoke-direct/range {v14 .. v16}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 732
    .local v14, "vote":Landroid/content/Intent;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 733
    .local v6, "bundle3":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lzx/iteam/EventsFragment$6;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->mSendAdapter:Lcom/lzx/iteam/adapter/EventSendGridAdapter;
    invoke-static {v15}, Lcom/lzx/iteam/EventsFragment;->access$22(Lcom/lzx/iteam/EventsFragment;)Lcom/lzx/iteam/adapter/EventSendGridAdapter;

    move-result-object v15

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Lcom/lzx/iteam/adapter/EventSendGridAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "eventData":Lcom/lzx/iteam/bean/EventListData;
    check-cast v10, Lcom/lzx/iteam/bean/EventListData;

    .line 734
    .restart local v10    # "eventData":Lcom/lzx/iteam/bean/EventListData;
    const-string v15, "event_bundle"

    invoke-virtual {v6, v15, v10}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 735
    const-string v15, "event_msg"

    invoke-virtual {v14, v15, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 736
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lzx/iteam/EventsFragment$6;->this$0:Lcom/lzx/iteam/EventsFragment;

    invoke-virtual {v15, v14}, Lcom/lzx/iteam/EventsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 739
    .end local v6    # "bundle3":Landroid/os/Bundle;
    .end local v14    # "vote":Landroid/content/Intent;
    :pswitch_3
    new-instance v11, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lzx/iteam/EventsFragment$6;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v15}, Lcom/lzx/iteam/EventsFragment;->access$10(Lcom/lzx/iteam/EventsFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v15

    const-class v16, Lcom/lzx/iteam/CreateNewEventActivity;

    move-object/from16 v0, v16

    invoke-direct {v11, v15, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 740
    .local v11, "note":Landroid/content/Intent;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 741
    .local v7, "bundle4":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lzx/iteam/EventsFragment$6;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->mSendAdapter:Lcom/lzx/iteam/adapter/EventSendGridAdapter;
    invoke-static {v15}, Lcom/lzx/iteam/EventsFragment;->access$22(Lcom/lzx/iteam/EventsFragment;)Lcom/lzx/iteam/adapter/EventSendGridAdapter;

    move-result-object v15

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Lcom/lzx/iteam/adapter/EventSendGridAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "eventData":Lcom/lzx/iteam/bean/EventListData;
    check-cast v10, Lcom/lzx/iteam/bean/EventListData;

    .line 742
    .restart local v10    # "eventData":Lcom/lzx/iteam/bean/EventListData;
    const-string v15, "event_bundle"

    invoke-virtual {v7, v15, v10}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 743
    const-string v15, "event_msg"

    invoke-virtual {v11, v15, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 744
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lzx/iteam/EventsFragment$6;->this$0:Lcom/lzx/iteam/EventsFragment;

    invoke-virtual {v15, v11}, Lcom/lzx/iteam/EventsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 747
    .end local v7    # "bundle4":Landroid/os/Bundle;
    .end local v11    # "note":Landroid/content/Intent;
    :pswitch_4
    new-instance v13, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lzx/iteam/EventsFragment$6;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v15}, Lcom/lzx/iteam/EventsFragment;->access$10(Lcom/lzx/iteam/EventsFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v15

    const-class v16, Lcom/lzx/iteam/ScheduleCalendarActivity;

    move-object/from16 v0, v16

    invoke-direct {v13, v15, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 748
    .local v13, "schedule":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lzx/iteam/EventsFragment$6;->this$0:Lcom/lzx/iteam/EventsFragment;

    invoke-virtual {v15, v13}, Lcom/lzx/iteam/EventsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 751
    .end local v13    # "schedule":Landroid/content/Intent;
    :pswitch_5
    new-instance v2, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lzx/iteam/EventsFragment$6;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v15}, Lcom/lzx/iteam/EventsFragment;->access$10(Lcom/lzx/iteam/EventsFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v15

    const-class v16, Lcom/lzx/iteam/ApprovalActivity;

    move-object/from16 v0, v16

    invoke-direct {v2, v15, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 752
    .local v2, "approval":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lzx/iteam/EventsFragment$6;->this$0:Lcom/lzx/iteam/EventsFragment;

    invoke-virtual {v15, v2}, Lcom/lzx/iteam/EventsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 755
    .end local v2    # "approval":Landroid/content/Intent;
    :pswitch_6
    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lzx/iteam/EventsFragment$6;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v15}, Lcom/lzx/iteam/EventsFragment;->access$10(Lcom/lzx/iteam/EventsFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v15

    const-class v16, Lcom/lzx/iteam/AttendanceMainActivity;

    move-object/from16 v0, v16

    invoke-direct {v3, v15, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 756
    .local v3, "attentdance":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lzx/iteam/EventsFragment$6;->this$0:Lcom/lzx/iteam/EventsFragment;

    invoke-virtual {v15, v3}, Lcom/lzx/iteam/EventsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 759
    .end local v3    # "attentdance":Landroid/content/Intent;
    :pswitch_7
    new-instance v9, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lzx/iteam/EventsFragment$6;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v15}, Lcom/lzx/iteam/EventsFragment;->access$10(Lcom/lzx/iteam/EventsFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v15

    const-class v16, Lcom/lzx/iteam/CreateNewEventActivity;

    move-object/from16 v0, v16

    invoke-direct {v9, v15, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 760
    .local v9, "event":Landroid/content/Intent;
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 761
    .local v8, "bundle5":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lzx/iteam/EventsFragment$6;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->mSendAdapter:Lcom/lzx/iteam/adapter/EventSendGridAdapter;
    invoke-static {v15}, Lcom/lzx/iteam/EventsFragment;->access$22(Lcom/lzx/iteam/EventsFragment;)Lcom/lzx/iteam/adapter/EventSendGridAdapter;

    move-result-object v15

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Lcom/lzx/iteam/adapter/EventSendGridAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "eventData":Lcom/lzx/iteam/bean/EventListData;
    check-cast v10, Lcom/lzx/iteam/bean/EventListData;

    .line 762
    .restart local v10    # "eventData":Lcom/lzx/iteam/bean/EventListData;
    const-string v15, "event_bundle"

    invoke-virtual {v8, v15, v10}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 763
    const-string v15, "event_msg"

    invoke-virtual {v9, v15, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 764
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lzx/iteam/EventsFragment$6;->this$0:Lcom/lzx/iteam/EventsFragment;

    invoke-virtual {v15, v9}, Lcom/lzx/iteam/EventsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 713
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
