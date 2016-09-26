.class Lcom/lzx/iteam/EventReceiveMemberActivity$1;
.super Landroid/os/Handler;
.source "EventReceiveMemberActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/EventReceiveMemberActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/EventReceiveMemberActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    .line 45
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    .line 48
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 49
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 51
    :pswitch_0
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-nez v5, :cond_9

    .line 52
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    .line 53
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/net/EventMemberMsg;>;>;"
    if-eqz v1, :cond_0

    .line 54
    iget-object v5, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    # getter for: Lcom/lzx/iteam/EventReceiveMemberActivity;->mEventType:Ljava/lang/String;
    invoke-static {v5}, Lcom/lzx/iteam/EventReceiveMemberActivity;->access$0(Lcom/lzx/iteam/EventReceiveMemberActivity;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "7"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 55
    const-string v5, "unJoin"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 56
    .local v3, "unJoinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/net/EventMemberMsg;>;"
    const-string v5, "join"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 57
    .local v0, "joinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/net/EventMemberMsg;>;"
    iget-object v5, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    # getter for: Lcom/lzx/iteam/EventReceiveMemberActivity;->mReadedCount:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/lzx/iteam/EventReceiveMemberActivity;->access$1(Lcom/lzx/iteam/EventReceiveMemberActivity;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\u4eba\u5df2\u62a5\u540d"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v5, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    # getter for: Lcom/lzx/iteam/EventReceiveMemberActivity;->mUnReadCount:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/lzx/iteam/EventReceiveMemberActivity;->access$2(Lcom/lzx/iteam/EventReceiveMemberActivity;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\u4eba\u672a\u62a5\u540d"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v5, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    new-instance v6, Lcom/lzx/iteam/adapter/EventMemberAdapter;

    iget-object v7, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    invoke-direct {v6, v7, v0}, Lcom/lzx/iteam/adapter/EventMemberAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v5, v6}, Lcom/lzx/iteam/EventReceiveMemberActivity;->access$3(Lcom/lzx/iteam/EventReceiveMemberActivity;Lcom/lzx/iteam/adapter/EventMemberAdapter;)V

    .line 60
    iget-object v5, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    new-instance v6, Lcom/lzx/iteam/adapter/EventMemberAdapter;

    iget-object v7, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    invoke-direct {v6, v7, v3}, Lcom/lzx/iteam/adapter/EventMemberAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v5, v6}, Lcom/lzx/iteam/EventReceiveMemberActivity;->access$4(Lcom/lzx/iteam/EventReceiveMemberActivity;Lcom/lzx/iteam/adapter/EventMemberAdapter;)V

    .line 61
    iget-object v5, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    # getter for: Lcom/lzx/iteam/EventReceiveMemberActivity;->mReadedGrid:Lcom/lzx/iteam/gridimg/MyGridView;
    invoke-static {v5}, Lcom/lzx/iteam/EventReceiveMemberActivity;->access$5(Lcom/lzx/iteam/EventReceiveMemberActivity;)Lcom/lzx/iteam/gridimg/MyGridView;

    move-result-object v5

    iget-object v6, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    # getter for: Lcom/lzx/iteam/EventReceiveMemberActivity;->mReadedAdapter:Lcom/lzx/iteam/adapter/EventMemberAdapter;
    invoke-static {v6}, Lcom/lzx/iteam/EventReceiveMemberActivity;->access$6(Lcom/lzx/iteam/EventReceiveMemberActivity;)Lcom/lzx/iteam/adapter/EventMemberAdapter;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lzx/iteam/gridimg/MyGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 62
    iget-object v5, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    # getter for: Lcom/lzx/iteam/EventReceiveMemberActivity;->mUnReadGrid:Lcom/lzx/iteam/gridimg/MyGridView;
    invoke-static {v5}, Lcom/lzx/iteam/EventReceiveMemberActivity;->access$7(Lcom/lzx/iteam/EventReceiveMemberActivity;)Lcom/lzx/iteam/gridimg/MyGridView;

    move-result-object v5

    iget-object v6, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    # getter for: Lcom/lzx/iteam/EventReceiveMemberActivity;->mUnReadAdapter:Lcom/lzx/iteam/adapter/EventMemberAdapter;
    invoke-static {v6}, Lcom/lzx/iteam/EventReceiveMemberActivity;->access$8(Lcom/lzx/iteam/EventReceiveMemberActivity;)Lcom/lzx/iteam/adapter/EventMemberAdapter;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lzx/iteam/gridimg/MyGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 63
    .end local v0    # "joinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/net/EventMemberMsg;>;"
    .end local v3    # "unJoinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/net/EventMemberMsg;>;"
    :cond_1
    iget-object v5, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    # getter for: Lcom/lzx/iteam/EventReceiveMemberActivity;->mEventType:Ljava/lang/String;
    invoke-static {v5}, Lcom/lzx/iteam/EventReceiveMemberActivity;->access$0(Lcom/lzx/iteam/EventReceiveMemberActivity;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 64
    const-string v5, "unRead"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 65
    .local v4, "unReadList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/net/EventMemberMsg;>;"
    const-string v5, "readed"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 66
    .local v2, "readedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/net/EventMemberMsg;>;"
    iget-object v5, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    # getter for: Lcom/lzx/iteam/EventReceiveMemberActivity;->mReadedCount:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/lzx/iteam/EventReceiveMemberActivity;->access$1(Lcom/lzx/iteam/EventReceiveMemberActivity;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\u4eba\u5df2\u8bfb"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v5, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    # getter for: Lcom/lzx/iteam/EventReceiveMemberActivity;->mUnReadCount:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/lzx/iteam/EventReceiveMemberActivity;->access$2(Lcom/lzx/iteam/EventReceiveMemberActivity;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\u4eba\u672a\u8bfb"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v5, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    new-instance v6, Lcom/lzx/iteam/adapter/EventMemberAdapter;

    iget-object v7, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    invoke-direct {v6, v7, v2}, Lcom/lzx/iteam/adapter/EventMemberAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v5, v6}, Lcom/lzx/iteam/EventReceiveMemberActivity;->access$3(Lcom/lzx/iteam/EventReceiveMemberActivity;Lcom/lzx/iteam/adapter/EventMemberAdapter;)V

    .line 69
    iget-object v5, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    new-instance v6, Lcom/lzx/iteam/adapter/EventMemberAdapter;

    iget-object v7, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    invoke-direct {v6, v7, v4}, Lcom/lzx/iteam/adapter/EventMemberAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v5, v6}, Lcom/lzx/iteam/EventReceiveMemberActivity;->access$4(Lcom/lzx/iteam/EventReceiveMemberActivity;Lcom/lzx/iteam/adapter/EventMemberAdapter;)V

    .line 70
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 71
    iget-object v5, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    # getter for: Lcom/lzx/iteam/EventReceiveMemberActivity;->mUnReadAdapter:Lcom/lzx/iteam/adapter/EventMemberAdapter;
    invoke-static {v5}, Lcom/lzx/iteam/EventReceiveMemberActivity;->access$8(Lcom/lzx/iteam/EventReceiveMemberActivity;)Lcom/lzx/iteam/adapter/EventMemberAdapter;

    move-result-object v5

    const-string v6, "\u6682\u65e0"

    invoke-virtual {v5, v6}, Lcom/lzx/iteam/adapter/EventMemberAdapter;->bindData(Ljava/lang/String;)V

    .line 73
    :cond_2
    iget-object v5, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    # getter for: Lcom/lzx/iteam/EventReceiveMemberActivity;->mReadedGrid:Lcom/lzx/iteam/gridimg/MyGridView;
    invoke-static {v5}, Lcom/lzx/iteam/EventReceiveMemberActivity;->access$5(Lcom/lzx/iteam/EventReceiveMemberActivity;)Lcom/lzx/iteam/gridimg/MyGridView;

    move-result-object v5

    iget-object v6, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    # getter for: Lcom/lzx/iteam/EventReceiveMemberActivity;->mReadedAdapter:Lcom/lzx/iteam/adapter/EventMemberAdapter;
    invoke-static {v6}, Lcom/lzx/iteam/EventReceiveMemberActivity;->access$6(Lcom/lzx/iteam/EventReceiveMemberActivity;)Lcom/lzx/iteam/adapter/EventMemberAdapter;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lzx/iteam/gridimg/MyGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    iget-object v5, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    # getter for: Lcom/lzx/iteam/EventReceiveMemberActivity;->mUnReadGrid:Lcom/lzx/iteam/gridimg/MyGridView;
    invoke-static {v5}, Lcom/lzx/iteam/EventReceiveMemberActivity;->access$7(Lcom/lzx/iteam/EventReceiveMemberActivity;)Lcom/lzx/iteam/gridimg/MyGridView;

    move-result-object v5

    iget-object v6, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    # getter for: Lcom/lzx/iteam/EventReceiveMemberActivity;->mUnReadAdapter:Lcom/lzx/iteam/adapter/EventMemberAdapter;
    invoke-static {v6}, Lcom/lzx/iteam/EventReceiveMemberActivity;->access$8(Lcom/lzx/iteam/EventReceiveMemberActivity;)Lcom/lzx/iteam/adapter/EventMemberAdapter;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lzx/iteam/gridimg/MyGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 85
    .end local v2    # "readedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/net/EventMemberMsg;>;"
    .end local v4    # "unReadList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/net/EventMemberMsg;>;"
    :cond_3
    iget-object v5, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    # getter for: Lcom/lzx/iteam/EventReceiveMemberActivity;->mEventType:Ljava/lang/String;
    invoke-static {v5}, Lcom/lzx/iteam/EventReceiveMemberActivity;->access$0(Lcom/lzx/iteam/EventReceiveMemberActivity;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 86
    const-string v5, "unVote"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 87
    .restart local v4    # "unReadList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/net/EventMemberMsg;>;"
    const-string v5, "vote"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 88
    .restart local v2    # "readedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/net/EventMemberMsg;>;"
    iget-object v5, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    # getter for: Lcom/lzx/iteam/EventReceiveMemberActivity;->mReadedCount:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/lzx/iteam/EventReceiveMemberActivity;->access$1(Lcom/lzx/iteam/EventReceiveMemberActivity;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\u4eba\u5df2\u6295\u7968"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v5, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    # getter for: Lcom/lzx/iteam/EventReceiveMemberActivity;->mUnReadCount:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/lzx/iteam/EventReceiveMemberActivity;->access$2(Lcom/lzx/iteam/EventReceiveMemberActivity;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\u4eba\u672a\u6295\u7968"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v5, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    new-instance v6, Lcom/lzx/iteam/adapter/EventMemberAdapter;

    iget-object v7, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    invoke-direct {v6, v7, v2}, Lcom/lzx/iteam/adapter/EventMemberAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v5, v6}, Lcom/lzx/iteam/EventReceiveMemberActivity;->access$3(Lcom/lzx/iteam/EventReceiveMemberActivity;Lcom/lzx/iteam/adapter/EventMemberAdapter;)V

    .line 91
    iget-object v5, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    new-instance v6, Lcom/lzx/iteam/adapter/EventMemberAdapter;

    iget-object v7, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    invoke-direct {v6, v7, v4}, Lcom/lzx/iteam/adapter/EventMemberAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v5, v6}, Lcom/lzx/iteam/EventReceiveMemberActivity;->access$4(Lcom/lzx/iteam/EventReceiveMemberActivity;Lcom/lzx/iteam/adapter/EventMemberAdapter;)V

    .line 92
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_4

    .line 93
    iget-object v5, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    # getter for: Lcom/lzx/iteam/EventReceiveMemberActivity;->mUnReadAdapter:Lcom/lzx/iteam/adapter/EventMemberAdapter;
    invoke-static {v5}, Lcom/lzx/iteam/EventReceiveMemberActivity;->access$8(Lcom/lzx/iteam/EventReceiveMemberActivity;)Lcom/lzx/iteam/adapter/EventMemberAdapter;

    move-result-object v5

    const-string v6, "\u6682\u65e0"

    invoke-virtual {v5, v6}, Lcom/lzx/iteam/adapter/EventMemberAdapter;->bindData(Ljava/lang/String;)V

    .line 95
    :cond_4
    iget-object v5, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    # getter for: Lcom/lzx/iteam/EventReceiveMemberActivity;->mReadedGrid:Lcom/lzx/iteam/gridimg/MyGridView;
    invoke-static {v5}, Lcom/lzx/iteam/EventReceiveMemberActivity;->access$5(Lcom/lzx/iteam/EventReceiveMemberActivity;)Lcom/lzx/iteam/gridimg/MyGridView;

    move-result-object v5

    iget-object v6, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    # getter for: Lcom/lzx/iteam/EventReceiveMemberActivity;->mReadedAdapter:Lcom/lzx/iteam/adapter/EventMemberAdapter;
    invoke-static {v6}, Lcom/lzx/iteam/EventReceiveMemberActivity;->access$6(Lcom/lzx/iteam/EventReceiveMemberActivity;)Lcom/lzx/iteam/adapter/EventMemberAdapter;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lzx/iteam/gridimg/MyGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 96
    iget-object v5, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    # getter for: Lcom/lzx/iteam/EventReceiveMemberActivity;->mUnReadGrid:Lcom/lzx/iteam/gridimg/MyGridView;
    invoke-static {v5}, Lcom/lzx/iteam/EventReceiveMemberActivity;->access$7(Lcom/lzx/iteam/EventReceiveMemberActivity;)Lcom/lzx/iteam/gridimg/MyGridView;

    move-result-object v5

    iget-object v6, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    # getter for: Lcom/lzx/iteam/EventReceiveMemberActivity;->mUnReadAdapter:Lcom/lzx/iteam/adapter/EventMemberAdapter;
    invoke-static {v6}, Lcom/lzx/iteam/EventReceiveMemberActivity;->access$8(Lcom/lzx/iteam/EventReceiveMemberActivity;)Lcom/lzx/iteam/adapter/EventMemberAdapter;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lzx/iteam/gridimg/MyGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 98
    .end local v2    # "readedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/net/EventMemberMsg;>;"
    .end local v4    # "unReadList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/net/EventMemberMsg;>;"
    :cond_5
    iget-object v5, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    # getter for: Lcom/lzx/iteam/EventReceiveMemberActivity;->mEventType:Ljava/lang/String;
    invoke-static {v5}, Lcom/lzx/iteam/EventReceiveMemberActivity;->access$0(Lcom/lzx/iteam/EventReceiveMemberActivity;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "9"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 99
    const-string v5, "unJoin"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 100
    .restart local v3    # "unJoinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/net/EventMemberMsg;>;"
    const-string v5, "join"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 101
    .restart local v0    # "joinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/net/EventMemberMsg;>;"
    iget-object v5, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    # getter for: Lcom/lzx/iteam/EventReceiveMemberActivity;->mReadedCount:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/lzx/iteam/EventReceiveMemberActivity;->access$1(Lcom/lzx/iteam/EventReceiveMemberActivity;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\u4eba\u5df2\u7b7e\u5230"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v5, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    # getter for: Lcom/lzx/iteam/EventReceiveMemberActivity;->mUnReadCount:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/lzx/iteam/EventReceiveMemberActivity;->access$2(Lcom/lzx/iteam/EventReceiveMemberActivity;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\u4eba\u672a\u7b7e\u5230"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v5, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    new-instance v6, Lcom/lzx/iteam/adapter/EventMemberAdapter;

    iget-object v7, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    invoke-direct {v6, v7, v0}, Lcom/lzx/iteam/adapter/EventMemberAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v5, v6}, Lcom/lzx/iteam/EventReceiveMemberActivity;->access$3(Lcom/lzx/iteam/EventReceiveMemberActivity;Lcom/lzx/iteam/adapter/EventMemberAdapter;)V

    .line 104
    iget-object v5, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    new-instance v6, Lcom/lzx/iteam/adapter/EventMemberAdapter;

    iget-object v7, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    invoke-direct {v6, v7, v3}, Lcom/lzx/iteam/adapter/EventMemberAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v5, v6}, Lcom/lzx/iteam/EventReceiveMemberActivity;->access$4(Lcom/lzx/iteam/EventReceiveMemberActivity;Lcom/lzx/iteam/adapter/EventMemberAdapter;)V

    .line 105
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_6

    .line 106
    iget-object v5, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    # getter for: Lcom/lzx/iteam/EventReceiveMemberActivity;->mUnReadAdapter:Lcom/lzx/iteam/adapter/EventMemberAdapter;
    invoke-static {v5}, Lcom/lzx/iteam/EventReceiveMemberActivity;->access$8(Lcom/lzx/iteam/EventReceiveMemberActivity;)Lcom/lzx/iteam/adapter/EventMemberAdapter;

    move-result-object v5

    const-string v6, "\u6682\u65e0"

    invoke-virtual {v5, v6}, Lcom/lzx/iteam/adapter/EventMemberAdapter;->bindData(Ljava/lang/String;)V

    .line 108
    :cond_6
    iget-object v5, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    # getter for: Lcom/lzx/iteam/EventReceiveMemberActivity;->mReadedGrid:Lcom/lzx/iteam/gridimg/MyGridView;
    invoke-static {v5}, Lcom/lzx/iteam/EventReceiveMemberActivity;->access$5(Lcom/lzx/iteam/EventReceiveMemberActivity;)Lcom/lzx/iteam/gridimg/MyGridView;

    move-result-object v5

    iget-object v6, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    # getter for: Lcom/lzx/iteam/EventReceiveMemberActivity;->mReadedAdapter:Lcom/lzx/iteam/adapter/EventMemberAdapter;
    invoke-static {v6}, Lcom/lzx/iteam/EventReceiveMemberActivity;->access$6(Lcom/lzx/iteam/EventReceiveMemberActivity;)Lcom/lzx/iteam/adapter/EventMemberAdapter;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lzx/iteam/gridimg/MyGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 109
    iget-object v5, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    # getter for: Lcom/lzx/iteam/EventReceiveMemberActivity;->mUnReadGrid:Lcom/lzx/iteam/gridimg/MyGridView;
    invoke-static {v5}, Lcom/lzx/iteam/EventReceiveMemberActivity;->access$7(Lcom/lzx/iteam/EventReceiveMemberActivity;)Lcom/lzx/iteam/gridimg/MyGridView;

    move-result-object v5

    iget-object v6, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    # getter for: Lcom/lzx/iteam/EventReceiveMemberActivity;->mUnReadAdapter:Lcom/lzx/iteam/adapter/EventMemberAdapter;
    invoke-static {v6}, Lcom/lzx/iteam/EventReceiveMemberActivity;->access$8(Lcom/lzx/iteam/EventReceiveMemberActivity;)Lcom/lzx/iteam/adapter/EventMemberAdapter;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lzx/iteam/gridimg/MyGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 111
    .end local v0    # "joinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/net/EventMemberMsg;>;"
    .end local v3    # "unJoinList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/net/EventMemberMsg;>;"
    :cond_7
    const-string v5, "unRead"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 112
    .restart local v4    # "unReadList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/net/EventMemberMsg;>;"
    const-string v5, "readed"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 113
    .restart local v2    # "readedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/net/EventMemberMsg;>;"
    iget-object v5, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    # getter for: Lcom/lzx/iteam/EventReceiveMemberActivity;->mReadedCount:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/lzx/iteam/EventReceiveMemberActivity;->access$1(Lcom/lzx/iteam/EventReceiveMemberActivity;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\u4eba\u5df2\u8bfb"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v5, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    # getter for: Lcom/lzx/iteam/EventReceiveMemberActivity;->mUnReadCount:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/lzx/iteam/EventReceiveMemberActivity;->access$2(Lcom/lzx/iteam/EventReceiveMemberActivity;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\u4eba\u672a\u8bfb"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v5, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    new-instance v6, Lcom/lzx/iteam/adapter/EventMemberAdapter;

    iget-object v7, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    invoke-direct {v6, v7, v2}, Lcom/lzx/iteam/adapter/EventMemberAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v5, v6}, Lcom/lzx/iteam/EventReceiveMemberActivity;->access$3(Lcom/lzx/iteam/EventReceiveMemberActivity;Lcom/lzx/iteam/adapter/EventMemberAdapter;)V

    .line 116
    iget-object v5, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    new-instance v6, Lcom/lzx/iteam/adapter/EventMemberAdapter;

    iget-object v7, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    invoke-direct {v6, v7, v4}, Lcom/lzx/iteam/adapter/EventMemberAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v5, v6}, Lcom/lzx/iteam/EventReceiveMemberActivity;->access$4(Lcom/lzx/iteam/EventReceiveMemberActivity;Lcom/lzx/iteam/adapter/EventMemberAdapter;)V

    .line 117
    iget-object v5, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    # getter for: Lcom/lzx/iteam/EventReceiveMemberActivity;->mEventType:Ljava/lang/String;
    invoke-static {v5}, Lcom/lzx/iteam/EventReceiveMemberActivity;->access$0(Lcom/lzx/iteam/EventReceiveMemberActivity;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "9.5"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 118
    iget-object v5, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    # getter for: Lcom/lzx/iteam/EventReceiveMemberActivity;->mUnReadAdapter:Lcom/lzx/iteam/adapter/EventMemberAdapter;
    invoke-static {v5}, Lcom/lzx/iteam/EventReceiveMemberActivity;->access$8(Lcom/lzx/iteam/EventReceiveMemberActivity;)Lcom/lzx/iteam/adapter/EventMemberAdapter;

    move-result-object v5

    const-string v6, "\u6dfb\u52a0"

    invoke-virtual {v5, v6}, Lcom/lzx/iteam/adapter/EventMemberAdapter;->bindData(Ljava/lang/String;)V

    .line 120
    :cond_8
    iget-object v5, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    # getter for: Lcom/lzx/iteam/EventReceiveMemberActivity;->mReadedGrid:Lcom/lzx/iteam/gridimg/MyGridView;
    invoke-static {v5}, Lcom/lzx/iteam/EventReceiveMemberActivity;->access$5(Lcom/lzx/iteam/EventReceiveMemberActivity;)Lcom/lzx/iteam/gridimg/MyGridView;

    move-result-object v5

    iget-object v6, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    # getter for: Lcom/lzx/iteam/EventReceiveMemberActivity;->mReadedAdapter:Lcom/lzx/iteam/adapter/EventMemberAdapter;
    invoke-static {v6}, Lcom/lzx/iteam/EventReceiveMemberActivity;->access$6(Lcom/lzx/iteam/EventReceiveMemberActivity;)Lcom/lzx/iteam/adapter/EventMemberAdapter;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lzx/iteam/gridimg/MyGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 121
    iget-object v5, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    # getter for: Lcom/lzx/iteam/EventReceiveMemberActivity;->mUnReadGrid:Lcom/lzx/iteam/gridimg/MyGridView;
    invoke-static {v5}, Lcom/lzx/iteam/EventReceiveMemberActivity;->access$7(Lcom/lzx/iteam/EventReceiveMemberActivity;)Lcom/lzx/iteam/gridimg/MyGridView;

    move-result-object v5

    iget-object v6, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    # getter for: Lcom/lzx/iteam/EventReceiveMemberActivity;->mUnReadAdapter:Lcom/lzx/iteam/adapter/EventMemberAdapter;
    invoke-static {v6}, Lcom/lzx/iteam/EventReceiveMemberActivity;->access$8(Lcom/lzx/iteam/EventReceiveMemberActivity;)Lcom/lzx/iteam/adapter/EventMemberAdapter;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lzx/iteam/gridimg/MyGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 133
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/net/EventMemberMsg;>;>;"
    .end local v2    # "readedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/net/EventMemberMsg;>;"
    .end local v4    # "unReadList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/net/EventMemberMsg;>;"
    :cond_9
    iget v5, p1, Landroid/os/Message;->arg1:I

    const/16 v6, 0x1f41

    if-ne v5, v6, :cond_a

    .line 134
    iget-object v5, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    const v6, 0x7f080042

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    .line 135
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 137
    :cond_a
    iget-object v6, p0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;->this$0:Lcom/lzx/iteam/EventReceiveMemberActivity;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v6, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
