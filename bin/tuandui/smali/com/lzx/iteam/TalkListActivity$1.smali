.class Lcom/lzx/iteam/TalkListActivity$1;
.super Landroid/os/Handler;
.source "TalkListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/TalkListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/TalkListActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/TalkListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/TalkListActivity$1;->this$0:Lcom/lzx/iteam/TalkListActivity;

    .line 88
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/TalkListActivity$1;)Lcom/lzx/iteam/TalkListActivity;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity$1;->this$0:Lcom/lzx/iteam/TalkListActivity;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v7, 0x7f080042

    const/16 v5, 0x1f41

    const/16 v10, 0x8

    const/4 v9, 0x0

    const/4 v6, 0x1

    .line 91
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 92
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 97
    :pswitch_0
    iget-object v4, p0, Lcom/lzx/iteam/TalkListActivity$1;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # invokes: Lcom/lzx/iteam/TalkListActivity;->httpReqDlgDismiss()V
    invoke-static {v4}, Lcom/lzx/iteam/TalkListActivity;->access$0(Lcom/lzx/iteam/TalkListActivity;)V

    .line 98
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-nez v4, :cond_1

    .line 99
    iget-object v4, p0, Lcom/lzx/iteam/TalkListActivity$1;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->talkListTempDatas:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/lzx/iteam/TalkListActivity;->access$1(Lcom/lzx/iteam/TalkListActivity;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/lzx/iteam/TalkListActivity$1;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->mPosition:I
    invoke-static {v5}, Lcom/lzx/iteam/TalkListActivity;->access$2(Lcom/lzx/iteam/TalkListActivity;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 100
    iget-object v4, p0, Lcom/lzx/iteam/TalkListActivity$1;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->mCenter:Lcom/lzx/iteam/net/TalkListCenter;
    invoke-static {v4}, Lcom/lzx/iteam/TalkListActivity;->access$3(Lcom/lzx/iteam/TalkListActivity;)Lcom/lzx/iteam/net/TalkListCenter;

    move-result-object v4

    iget-object v5, p0, Lcom/lzx/iteam/TalkListActivity$1;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->mDeleteTalkId:Ljava/lang/String;
    invoke-static {v5}, Lcom/lzx/iteam/TalkListActivity;->access$4(Lcom/lzx/iteam/TalkListActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lzx/iteam/net/TalkListCenter;->deleteTalkById(Ljava/lang/String;)I

    .line 101
    iget-object v4, p0, Lcom/lzx/iteam/TalkListActivity$1;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->mTalkListAdapter:Lcom/lzx/iteam/adapter/TalkListAdapter;
    invoke-static {v4}, Lcom/lzx/iteam/TalkListActivity;->access$5(Lcom/lzx/iteam/TalkListActivity;)Lcom/lzx/iteam/adapter/TalkListAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/lzx/iteam/TalkListActivity$1;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->talkListTempDatas:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/lzx/iteam/TalkListActivity;->access$1(Lcom/lzx/iteam/TalkListActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lzx/iteam/adapter/TalkListAdapter;->bindData(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 104
    :cond_1
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v5, :cond_2

    .line 105
    iget-object v4, p0, Lcom/lzx/iteam/TalkListActivity$1;->this$0:Lcom/lzx/iteam/TalkListActivity;

    invoke-static {v4, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    .line 106
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 108
    :cond_2
    iget-object v5, p0, Lcom/lzx/iteam/TalkListActivity$1;->this$0:Lcom/lzx/iteam/TalkListActivity;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v5, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 109
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 114
    :pswitch_1
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-nez v4, :cond_0

    .line 115
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/lzx/iteam/bean/TalkListData;

    .line 116
    .local v3, "talkListData":Lcom/lzx/iteam/bean/TalkListData;
    if-eqz v3, :cond_3

    iget-object v4, v3, Lcom/lzx/iteam/bean/TalkListData;->msgCount:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_3

    .line 117
    iget-object v4, p0, Lcom/lzx/iteam/TalkListActivity$1;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->mNewMessage:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/lzx/iteam/TalkListActivity;->access$6(Lcom/lzx/iteam/TalkListActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    iget-object v4, p0, Lcom/lzx/iteam/TalkListActivity$1;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->mNewMessage:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/lzx/iteam/TalkListActivity;->access$6(Lcom/lzx/iteam/TalkListActivity;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u6709"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/lzx/iteam/bean/TalkListData;->msgCount:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u6761\u5173\u4e8e\u4f60\u7684\u6d88\u606f"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 121
    .local v0, "alp":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v4, 0xbb8

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 122
    iget-object v4, p0, Lcom/lzx/iteam/TalkListActivity$1;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->mNewMessage:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/lzx/iteam/TalkListActivity;->access$6(Lcom/lzx/iteam/TalkListActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 123
    new-instance v4, Lcom/lzx/iteam/TalkListActivity$1$1;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/TalkListActivity$1$1;-><init>(Lcom/lzx/iteam/TalkListActivity$1;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto/16 :goto_0

    .line 136
    .end local v0    # "alp":Landroid/view/animation/AlphaAnimation;
    :cond_3
    iget-object v4, p0, Lcom/lzx/iteam/TalkListActivity$1;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->mNewMessage:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/lzx/iteam/TalkListActivity;->access$6(Lcom/lzx/iteam/TalkListActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 143
    .end local v3    # "talkListData":Lcom/lzx/iteam/bean/TalkListData;
    :pswitch_2
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-nez v4, :cond_5

    .line 144
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 145
    .local v2, "talkAboutId":Ljava/lang/String;
    iget-object v4, p0, Lcom/lzx/iteam/TalkListActivity$1;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->mReplyMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/lzx/iteam/TalkListActivity;->access$7(Lcom/lzx/iteam/TalkListActivity;)Ljava/util/Map;

    move-result-object v4

    const-string v5, "talk_about_id"

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v4, p0, Lcom/lzx/iteam/TalkListActivity$1;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->mReplyMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/lzx/iteam/TalkListActivity;->access$7(Lcom/lzx/iteam/TalkListActivity;)Ljava/util/Map;

    move-result-object v4

    const-string v5, "talk_comment"

    iget-object v6, p0, Lcom/lzx/iteam/TalkListActivity$1;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->mSendMessage:Ljava/lang/String;
    invoke-static {v6}, Lcom/lzx/iteam/TalkListActivity;->access$8(Lcom/lzx/iteam/TalkListActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v4, p0, Lcom/lzx/iteam/TalkListActivity$1;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->talkListTempDatas:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/lzx/iteam/TalkListActivity;->access$1(Lcom/lzx/iteam/TalkListActivity;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/lzx/iteam/TalkListActivity$1;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->mPosition:I
    invoke-static {v5}, Lcom/lzx/iteam/TalkListActivity;->access$2(Lcom/lzx/iteam/TalkListActivity;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lzx/iteam/bean/TalkListData;

    iget-object v4, v4, Lcom/lzx/iteam/bean/TalkListData;->comments:Ljava/util/ArrayList;

    if-nez v4, :cond_4

    .line 148
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v1, "comments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v4, p0, Lcom/lzx/iteam/TalkListActivity$1;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->mReplyMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/lzx/iteam/TalkListActivity;->access$7(Lcom/lzx/iteam/TalkListActivity;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v4, p0, Lcom/lzx/iteam/TalkListActivity$1;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->talkListTempDatas:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/lzx/iteam/TalkListActivity;->access$1(Lcom/lzx/iteam/TalkListActivity;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/lzx/iteam/TalkListActivity$1;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->mPosition:I
    invoke-static {v5}, Lcom/lzx/iteam/TalkListActivity;->access$2(Lcom/lzx/iteam/TalkListActivity;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lzx/iteam/bean/TalkListData;

    iput-object v1, v4, Lcom/lzx/iteam/bean/TalkListData;->comments:Ljava/util/ArrayList;

    .line 154
    .end local v1    # "comments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_1
    iget-object v4, p0, Lcom/lzx/iteam/TalkListActivity$1;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->mTalkListAdapter:Lcom/lzx/iteam/adapter/TalkListAdapter;
    invoke-static {v4}, Lcom/lzx/iteam/TalkListActivity;->access$5(Lcom/lzx/iteam/TalkListActivity;)Lcom/lzx/iteam/adapter/TalkListAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/lzx/iteam/TalkListActivity$1;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->talkListTempDatas:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/lzx/iteam/TalkListActivity;->access$1(Lcom/lzx/iteam/TalkListActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lzx/iteam/adapter/TalkListAdapter;->bindData(Ljava/util/ArrayList;)V

    .line 155
    iget-object v4, p0, Lcom/lzx/iteam/TalkListActivity$1;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->mCenter:Lcom/lzx/iteam/net/TalkListCenter;
    invoke-static {v4}, Lcom/lzx/iteam/TalkListActivity;->access$3(Lcom/lzx/iteam/TalkListActivity;)Lcom/lzx/iteam/net/TalkListCenter;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/lzx/iteam/TalkListActivity$1;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->talkListTempDatas:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/lzx/iteam/TalkListActivity;->access$1(Lcom/lzx/iteam/TalkListActivity;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v7, p0, Lcom/lzx/iteam/TalkListActivity$1;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->mPosition:I
    invoke-static {v7}, Lcom/lzx/iteam/TalkListActivity;->access$2(Lcom/lzx/iteam/TalkListActivity;)I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lzx/iteam/bean/TalkListData;

    iget-object v7, v4, Lcom/lzx/iteam/bean/TalkListData;->comments:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lzx/iteam/TalkListActivity$1;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->talkListTempDatas:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/lzx/iteam/TalkListActivity;->access$1(Lcom/lzx/iteam/TalkListActivity;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v8, p0, Lcom/lzx/iteam/TalkListActivity$1;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->mPosition:I
    invoke-static {v8}, Lcom/lzx/iteam/TalkListActivity;->access$2(Lcom/lzx/iteam/TalkListActivity;)I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lzx/iteam/bean/TalkListData;

    iget-object v4, v4, Lcom/lzx/iteam/bean/TalkListData;->talkId:Ljava/lang/String;

    invoke-virtual {v5, v9, v6, v7, v4}, Lcom/lzx/iteam/net/TalkListCenter;->upDateCloudTalkData(ZLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)J

    .line 156
    iget-object v4, p0, Lcom/lzx/iteam/TalkListActivity$1;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->mLlBottomLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/lzx/iteam/TalkListActivity;->access$9(Lcom/lzx/iteam/TalkListActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 157
    iget-object v4, p0, Lcom/lzx/iteam/TalkListActivity$1;->this$0:Lcom/lzx/iteam/TalkListActivity;

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/lzx/iteam/TalkListActivity;->access$10(Lcom/lzx/iteam/TalkListActivity;Ljava/lang/String;)V

    .line 158
    iget-object v4, p0, Lcom/lzx/iteam/TalkListActivity$1;->this$0:Lcom/lzx/iteam/TalkListActivity;

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Lcom/lzx/iteam/TalkListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, p0, Lcom/lzx/iteam/TalkListActivity$1;->this$0:Lcom/lzx/iteam/TalkListActivity;

    invoke-virtual {v5}, Lcom/lzx/iteam/TalkListActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto/16 :goto_0

    .line 152
    :cond_4
    iget-object v4, p0, Lcom/lzx/iteam/TalkListActivity$1;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->talkListTempDatas:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/lzx/iteam/TalkListActivity;->access$1(Lcom/lzx/iteam/TalkListActivity;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/lzx/iteam/TalkListActivity$1;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->mPosition:I
    invoke-static {v5}, Lcom/lzx/iteam/TalkListActivity;->access$2(Lcom/lzx/iteam/TalkListActivity;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lzx/iteam/bean/TalkListData;

    iget-object v4, v4, Lcom/lzx/iteam/bean/TalkListData;->comments:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/lzx/iteam/TalkListActivity$1;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->mReplyMap:Ljava/util/Map;
    invoke-static {v5}, Lcom/lzx/iteam/TalkListActivity;->access$7(Lcom/lzx/iteam/TalkListActivity;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 160
    .end local v2    # "talkAboutId":Ljava/lang/String;
    :cond_5
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v5, :cond_6

    .line 161
    iget-object v4, p0, Lcom/lzx/iteam/TalkListActivity$1;->this$0:Lcom/lzx/iteam/TalkListActivity;

    invoke-static {v4, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    .line 162
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 164
    :cond_6
    iget-object v5, p0, Lcom/lzx/iteam/TalkListActivity$1;->this$0:Lcom/lzx/iteam/TalkListActivity;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v5, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 165
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
