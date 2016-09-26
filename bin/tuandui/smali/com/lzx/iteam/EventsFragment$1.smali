.class Lcom/lzx/iteam/EventsFragment$1;
.super Landroid/os/Handler;
.source "EventsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/EventsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/EventsFragment;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/EventsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/EventsFragment$1;->this$0:Lcom/lzx/iteam/EventsFragment;

    .line 91
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/EventsFragment$1;)Lcom/lzx/iteam/EventsFragment;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment$1;->this$0:Lcom/lzx/iteam/EventsFragment;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 94
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 95
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 97
    :sswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment$1;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->mResultData:Ljava/util/List;
    invoke-static {v0}, Lcom/lzx/iteam/EventsFragment;->access$0(Lcom/lzx/iteam/EventsFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment$1;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->mResultData:Ljava/util/List;
    invoke-static {v0}, Lcom/lzx/iteam/EventsFragment;->access$0(Lcom/lzx/iteam/EventsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/lzx/iteam/EventsFragment$1;->this$0:Lcom/lzx/iteam/EventsFragment;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/lzx/iteam/EventsFragment;->access$1(Lcom/lzx/iteam/EventsFragment;Ljava/util/List;)V

    .line 103
    new-instance v0, Lcom/lzx/iteam/EventsFragment$1$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/EventsFragment$1$1;-><init>(Lcom/lzx/iteam/EventsFragment$1;)V

    new-array v1, v3, [Ljava/lang/String;

    .line 118
    invoke-virtual {v0, v1}, Lcom/lzx/iteam/EventsFragment$1$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 211
    :sswitch_1
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment$1;->this$0:Lcom/lzx/iteam/EventsFragment;

    # invokes: Lcom/lzx/iteam/EventsFragment;->httpReqDlgDismiss()V
    invoke-static {v0}, Lcom/lzx/iteam/EventsFragment;->access$3(Lcom/lzx/iteam/EventsFragment;)V

    .line 212
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_4

    .line 213
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment$1;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;
    invoke-static {v0}, Lcom/lzx/iteam/EventsFragment;->access$2(Lcom/lzx/iteam/EventsFragment;)Lcom/lzx/iteam/provider/CloudDBOperation;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/EventsFragment$1;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->mEventId:Ljava/lang/String;
    invoke-static {v1}, Lcom/lzx/iteam/EventsFragment;->access$4(Lcom/lzx/iteam/EventsFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/provider/CloudDBOperation;->deleteEventByEventId(Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment$1;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->eventsListDatas:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/EventsFragment;->access$5(Lcom/lzx/iteam/EventsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/lzx/iteam/EventsFragment$1;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->mPosition:I
    invoke-static {v1}, Lcom/lzx/iteam/EventsFragment;->access$6(Lcom/lzx/iteam/EventsFragment;)I

    move-result v1

    if-le v0, v1, :cond_2

    .line 215
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment$1;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->eventsListDatas:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/EventsFragment;->access$5(Lcom/lzx/iteam/EventsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/EventsFragment$1;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->mPosition:I
    invoke-static {v1}, Lcom/lzx/iteam/EventsFragment;->access$6(Lcom/lzx/iteam/EventsFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment$1;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->eventsListDatas:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/EventsFragment;->access$5(Lcom/lzx/iteam/EventsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 219
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment$1;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->mEventAdapter:Lcom/lzx/iteam/adapter/EventsListAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/EventsFragment;->access$7(Lcom/lzx/iteam/EventsFragment;)Lcom/lzx/iteam/adapter/EventsListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment$1;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->mEventAdapter:Lcom/lzx/iteam/adapter/EventsListAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/EventsFragment;->access$7(Lcom/lzx/iteam/EventsFragment;)Lcom/lzx/iteam/adapter/EventsListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/EventsFragment$1;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->eventsListDatas:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lzx/iteam/EventsFragment;->access$5(Lcom/lzx/iteam/EventsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/adapter/EventsListAdapter;->setData(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 223
    :cond_3
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment$1;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->mEventsList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/lzx/iteam/EventsFragment;->access$8(Lcom/lzx/iteam/EventsFragment;)Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment$1;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->mEventNotice:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/lzx/iteam/EventsFragment;->access$9(Lcom/lzx/iteam/EventsFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 227
    :cond_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x1b58

    if-ne v0, v1, :cond_5

    .line 228
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment$1;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v0}, Lcom/lzx/iteam/EventsFragment;->access$10(Lcom/lzx/iteam/EventsFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 229
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment$1;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;
    invoke-static {v0}, Lcom/lzx/iteam/EventsFragment;->access$2(Lcom/lzx/iteam/EventsFragment;)Lcom/lzx/iteam/provider/CloudDBOperation;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/EventsFragment$1;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->mEventId:Ljava/lang/String;
    invoke-static {v1}, Lcom/lzx/iteam/EventsFragment;->access$4(Lcom/lzx/iteam/EventsFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/provider/CloudDBOperation;->deleteEventByEventId(Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment$1;->this$0:Lcom/lzx/iteam/EventsFragment;

    iget-object v1, p0, Lcom/lzx/iteam/EventsFragment$1;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->mType:I
    invoke-static {v1}, Lcom/lzx/iteam/EventsFragment;->access$11(Lcom/lzx/iteam/EventsFragment;)I

    move-result v1

    # invokes: Lcom/lzx/iteam/EventsFragment;->initEventsListData(I)V
    invoke-static {v0, v1}, Lcom/lzx/iteam/EventsFragment;->access$12(Lcom/lzx/iteam/EventsFragment;I)V

    goto/16 :goto_0

    .line 232
    :cond_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x1f41

    if-ne v0, v1, :cond_6

    .line 233
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment$1;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v0}, Lcom/lzx/iteam/EventsFragment;->access$10(Lcom/lzx/iteam/EventsFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v0

    const v1, 0x7f080042

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 234
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 236
    :cond_6
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment$1;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v0}, Lcom/lzx/iteam/EventsFragment;->access$10(Lcom/lzx/iteam/EventsFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 241
    :sswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment$1;->this$0:Lcom/lzx/iteam/EventsFragment;

    iget-object v1, p0, Lcom/lzx/iteam/EventsFragment$1;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->mType:I
    invoke-static {v1}, Lcom/lzx/iteam/EventsFragment;->access$11(Lcom/lzx/iteam/EventsFragment;)I

    move-result v1

    # invokes: Lcom/lzx/iteam/EventsFragment;->initEventsListData(I)V
    invoke-static {v0, v1}, Lcom/lzx/iteam/EventsFragment;->access$12(Lcom/lzx/iteam/EventsFragment;I)V

    goto/16 :goto_0

    .line 95
    nop

    :sswitch_data_0
    .sparse-switch
        0x3ea -> :sswitch_1
        0x700 -> :sswitch_2
        0x76c -> :sswitch_0
    .end sparse-switch
.end method
