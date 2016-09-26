.class Lcom/lzx/iteam/ScheduleManagerActivity$1;
.super Landroid/os/Handler;
.source "ScheduleManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/ScheduleManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ScheduleManagerActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ScheduleManagerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ScheduleManagerActivity$1;->this$0:Lcom/lzx/iteam/ScheduleManagerActivity;

    .line 49
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v3, 0x7f080042

    const/16 v2, 0x1f41

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 52
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 53
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 55
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_2

    .line 56
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleManagerActivity$1;->this$0:Lcom/lzx/iteam/ScheduleManagerActivity;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v2, v1}, Lcom/lzx/iteam/ScheduleManagerActivity;->access$0(Lcom/lzx/iteam/ScheduleManagerActivity;Ljava/util/ArrayList;)V

    .line 57
    iget-object v1, p0, Lcom/lzx/iteam/ScheduleManagerActivity$1;->this$0:Lcom/lzx/iteam/ScheduleManagerActivity;

    # getter for: Lcom/lzx/iteam/ScheduleManagerActivity;->managers:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lzx/iteam/ScheduleManagerActivity;->access$1(Lcom/lzx/iteam/ScheduleManagerActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 58
    iget-object v1, p0, Lcom/lzx/iteam/ScheduleManagerActivity$1;->this$0:Lcom/lzx/iteam/ScheduleManagerActivity;

    # getter for: Lcom/lzx/iteam/ScheduleManagerActivity;->mLvMangerList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/lzx/iteam/ScheduleManagerActivity;->access$2(Lcom/lzx/iteam/ScheduleManagerActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 59
    iget-object v1, p0, Lcom/lzx/iteam/ScheduleManagerActivity$1;->this$0:Lcom/lzx/iteam/ScheduleManagerActivity;

    # getter for: Lcom/lzx/iteam/ScheduleManagerActivity;->mLlNoData:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/lzx/iteam/ScheduleManagerActivity;->access$3(Lcom/lzx/iteam/ScheduleManagerActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 60
    iget-object v1, p0, Lcom/lzx/iteam/ScheduleManagerActivity$1;->this$0:Lcom/lzx/iteam/ScheduleManagerActivity;

    # getter for: Lcom/lzx/iteam/ScheduleManagerActivity;->mAdapter:Lcom/lzx/iteam/adapter/ScheduleManagerAdapter;
    invoke-static {v1}, Lcom/lzx/iteam/ScheduleManagerActivity;->access$4(Lcom/lzx/iteam/ScheduleManagerActivity;)Lcom/lzx/iteam/adapter/ScheduleManagerAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/ScheduleManagerActivity$1;->this$0:Lcom/lzx/iteam/ScheduleManagerActivity;

    # getter for: Lcom/lzx/iteam/ScheduleManagerActivity;->managers:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lzx/iteam/ScheduleManagerActivity;->access$1(Lcom/lzx/iteam/ScheduleManagerActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/lzx/iteam/ScheduleManagerActivity$1;->this$0:Lcom/lzx/iteam/ScheduleManagerActivity;

    # getter for: Lcom/lzx/iteam/ScheduleManagerActivity;->flag:I
    invoke-static {v3}, Lcom/lzx/iteam/ScheduleManagerActivity;->access$5(Lcom/lzx/iteam/ScheduleManagerActivity;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/lzx/iteam/adapter/ScheduleManagerAdapter;->bindData(Ljava/util/ArrayList;I)V

    .line 61
    iget-object v1, p0, Lcom/lzx/iteam/ScheduleManagerActivity$1;->this$0:Lcom/lzx/iteam/ScheduleManagerActivity;

    # getter for: Lcom/lzx/iteam/ScheduleManagerActivity;->mLvMangerList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/lzx/iteam/ScheduleManagerActivity;->access$2(Lcom/lzx/iteam/ScheduleManagerActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/ScheduleManagerActivity$1;->this$0:Lcom/lzx/iteam/ScheduleManagerActivity;

    # getter for: Lcom/lzx/iteam/ScheduleManagerActivity;->mAdapter:Lcom/lzx/iteam/adapter/ScheduleManagerAdapter;
    invoke-static {v2}, Lcom/lzx/iteam/ScheduleManagerActivity;->access$4(Lcom/lzx/iteam/ScheduleManagerActivity;)Lcom/lzx/iteam/adapter/ScheduleManagerAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/lzx/iteam/ScheduleManagerActivity$1;->this$0:Lcom/lzx/iteam/ScheduleManagerActivity;

    # getter for: Lcom/lzx/iteam/ScheduleManagerActivity;->mLlNoData:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/lzx/iteam/ScheduleManagerActivity;->access$3(Lcom/lzx/iteam/ScheduleManagerActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 64
    iget-object v1, p0, Lcom/lzx/iteam/ScheduleManagerActivity$1;->this$0:Lcom/lzx/iteam/ScheduleManagerActivity;

    # getter for: Lcom/lzx/iteam/ScheduleManagerActivity;->mLvMangerList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/lzx/iteam/ScheduleManagerActivity;->access$2(Lcom/lzx/iteam/ScheduleManagerActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 65
    iget-object v1, p0, Lcom/lzx/iteam/ScheduleManagerActivity$1;->this$0:Lcom/lzx/iteam/ScheduleManagerActivity;

    # getter for: Lcom/lzx/iteam/ScheduleManagerActivity;->flag:I
    invoke-static {v1}, Lcom/lzx/iteam/ScheduleManagerActivity;->access$5(Lcom/lzx/iteam/ScheduleManagerActivity;)I

    move-result v1

    if-eq v1, v4, :cond_0

    .line 66
    iget-object v1, p0, Lcom/lzx/iteam/ScheduleManagerActivity$1;->this$0:Lcom/lzx/iteam/ScheduleManagerActivity;

    # getter for: Lcom/lzx/iteam/ScheduleManagerActivity;->mTvNoManager:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lzx/iteam/ScheduleManagerActivity;->access$6(Lcom/lzx/iteam/ScheduleManagerActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "\u8fd8\u6ca1\u6709\u5ba1\u6279\u4eba"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v1, p0, Lcom/lzx/iteam/ScheduleManagerActivity$1;->this$0:Lcom/lzx/iteam/ScheduleManagerActivity;

    # getter for: Lcom/lzx/iteam/ScheduleManagerActivity;->mTvNotice:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lzx/iteam/ScheduleManagerActivity;->access$7(Lcom/lzx/iteam/ScheduleManagerActivity;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0a000a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 72
    :cond_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_3

    .line 73
    iget-object v1, p0, Lcom/lzx/iteam/ScheduleManagerActivity$1;->this$0:Lcom/lzx/iteam/ScheduleManagerActivity;

    invoke-static {v1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 76
    :cond_3
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleManagerActivity$1;->this$0:Lcom/lzx/iteam/ScheduleManagerActivity;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 81
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_5

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 83
    iget-object v1, p0, Lcom/lzx/iteam/ScheduleManagerActivity$1;->this$0:Lcom/lzx/iteam/ScheduleManagerActivity;

    # getter for: Lcom/lzx/iteam/ScheduleManagerActivity;->managers:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lzx/iteam/ScheduleManagerActivity;->access$1(Lcom/lzx/iteam/ScheduleManagerActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/ScheduleManager;

    .line 84
    .local v0, "manager":Lcom/lzx/iteam/bean/ScheduleManager;
    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ScheduleManager;->getUserId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lzx/iteam/ScheduleManagerActivity$1;->this$0:Lcom/lzx/iteam/ScheduleManagerActivity;

    # getter for: Lcom/lzx/iteam/ScheduleManagerActivity;->delUserId:Ljava/lang/String;
    invoke-static {v3}, Lcom/lzx/iteam/ScheduleManagerActivity;->access$8(Lcom/lzx/iteam/ScheduleManagerActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 86
    iget-object v1, p0, Lcom/lzx/iteam/ScheduleManagerActivity$1;->this$0:Lcom/lzx/iteam/ScheduleManagerActivity;

    # getter for: Lcom/lzx/iteam/ScheduleManagerActivity;->managers:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lzx/iteam/ScheduleManagerActivity;->access$1(Lcom/lzx/iteam/ScheduleManagerActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 87
    iget-object v1, p0, Lcom/lzx/iteam/ScheduleManagerActivity$1;->this$0:Lcom/lzx/iteam/ScheduleManagerActivity;

    # getter for: Lcom/lzx/iteam/ScheduleManagerActivity;->mAdapter:Lcom/lzx/iteam/adapter/ScheduleManagerAdapter;
    invoke-static {v1}, Lcom/lzx/iteam/ScheduleManagerActivity;->access$4(Lcom/lzx/iteam/ScheduleManagerActivity;)Lcom/lzx/iteam/adapter/ScheduleManagerAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/ScheduleManagerActivity$1;->this$0:Lcom/lzx/iteam/ScheduleManagerActivity;

    # getter for: Lcom/lzx/iteam/ScheduleManagerActivity;->managers:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lzx/iteam/ScheduleManagerActivity;->access$1(Lcom/lzx/iteam/ScheduleManagerActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/lzx/iteam/ScheduleManagerActivity$1;->this$0:Lcom/lzx/iteam/ScheduleManagerActivity;

    # getter for: Lcom/lzx/iteam/ScheduleManagerActivity;->flag:I
    invoke-static {v3}, Lcom/lzx/iteam/ScheduleManagerActivity;->access$5(Lcom/lzx/iteam/ScheduleManagerActivity;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/lzx/iteam/adapter/ScheduleManagerAdapter;->bindData(Ljava/util/ArrayList;I)V

    .line 88
    iget-object v1, p0, Lcom/lzx/iteam/ScheduleManagerActivity$1;->this$0:Lcom/lzx/iteam/ScheduleManagerActivity;

    # getter for: Lcom/lzx/iteam/ScheduleManagerActivity;->managers:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lzx/iteam/ScheduleManagerActivity;->access$1(Lcom/lzx/iteam/ScheduleManagerActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/lzx/iteam/ScheduleManagerActivity$1;->this$0:Lcom/lzx/iteam/ScheduleManagerActivity;

    # getter for: Lcom/lzx/iteam/ScheduleManagerActivity;->mLlNoData:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/lzx/iteam/ScheduleManagerActivity;->access$3(Lcom/lzx/iteam/ScheduleManagerActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 90
    iget-object v1, p0, Lcom/lzx/iteam/ScheduleManagerActivity$1;->this$0:Lcom/lzx/iteam/ScheduleManagerActivity;

    # getter for: Lcom/lzx/iteam/ScheduleManagerActivity;->mLvMangerList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/lzx/iteam/ScheduleManagerActivity;->access$2(Lcom/lzx/iteam/ScheduleManagerActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 91
    iget-object v1, p0, Lcom/lzx/iteam/ScheduleManagerActivity$1;->this$0:Lcom/lzx/iteam/ScheduleManagerActivity;

    # getter for: Lcom/lzx/iteam/ScheduleManagerActivity;->flag:I
    invoke-static {v1}, Lcom/lzx/iteam/ScheduleManagerActivity;->access$5(Lcom/lzx/iteam/ScheduleManagerActivity;)I

    move-result v1

    if-eq v1, v4, :cond_0

    .line 92
    iget-object v1, p0, Lcom/lzx/iteam/ScheduleManagerActivity$1;->this$0:Lcom/lzx/iteam/ScheduleManagerActivity;

    # getter for: Lcom/lzx/iteam/ScheduleManagerActivity;->mTvNoManager:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lzx/iteam/ScheduleManagerActivity;->access$6(Lcom/lzx/iteam/ScheduleManagerActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "\u8fd8\u6ca1\u6709\u5ba1\u6279\u4eba"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 102
    .end local v0    # "manager":Lcom/lzx/iteam/bean/ScheduleManager;
    :cond_5
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_6

    .line 103
    iget-object v1, p0, Lcom/lzx/iteam/ScheduleManagerActivity$1;->this$0:Lcom/lzx/iteam/ScheduleManagerActivity;

    invoke-static {v1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 104
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 106
    :cond_6
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleManagerActivity$1;->this$0:Lcom/lzx/iteam/ScheduleManagerActivity;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
