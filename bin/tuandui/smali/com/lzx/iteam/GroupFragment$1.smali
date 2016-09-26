.class Lcom/lzx/iteam/GroupFragment$1;
.super Landroid/os/Handler;
.source "GroupFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/GroupFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/GroupFragment;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/GroupFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    .line 61
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/GroupFragment$1;)Lcom/lzx/iteam/GroupFragment;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x1

    const/4 v13, 0x0

    const/16 v12, 0x64

    const/16 v11, 0x11

    const/high16 v10, 0x41a00000    # 20.0f

    .line 63
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 65
    :pswitch_0
    iget v7, p1, Landroid/os/Message;->arg1:I

    if-nez v7, :cond_7

    .line 66
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$0(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/provider/CloudDBOperation;

    move-result-object v8

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Lcom/lzx/iteam/provider/CloudDBOperation;->deleteChatGroup(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 67
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mChatGrouplist:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$1(Lcom/lzx/iteam/GroupFragment;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v8, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mPosition:I
    invoke-static {v8}, Lcom/lzx/iteam/GroupFragment;->access$2(Lcom/lzx/iteam/GroupFragment;)I

    move-result v8

    if-le v7, v8, :cond_1

    .line 68
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mChatGrouplist:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$1(Lcom/lzx/iteam/GroupFragment;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mPosition:I
    invoke-static {v8}, Lcom/lzx/iteam/GroupFragment;->access$2(Lcom/lzx/iteam/GroupFragment;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 70
    :cond_1
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->adapter:Lcom/lzx/iteam/adapter/ChatGroupAdatpter;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$3(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/adapter/ChatGroupAdatpter;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 71
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->adapter:Lcom/lzx/iteam/adapter/ChatGroupAdatpter;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$3(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/adapter/ChatGroupAdatpter;

    move-result-object v7

    iget-object v8, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mChatGrouplist:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/lzx/iteam/GroupFragment;->access$1(Lcom/lzx/iteam/GroupFragment;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/lzx/iteam/adapter/ChatGroupAdatpter;->bindData(Ljava/util/ArrayList;)V

    .line 73
    :cond_2
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v7

    iget-object v8, v7, Lcom/lzx/iteam/MainActivity;->chatGroupIds:Ljava/util/ArrayList;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 74
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mMsgDB:Lcom/lzx/iteam/provider/MessageDB;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$5(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/provider/MessageDB;

    move-result-object v7

    iget-object v8, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v8}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v8

    iget-object v8, v8, Lcom/lzx/iteam/MainActivity;->chatGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Lcom/lzx/iteam/provider/MessageDB;->getUnReadCountOfAllGroup(Ljava/util/List;)I

    move-result v7

    if-nez v7, :cond_4

    .line 75
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v7

    iget-object v7, v7, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    :cond_3
    :goto_1
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    invoke-virtual {v7}, Lcom/lzx/iteam/GroupFragment;->getChatGroupList()V

    .line 112
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v7

    const-string v8, "\u9000\u51fa\u5c0f\u7ec4\u6210\u529f"

    invoke-static {v7, v8, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 77
    :cond_4
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v7

    iget-object v7, v7, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mMsgDB:Lcom/lzx/iteam/provider/MessageDB;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$5(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/provider/MessageDB;

    move-result-object v7

    iget-object v8, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v8}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v8

    iget-object v8, v8, Lcom/lzx/iteam/MainActivity;->chatGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Lcom/lzx/iteam/provider/MessageDB;->getUnReadCountOfAllGroup(Ljava/util/List;)I

    move-result v5

    .line 79
    .local v5, "unread":I
    const/16 v7, 0xa

    if-ge v5, v7, :cond_5

    .line 80
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v7

    iget-object v7, v7, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 81
    .local v3, "linearParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v7

    invoke-static {v7, v10}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v4

    .line 82
    .local v4, "pd":I
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 83
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 84
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v7

    iget-object v7, v7, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v7

    iget-object v7, v7, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    const v8, 0x7f02033b

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 86
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v7

    iget-object v7, v7, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 87
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v7

    iget-object v7, v7, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 88
    .end local v3    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v4    # "pd":I
    :cond_5
    if-ge v5, v12, :cond_6

    .line 89
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v7

    iget-object v7, v7, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 90
    .restart local v3    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v7

    const/high16 v8, 0x41f00000    # 30.0f

    invoke-static {v7, v8}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v6

    .line 91
    .local v6, "widthPx":I
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v7

    invoke-static {v7, v10}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v2

    .line 92
    .local v2, "heightPx":I
    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 93
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 94
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v7

    iget-object v7, v7, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v7

    iget-object v7, v7, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    const v8, 0x7f02033c

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 96
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v7

    iget-object v7, v7, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 97
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v7

    iget-object v7, v7, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 98
    .end local v2    # "heightPx":I
    .end local v3    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v6    # "widthPx":I
    :cond_6
    if-lt v5, v12, :cond_3

    .line 99
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v7

    iget-object v7, v7, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 100
    .restart local v3    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v7

    const/high16 v8, 0x42200000    # 40.0f

    invoke-static {v7, v8}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v6

    .line 101
    .restart local v6    # "widthPx":I
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v7

    invoke-static {v7, v10}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v2

    .line 102
    .restart local v2    # "heightPx":I
    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 103
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 104
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v7

    iget-object v7, v7, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v7

    iget-object v7, v7, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    const v8, 0x7f02033d

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 106
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v7

    iget-object v7, v7, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 107
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v7

    iget-object v7, v7, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    const-string v8, "99+"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 114
    .end local v2    # "heightPx":I
    .end local v3    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v5    # "unread":I
    .end local v6    # "widthPx":I
    :cond_7
    iget v7, p1, Landroid/os/Message;->arg1:I

    const/16 v8, 0x1f41

    if-ne v7, v8, :cond_8

    .line 115
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v7

    const v8, 0x7f080042

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    .line 116
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 118
    :cond_8
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v8

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-static {v8, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    .line 119
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 124
    :pswitch_1
    iget v7, p1, Landroid/os/Message;->arg1:I

    if-nez v7, :cond_e

    .line 125
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    .line 126
    .local v1, "chatGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/ChatGroup;>;"
    if-eqz v1, :cond_0

    .line 127
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v7

    iget-object v7, v7, Lcom/lzx/iteam/MainActivity;->chatGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 128
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_a

    .line 131
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mMsgDB:Lcom/lzx/iteam/provider/MessageDB;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$5(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/provider/MessageDB;

    move-result-object v7

    iget-object v8, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v8}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v8

    iget-object v8, v8, Lcom/lzx/iteam/MainActivity;->chatGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Lcom/lzx/iteam/provider/MessageDB;->getUnReadCountOfAllGroup(Ljava/util/List;)I

    move-result v7

    if-nez v7, :cond_b

    .line 132
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v7

    iget-object v7, v7, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    :cond_9
    :goto_3
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->adapter:Lcom/lzx/iteam/adapter/ChatGroupAdatpter;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$3(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/adapter/ChatGroupAdatpter;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 170
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->adapter:Lcom/lzx/iteam/adapter/ChatGroupAdatpter;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$3(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/adapter/ChatGroupAdatpter;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/lzx/iteam/adapter/ChatGroupAdatpter;->bindData(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 128
    :cond_a
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/ChatGroup;

    .line 129
    .local v0, "chatGroup":Lcom/lzx/iteam/bean/ChatGroup;
    iget-object v8, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v8}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v8

    iget-object v8, v8, Lcom/lzx/iteam/MainActivity;->chatGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ChatGroup;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 134
    .end local v0    # "chatGroup":Lcom/lzx/iteam/bean/ChatGroup;
    :cond_b
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v7

    iget-object v7, v7, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mMsgDB:Lcom/lzx/iteam/provider/MessageDB;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$5(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/provider/MessageDB;

    move-result-object v7

    iget-object v8, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v8}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v8

    iget-object v8, v8, Lcom/lzx/iteam/MainActivity;->chatGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Lcom/lzx/iteam/provider/MessageDB;->getUnReadCountOfAllGroup(Ljava/util/List;)I

    move-result v5

    .line 136
    .restart local v5    # "unread":I
    const-string v7, "Service"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "GroupFragment---onNewMessage--unread="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/16 v7, 0xa

    if-ge v5, v7, :cond_c

    .line 139
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v7

    iget-object v7, v7, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 140
    .restart local v3    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v7

    invoke-static {v7, v10}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v4

    .line 141
    .restart local v4    # "pd":I
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 142
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 143
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v7

    iget-object v7, v7, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v7

    iget-object v7, v7, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    const v8, 0x7f02033b

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 145
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v7

    iget-object v7, v7, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 146
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v7

    iget-object v7, v7, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 147
    .end local v3    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v4    # "pd":I
    :cond_c
    if-ge v5, v12, :cond_d

    .line 148
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v7

    iget-object v7, v7, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 149
    .restart local v3    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v7

    const/high16 v8, 0x41f00000    # 30.0f

    invoke-static {v7, v8}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v6

    .line 150
    .restart local v6    # "widthPx":I
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v7

    invoke-static {v7, v10}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v2

    .line 151
    .restart local v2    # "heightPx":I
    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 152
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 153
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v7

    iget-object v7, v7, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v7

    iget-object v7, v7, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    const v8, 0x7f02033c

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 155
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v7

    iget-object v7, v7, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 156
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v7

    iget-object v7, v7, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 157
    .end local v2    # "heightPx":I
    .end local v3    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v6    # "widthPx":I
    :cond_d
    if-lt v5, v12, :cond_9

    .line 158
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v7

    iget-object v7, v7, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 159
    .restart local v3    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v7

    const/high16 v8, 0x42200000    # 40.0f

    invoke-static {v7, v8}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v6

    .line 160
    .restart local v6    # "widthPx":I
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v7

    invoke-static {v7, v10}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v2

    .line 161
    .restart local v2    # "heightPx":I
    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 162
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 163
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v7

    iget-object v7, v7, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v7

    iget-object v7, v7, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    const v8, 0x7f02033d

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 165
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v7

    iget-object v7, v7, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 166
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v7

    iget-object v7, v7, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    const-string v8, "99+"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 175
    .end local v1    # "chatGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/ChatGroup;>;"
    .end local v2    # "heightPx":I
    .end local v3    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v5    # "unread":I
    .end local v6    # "widthPx":I
    :cond_e
    iget v7, p1, Landroid/os/Message;->arg1:I

    const/16 v8, 0x1f41

    if-eq v7, v8, :cond_0

    .line 178
    iget v7, p1, Landroid/os/Message;->arg1:I

    const/16 v8, 0x3ea

    if-eq v7, v8, :cond_f

    iget v7, p1, Landroid/os/Message;->arg1:I

    const/16 v8, 0x3eb

    if-eq v7, v8, :cond_f

    iget v7, p1, Landroid/os/Message;->arg1:I

    const/16 v8, 0x3ed

    if-ne v7, v8, :cond_10

    .line 179
    :cond_f
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$6(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v8

    const-string v9, "\u63d0\u793a"

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v10, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    const v11, 0x7f08002c

    invoke-virtual {v10, v11}, Lcom/lzx/iteam/GroupFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v7, v10}, Lcom/lzx/iteam/util/AllDialogUtil;->titleMsgBtnStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 180
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$6(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v7

    new-instance v8, Lcom/lzx/iteam/GroupFragment$1$1;

    invoke-direct {v8, p0}, Lcom/lzx/iteam/GroupFragment$1$1;-><init>(Lcom/lzx/iteam/GroupFragment$1;)V

    invoke-virtual {v7, v8}, Lcom/lzx/iteam/util/AllDialogUtil;->setOnDialogListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;)V

    goto/16 :goto_0

    .line 203
    :cond_10
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment$1;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v7}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v8

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-static {v8, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    .line 204
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
