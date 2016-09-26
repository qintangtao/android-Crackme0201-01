.class Lcom/lzx/iteam/adapter/TalkListAdapter$1;
.super Landroid/os/Handler;
.source "TalkListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/adapter/TalkListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/adapter/TalkListAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$1;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    .line 66
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    .line 69
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 70
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 72
    :pswitch_0
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_0

    .line 73
    iget-object v4, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$1;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/lzx/iteam/adapter/TalkListAdapter;->access$0(Lcom/lzx/iteam/adapter/TalkListAdapter;Ljava/lang/String;)V

    .line 74
    const-string v3, "1"

    iget-object v4, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$1;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/TalkListAdapter;->mPraise:Ljava/lang/String;
    invoke-static {v4}, Lcom/lzx/iteam/adapter/TalkListAdapter;->access$1(Lcom/lzx/iteam/adapter/TalkListAdapter;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 75
    iget-object v3, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$1;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/TalkListAdapter;->mTalkListDatas:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lzx/iteam/adapter/TalkListAdapter;->access$2(Lcom/lzx/iteam/adapter/TalkListAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$1;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/TalkListAdapter;->mPosition:I
    invoke-static {v4}, Lcom/lzx/iteam/adapter/TalkListAdapter;->access$3(Lcom/lzx/iteam/adapter/TalkListAdapter;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/bean/TalkListData;

    const-string v4, "1"

    iput-object v4, v3, Lcom/lzx/iteam/bean/TalkListData;->isPraise:Ljava/lang/String;

    .line 76
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 77
    .local v2, "userData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "talk_user_id"

    iget-object v4, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$1;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/TalkListAdapter;->userId:Ljava/lang/String;
    invoke-static {v4}, Lcom/lzx/iteam/adapter/TalkListAdapter;->access$4(Lcom/lzx/iteam/adapter/TalkListAdapter;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v4, "talk_user_name"

    iget-object v3, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$1;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/TalkListAdapter;->mNameCard:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lzx/iteam/adapter/TalkListAdapter;->access$5(Lcom/lzx/iteam/adapter/TalkListAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v3, "talk_type"

    const-string v4, "1"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v3, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$1;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/TalkListAdapter;->mTalkListDatas:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lzx/iteam/adapter/TalkListAdapter;->access$2(Lcom/lzx/iteam/adapter/TalkListAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$1;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/TalkListAdapter;->mPosition:I
    invoke-static {v4}, Lcom/lzx/iteam/adapter/TalkListAdapter;->access$3(Lcom/lzx/iteam/adapter/TalkListAdapter;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/bean/TalkListData;

    iget-object v3, v3, Lcom/lzx/iteam/bean/TalkListData;->praises:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 81
    iget-object v3, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$1;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/TalkListAdapter;->mTalkListDatas:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lzx/iteam/adapter/TalkListAdapter;->access$2(Lcom/lzx/iteam/adapter/TalkListAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$1;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/TalkListAdapter;->mPosition:I
    invoke-static {v4}, Lcom/lzx/iteam/adapter/TalkListAdapter;->access$3(Lcom/lzx/iteam/adapter/TalkListAdapter;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/bean/TalkListData;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/lzx/iteam/bean/TalkListData;->praises:Ljava/util/ArrayList;

    .line 82
    iget-object v3, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$1;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/TalkListAdapter;->mTalkListDatas:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lzx/iteam/adapter/TalkListAdapter;->access$2(Lcom/lzx/iteam/adapter/TalkListAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$1;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/TalkListAdapter;->mPosition:I
    invoke-static {v4}, Lcom/lzx/iteam/adapter/TalkListAdapter;->access$3(Lcom/lzx/iteam/adapter/TalkListAdapter;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/bean/TalkListData;

    iget-object v3, v3, Lcom/lzx/iteam/bean/TalkListData;->praises:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .end local v2    # "userData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    const-string v3, "talkListData.position"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$1;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/TalkListAdapter;->mPosition:I
    invoke-static {v5}, Lcom/lzx/iteam/adapter/TalkListAdapter;->access$3(Lcom/lzx/iteam/adapter/TalkListAdapter;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v3, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$1;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    invoke-virtual {v3}, Lcom/lzx/iteam/adapter/TalkListAdapter;->notifyDataSetChanged()V

    .line 97
    iget-object v3, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$1;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/TalkListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/lzx/iteam/adapter/TalkListAdapter;->access$6(Lcom/lzx/iteam/adapter/TalkListAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/lzx/iteam/net/TalkListCenter;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/TalkListCenter;

    move-result-object v4

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$1;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/TalkListAdapter;->mPraise:Ljava/lang/String;
    invoke-static {v3}, Lcom/lzx/iteam/adapter/TalkListAdapter;->access$1(Lcom/lzx/iteam/adapter/TalkListAdapter;)Ljava/lang/String;

    move-result-object v6

    iget-object v3, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$1;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/TalkListAdapter;->mTalkListDatas:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lzx/iteam/adapter/TalkListAdapter;->access$2(Lcom/lzx/iteam/adapter/TalkListAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v7, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$1;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/TalkListAdapter;->mPosition:I
    invoke-static {v7}, Lcom/lzx/iteam/adapter/TalkListAdapter;->access$3(Lcom/lzx/iteam/adapter/TalkListAdapter;)I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/bean/TalkListData;

    iget-object v7, v3, Lcom/lzx/iteam/bean/TalkListData;->praises:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$1;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/TalkListAdapter;->mTalkListDatas:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lzx/iteam/adapter/TalkListAdapter;->access$2(Lcom/lzx/iteam/adapter/TalkListAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v8, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$1;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/TalkListAdapter;->mPosition:I
    invoke-static {v8}, Lcom/lzx/iteam/adapter/TalkListAdapter;->access$3(Lcom/lzx/iteam/adapter/TalkListAdapter;)I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/bean/TalkListData;

    iget-object v3, v3, Lcom/lzx/iteam/bean/TalkListData;->talkId:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7, v3}, Lcom/lzx/iteam/net/TalkListCenter;->upDateCloudTalkData(ZLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)J

    goto/16 :goto_0

    .line 84
    .restart local v2    # "userData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    iget-object v3, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$1;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/TalkListAdapter;->mTalkListDatas:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lzx/iteam/adapter/TalkListAdapter;->access$2(Lcom/lzx/iteam/adapter/TalkListAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$1;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/TalkListAdapter;->mPosition:I
    invoke-static {v4}, Lcom/lzx/iteam/adapter/TalkListAdapter;->access$3(Lcom/lzx/iteam/adapter/TalkListAdapter;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/bean/TalkListData;

    iget-object v3, v3, Lcom/lzx/iteam/bean/TalkListData;->praises:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 88
    .end local v2    # "userData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v3, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$1;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/TalkListAdapter;->mTalkListDatas:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lzx/iteam/adapter/TalkListAdapter;->access$2(Lcom/lzx/iteam/adapter/TalkListAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$1;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/TalkListAdapter;->mPosition:I
    invoke-static {v4}, Lcom/lzx/iteam/adapter/TalkListAdapter;->access$3(Lcom/lzx/iteam/adapter/TalkListAdapter;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/bean/TalkListData;

    iget-object v3, v3, Lcom/lzx/iteam/bean/TalkListData;->praises:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_3

    .line 93
    iget-object v3, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$1;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/TalkListAdapter;->mTalkListDatas:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lzx/iteam/adapter/TalkListAdapter;->access$2(Lcom/lzx/iteam/adapter/TalkListAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$1;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/TalkListAdapter;->mPosition:I
    invoke-static {v4}, Lcom/lzx/iteam/adapter/TalkListAdapter;->access$3(Lcom/lzx/iteam/adapter/TalkListAdapter;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/bean/TalkListData;

    const-string v4, "0"

    iput-object v4, v3, Lcom/lzx/iteam/bean/TalkListData;->isPraise:Ljava/lang/String;

    goto/16 :goto_1

    .line 89
    :cond_3
    iget-object v3, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$1;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/TalkListAdapter;->mTalkListDatas:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lzx/iteam/adapter/TalkListAdapter;->access$2(Lcom/lzx/iteam/adapter/TalkListAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$1;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/TalkListAdapter;->mPosition:I
    invoke-static {v4}, Lcom/lzx/iteam/adapter/TalkListAdapter;->access$3(Lcom/lzx/iteam/adapter/TalkListAdapter;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/bean/TalkListData;

    iget-object v3, v3, Lcom/lzx/iteam/bean/TalkListData;->praises:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v4, "talk_user_id"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$1;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/TalkListAdapter;->userId:Ljava/lang/String;
    invoke-static {v4}, Lcom/lzx/iteam/adapter/TalkListAdapter;->access$4(Lcom/lzx/iteam/adapter/TalkListAdapter;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 90
    iget-object v3, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$1;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/TalkListAdapter;->mTalkListDatas:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lzx/iteam/adapter/TalkListAdapter;->access$2(Lcom/lzx/iteam/adapter/TalkListAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$1;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/TalkListAdapter;->mPosition:I
    invoke-static {v4}, Lcom/lzx/iteam/adapter/TalkListAdapter;->access$3(Lcom/lzx/iteam/adapter/TalkListAdapter;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/bean/TalkListData;

    iget-object v3, v3, Lcom/lzx/iteam/bean/TalkListData;->praises:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 88
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 101
    .end local v1    # "i":I
    :pswitch_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_0

    .line 102
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    .line 103
    .local v0, "comment":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$1;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/TalkListAdapter;->mTalkListDatas:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lzx/iteam/adapter/TalkListAdapter;->access$2(Lcom/lzx/iteam/adapter/TalkListAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$1;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/TalkListAdapter;->mPosition:I
    invoke-static {v4}, Lcom/lzx/iteam/adapter/TalkListAdapter;->access$3(Lcom/lzx/iteam/adapter/TalkListAdapter;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/bean/TalkListData;

    iget-object v3, v3, Lcom/lzx/iteam/bean/TalkListData;->comments:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 104
    iget-object v3, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$1;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    invoke-virtual {v3}, Lcom/lzx/iteam/adapter/TalkListAdapter;->notifyDataSetChanged()V

    .line 105
    iget-object v3, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$1;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/TalkListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/lzx/iteam/adapter/TalkListAdapter;->access$6(Lcom/lzx/iteam/adapter/TalkListAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/lzx/iteam/net/TalkListCenter;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/TalkListCenter;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$1;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/TalkListAdapter;->mTalkListDatas:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lzx/iteam/adapter/TalkListAdapter;->access$2(Lcom/lzx/iteam/adapter/TalkListAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v6, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$1;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/TalkListAdapter;->mPosition:I
    invoke-static {v6}, Lcom/lzx/iteam/adapter/TalkListAdapter;->access$3(Lcom/lzx/iteam/adapter/TalkListAdapter;)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/bean/TalkListData;

    iget-object v6, v3, Lcom/lzx/iteam/bean/TalkListData;->comments:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$1;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/TalkListAdapter;->mTalkListDatas:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lzx/iteam/adapter/TalkListAdapter;->access$2(Lcom/lzx/iteam/adapter/TalkListAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v7, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$1;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/TalkListAdapter;->mPosition:I
    invoke-static {v7}, Lcom/lzx/iteam/adapter/TalkListAdapter;->access$3(Lcom/lzx/iteam/adapter/TalkListAdapter;)I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/bean/TalkListData;

    iget-object v3, v3, Lcom/lzx/iteam/bean/TalkListData;->talkId:Ljava/lang/String;

    invoke-virtual {v4, v8, v5, v6, v3}, Lcom/lzx/iteam/net/TalkListCenter;->upDateCloudTalkData(ZLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)J

    goto/16 :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
