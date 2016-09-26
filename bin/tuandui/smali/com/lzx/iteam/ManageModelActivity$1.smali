.class Lcom/lzx/iteam/ManageModelActivity$1;
.super Landroid/os/Handler;
.source "ManageModelActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/ManageModelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ManageModelActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ManageModelActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ManageModelActivity$1;->this$0:Lcom/lzx/iteam/ManageModelActivity;

    .line 47
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v3, 0x7f080042

    const/16 v1, 0x1f41

    const/4 v2, 0x1

    .line 50
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 51
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 87
    :goto_0
    :pswitch_0
    return-void

    .line 53
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_0

    .line 55
    iget-object v1, p0, Lcom/lzx/iteam/ManageModelActivity$1;->this$0:Lcom/lzx/iteam/ManageModelActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/lzx/iteam/ManageModelActivity;->access$0(Lcom/lzx/iteam/ManageModelActivity;Ljava/util/List;)V

    .line 56
    iget-object v0, p0, Lcom/lzx/iteam/ManageModelActivity$1;->this$0:Lcom/lzx/iteam/ManageModelActivity;

    new-instance v1, Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;

    iget-object v2, p0, Lcom/lzx/iteam/ManageModelActivity$1;->this$0:Lcom/lzx/iteam/ManageModelActivity;

    invoke-direct {v1, v2}, Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;-><init>(Lcom/lzx/iteam/ManageModelActivity;)V

    invoke-static {v0, v1}, Lcom/lzx/iteam/ManageModelActivity;->access$1(Lcom/lzx/iteam/ManageModelActivity;Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;)V

    .line 57
    iget-object v0, p0, Lcom/lzx/iteam/ManageModelActivity$1;->this$0:Lcom/lzx/iteam/ManageModelActivity;

    # getter for: Lcom/lzx/iteam/ManageModelActivity;->mGridView:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/lzx/iteam/ManageModelActivity;->access$2(Lcom/lzx/iteam/ManageModelActivity;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/ManageModelActivity$1;->this$0:Lcom/lzx/iteam/ManageModelActivity;

    # getter for: Lcom/lzx/iteam/ManageModelActivity;->mAdapter:Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;
    invoke-static {v1}, Lcom/lzx/iteam/ManageModelActivity;->access$3(Lcom/lzx/iteam/ManageModelActivity;)Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 59
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_1

    .line 60
    iget-object v0, p0, Lcom/lzx/iteam/ManageModelActivity$1;->this$0:Lcom/lzx/iteam/ManageModelActivity;

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/lzx/iteam/ManageModelActivity$1;->this$0:Lcom/lzx/iteam/ManageModelActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 69
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_2

    .line 70
    iget-object v0, p0, Lcom/lzx/iteam/ManageModelActivity$1;->this$0:Lcom/lzx/iteam/ManageModelActivity;

    # getter for: Lcom/lzx/iteam/ManageModelActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;
    invoke-static {v0}, Lcom/lzx/iteam/ManageModelActivity;->access$4(Lcom/lzx/iteam/ManageModelActivity;)Lcom/lzx/iteam/provider/CloudDBOperation;

    move-result-object v1

    iget-object v0, p0, Lcom/lzx/iteam/ManageModelActivity$1;->this$0:Lcom/lzx/iteam/ManageModelActivity;

    # getter for: Lcom/lzx/iteam/ManageModelActivity;->mResultData:Ljava/util/List;
    invoke-static {v0}, Lcom/lzx/iteam/ManageModelActivity;->access$5(Lcom/lzx/iteam/ManageModelActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/lzx/iteam/ManageModelActivity$1;->this$0:Lcom/lzx/iteam/ManageModelActivity;

    # getter for: Lcom/lzx/iteam/ManageModelActivity;->mPosition:I
    invoke-static {v2}, Lcom/lzx/iteam/ManageModelActivity;->access$6(Lcom/lzx/iteam/ManageModelActivity;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/EventListData;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/EventListData;->getEventId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/lzx/iteam/provider/CloudDBOperation;->deleteEventModelByEventId(Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/lzx/iteam/ManageModelActivity$1;->this$0:Lcom/lzx/iteam/ManageModelActivity;

    # getter for: Lcom/lzx/iteam/ManageModelActivity;->mResultData:Ljava/util/List;
    invoke-static {v0}, Lcom/lzx/iteam/ManageModelActivity;->access$5(Lcom/lzx/iteam/ManageModelActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/ManageModelActivity$1;->this$0:Lcom/lzx/iteam/ManageModelActivity;

    # getter for: Lcom/lzx/iteam/ManageModelActivity;->mPosition:I
    invoke-static {v1}, Lcom/lzx/iteam/ManageModelActivity;->access$6(Lcom/lzx/iteam/ManageModelActivity;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/lzx/iteam/ManageModelActivity$1;->this$0:Lcom/lzx/iteam/ManageModelActivity;

    new-instance v1, Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;

    iget-object v2, p0, Lcom/lzx/iteam/ManageModelActivity$1;->this$0:Lcom/lzx/iteam/ManageModelActivity;

    invoke-direct {v1, v2}, Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;-><init>(Lcom/lzx/iteam/ManageModelActivity;)V

    invoke-static {v0, v1}, Lcom/lzx/iteam/ManageModelActivity;->access$1(Lcom/lzx/iteam/ManageModelActivity;Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;)V

    .line 73
    iget-object v0, p0, Lcom/lzx/iteam/ManageModelActivity$1;->this$0:Lcom/lzx/iteam/ManageModelActivity;

    # getter for: Lcom/lzx/iteam/ManageModelActivity;->mGridView:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/lzx/iteam/ManageModelActivity;->access$2(Lcom/lzx/iteam/ManageModelActivity;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/ManageModelActivity$1;->this$0:Lcom/lzx/iteam/ManageModelActivity;

    # getter for: Lcom/lzx/iteam/ManageModelActivity;->mAdapter:Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;
    invoke-static {v1}, Lcom/lzx/iteam/ManageModelActivity;->access$3(Lcom/lzx/iteam/ManageModelActivity;)Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    iget-object v0, p0, Lcom/lzx/iteam/ManageModelActivity$1;->this$0:Lcom/lzx/iteam/ManageModelActivity;

    # getter for: Lcom/lzx/iteam/ManageModelActivity;->mAdapter:Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/ManageModelActivity;->access$3(Lcom/lzx/iteam/ManageModelActivity;)Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 76
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_3

    .line 77
    iget-object v0, p0, Lcom/lzx/iteam/ManageModelActivity$1;->this$0:Lcom/lzx/iteam/ManageModelActivity;

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 80
    :cond_3
    iget-object v1, p0, Lcom/lzx/iteam/ManageModelActivity$1;->this$0:Lcom/lzx/iteam/ManageModelActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x762
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
