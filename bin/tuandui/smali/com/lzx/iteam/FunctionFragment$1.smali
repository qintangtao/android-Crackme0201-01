.class Lcom/lzx/iteam/FunctionFragment$1;
.super Landroid/os/Handler;
.source "FunctionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/FunctionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/FunctionFragment;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/FunctionFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/FunctionFragment$1;->this$0:Lcom/lzx/iteam/FunctionFragment;

    .line 90
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/FunctionFragment$1;)Lcom/lzx/iteam/FunctionFragment;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment$1;->this$0:Lcom/lzx/iteam/FunctionFragment;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 93
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 94
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 96
    :pswitch_0
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_2

    .line 97
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/lzx/iteam/bean/TalkListData;

    .line 98
    .local v2, "talkListData":Lcom/lzx/iteam/bean/TalkListData;
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/lzx/iteam/bean/TalkListData;->talkId:Ljava/lang/String;

    invoke-static {v3}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/lzx/iteam/FunctionFragment$1;->this$0:Lcom/lzx/iteam/FunctionFragment;

    # getter for: Lcom/lzx/iteam/FunctionFragment;->mUid:Ljava/lang/String;
    invoke-static {v3}, Lcom/lzx/iteam/FunctionFragment;->access$0(Lcom/lzx/iteam/FunctionFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/lzx/iteam/bean/TalkListData;->uId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 99
    iget-object v3, p0, Lcom/lzx/iteam/FunctionFragment$1;->this$0:Lcom/lzx/iteam/FunctionFragment;

    # getter for: Lcom/lzx/iteam/FunctionFragment;->mCircleNewMessage:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/lzx/iteam/FunctionFragment;->access$1(Lcom/lzx/iteam/FunctionFragment;)Landroid/widget/RelativeLayout;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 100
    iget-object v3, p0, Lcom/lzx/iteam/FunctionFragment$1;->this$0:Lcom/lzx/iteam/FunctionFragment;

    # getter for: Lcom/lzx/iteam/FunctionFragment;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;
    invoke-static {v3}, Lcom/lzx/iteam/FunctionFragment;->access$2(Lcom/lzx/iteam/FunctionFragment;)Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    iget-object v4, v2, Lcom/lzx/iteam/bean/TalkListData;->uImage:Ljava/lang/String;

    iget-object v5, p0, Lcom/lzx/iteam/FunctionFragment$1;->this$0:Lcom/lzx/iteam/FunctionFragment;

    # getter for: Lcom/lzx/iteam/FunctionFragment;->mCircleNewImage:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/lzx/iteam/FunctionFragment;->access$3(Lcom/lzx/iteam/FunctionFragment;)Landroid/widget/ImageView;

    move-result-object v5

    sget-object v6, Lcom/lzx/iteam/util/ImageLoaderInterface;->optionHeadImage:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v3, v4, v5, v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 101
    iget-object v3, p0, Lcom/lzx/iteam/FunctionFragment$1;->this$0:Lcom/lzx/iteam/FunctionFragment;

    iget-object v4, v2, Lcom/lzx/iteam/bean/TalkListData;->talkId:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/lzx/iteam/FunctionFragment;->access$4(Lcom/lzx/iteam/FunctionFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_1
    iget-object v3, p0, Lcom/lzx/iteam/FunctionFragment$1;->this$0:Lcom/lzx/iteam/FunctionFragment;

    # getter for: Lcom/lzx/iteam/FunctionFragment;->mCircleNewMessage:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/lzx/iteam/FunctionFragment;->access$1(Lcom/lzx/iteam/FunctionFragment;)Landroid/widget/RelativeLayout;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 106
    .end local v2    # "talkListData":Lcom/lzx/iteam/bean/TalkListData;
    :cond_2
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x1f41

    if-ne v3, v4, :cond_3

    .line 107
    iget-object v3, p0, Lcom/lzx/iteam/FunctionFragment$1;->this$0:Lcom/lzx/iteam/FunctionFragment;

    # getter for: Lcom/lzx/iteam/FunctionFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v3}, Lcom/lzx/iteam/FunctionFragment;->access$5(Lcom/lzx/iteam/FunctionFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v3

    const v4, 0x7f080042

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 108
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 109
    :cond_3
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x3ea

    if-eq v3, v4, :cond_4

    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x3eb

    if-eq v3, v4, :cond_4

    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x3ed

    if-ne v3, v4, :cond_5

    .line 110
    :cond_4
    iget-object v3, p0, Lcom/lzx/iteam/FunctionFragment$1;->this$0:Lcom/lzx/iteam/FunctionFragment;

    # getter for: Lcom/lzx/iteam/FunctionFragment;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;
    invoke-static {v3}, Lcom/lzx/iteam/FunctionFragment;->access$6(Lcom/lzx/iteam/FunctionFragment;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v4

    const-string v5, "\u63d0\u793a"

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v6, p0, Lcom/lzx/iteam/FunctionFragment$1;->this$0:Lcom/lzx/iteam/FunctionFragment;

    # getter for: Lcom/lzx/iteam/FunctionFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v6}, Lcom/lzx/iteam/FunctionFragment;->access$5(Lcom/lzx/iteam/FunctionFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v6

    const v7, 0x7f08002c

    invoke-virtual {v6, v7}, Lcom/lzx/iteam/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v3, v6}, Lcom/lzx/iteam/util/AllDialogUtil;->titleMsgBtnStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 111
    iget-object v3, p0, Lcom/lzx/iteam/FunctionFragment$1;->this$0:Lcom/lzx/iteam/FunctionFragment;

    # getter for: Lcom/lzx/iteam/FunctionFragment;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;
    invoke-static {v3}, Lcom/lzx/iteam/FunctionFragment;->access$6(Lcom/lzx/iteam/FunctionFragment;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v3

    new-instance v4, Lcom/lzx/iteam/FunctionFragment$1$1;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/FunctionFragment$1$1;-><init>(Lcom/lzx/iteam/FunctionFragment$1;)V

    invoke-virtual {v3, v4}, Lcom/lzx/iteam/util/AllDialogUtil;->setOnDialogListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;)V

    goto/16 :goto_0

    .line 134
    :cond_5
    iget-object v3, p0, Lcom/lzx/iteam/FunctionFragment$1;->this$0:Lcom/lzx/iteam/FunctionFragment;

    # getter for: Lcom/lzx/iteam/FunctionFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v3}, Lcom/lzx/iteam/FunctionFragment;->access$5(Lcom/lzx/iteam/FunctionFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 135
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 140
    :pswitch_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_6

    .line 141
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 142
    .local v0, "msg1":I
    iget-object v3, p0, Lcom/lzx/iteam/FunctionFragment$1;->this$0:Lcom/lzx/iteam/FunctionFragment;

    iget-object v4, p0, Lcom/lzx/iteam/FunctionFragment$1;->this$0:Lcom/lzx/iteam/FunctionFragment;

    # getter for: Lcom/lzx/iteam/FunctionFragment;->mTvScheduleNew:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/lzx/iteam/FunctionFragment;->access$7(Lcom/lzx/iteam/FunctionFragment;)Landroid/widget/TextView;

    move-result-object v4

    # invokes: Lcom/lzx/iteam/FunctionFragment;->setNewMsg(Landroid/widget/TextView;I)V
    invoke-static {v3, v4, v0}, Lcom/lzx/iteam/FunctionFragment;->access$8(Lcom/lzx/iteam/FunctionFragment;Landroid/widget/TextView;I)V

    goto/16 :goto_0

    .line 143
    .end local v0    # "msg1":I
    :cond_6
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v5, :cond_0

    .line 144
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 145
    .local v1, "msg2":I
    iget-object v3, p0, Lcom/lzx/iteam/FunctionFragment$1;->this$0:Lcom/lzx/iteam/FunctionFragment;

    iget-object v4, p0, Lcom/lzx/iteam/FunctionFragment$1;->this$0:Lcom/lzx/iteam/FunctionFragment;

    # getter for: Lcom/lzx/iteam/FunctionFragment;->mTvApprovalNew:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/lzx/iteam/FunctionFragment;->access$9(Lcom/lzx/iteam/FunctionFragment;)Landroid/widget/TextView;

    move-result-object v4

    # invokes: Lcom/lzx/iteam/FunctionFragment;->setNewMsg(Landroid/widget/TextView;I)V
    invoke-static {v3, v4, v1}, Lcom/lzx/iteam/FunctionFragment;->access$8(Lcom/lzx/iteam/FunctionFragment;Landroid/widget/TextView;I)V

    goto/16 :goto_0

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
