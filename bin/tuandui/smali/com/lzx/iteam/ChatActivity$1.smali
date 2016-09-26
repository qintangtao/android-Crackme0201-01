.class Lcom/lzx/iteam/ChatActivity$1;
.super Landroid/os/Handler;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ChatActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ChatActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ChatActivity$1;->this$0:Lcom/lzx/iteam/ChatActivity;

    .line 175
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/ChatActivity$1;)Lcom/lzx/iteam/ChatActivity;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$1;->this$0:Lcom/lzx/iteam/ChatActivity;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v8, 0x7f080042

    const/16 v7, 0x1f41

    const/4 v6, 0x1

    .line 178
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 279
    :goto_0
    return-void

    .line 180
    :sswitch_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_1

    .line 181
    const-string v2, "endresult"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  ---- --> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    .line 183
    .local v0, "chatMsg":Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    iget-object v2, p0, Lcom/lzx/iteam/ChatActivity$1;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;
    invoke-static {v2}, Lcom/lzx/iteam/ChatActivity;->access$0(Lcom/lzx/iteam/ChatActivity;)Lcom/lzx/iteam/provider/CloudDBOperation;

    move-result-object v2

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getChatGroupID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/lzx/iteam/provider/CloudDBOperation;->updateChatMessage(Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;Ljava/lang/String;)V

    .line 184
    iget-object v2, p0, Lcom/lzx/iteam/ChatActivity$1;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mMsgDB:Lcom/lzx/iteam/provider/MessageDB;
    invoke-static {v2}, Lcom/lzx/iteam/ChatActivity;->access$1(Lcom/lzx/iteam/ChatActivity;)Lcom/lzx/iteam/provider/MessageDB;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 185
    const-string v2, "ChatService"

    const-string v3, "success"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v2, p0, Lcom/lzx/iteam/ChatActivity$1;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mMsgDB:Lcom/lzx/iteam/provider/MessageDB;
    invoke-static {v2}, Lcom/lzx/iteam/ChatActivity;->access$1(Lcom/lzx/iteam/ChatActivity;)Lcom/lzx/iteam/provider/MessageDB;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/provider/MessageDB;->addChatMessage(Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V

    .line 189
    :cond_0
    iget-object v2, p0, Lcom/lzx/iteam/ChatActivity$1;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mChatMessageList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/lzx/iteam/ChatActivity;->access$2(Lcom/lzx/iteam/ChatActivity;)Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/lzx/iteam/ChatActivity$1;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mDatas:Ljava/util/List;
    invoke-static {v3}, Lcom/lzx/iteam/ChatActivity;->access$3(Lcom/lzx/iteam/ChatActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 194
    .end local v0    # "chatMsg":Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    :cond_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v7, :cond_2

    .line 195
    iget-object v2, p0, Lcom/lzx/iteam/ChatActivity$1;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lzx/iteam/ChatActivity;->access$4(Lcom/lzx/iteam/ChatActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v8, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 196
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 198
    :cond_2
    iget-object v2, p0, Lcom/lzx/iteam/ChatActivity$1;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lzx/iteam/ChatActivity;->access$4(Lcom/lzx/iteam/ChatActivity;)Landroid/content/Context;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 199
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 204
    :sswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 205
    .local v1, "ts":Ljava/lang/Long;
    iget-object v2, p0, Lcom/lzx/iteam/ChatActivity$1;->this$0:Lcom/lzx/iteam/ChatActivity;

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lzx/iteam/ChatActivity;->access$5(Lcom/lzx/iteam/ChatActivity;Ljava/lang/String;)V

    .line 206
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_3

    .line 211
    iget-object v2, p0, Lcom/lzx/iteam/ChatActivity$1;->this$0:Lcom/lzx/iteam/ChatActivity;

    iget-object v3, p0, Lcom/lzx/iteam/ChatActivity$1;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mCenter:Lcom/lzx/iteam/net/ChatMsgCenter;
    invoke-static {v3}, Lcom/lzx/iteam/ChatActivity;->access$6(Lcom/lzx/iteam/ChatActivity;)Lcom/lzx/iteam/net/ChatMsgCenter;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/ChatActivity$1;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->page:I
    invoke-static {v4}, Lcom/lzx/iteam/ChatActivity;->access$7(Lcom/lzx/iteam/ChatActivity;)I

    move-result v4

    iget-object v5, p0, Lcom/lzx/iteam/ChatActivity$1;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mNewTime:Ljava/lang/String;
    invoke-static {v5}, Lcom/lzx/iteam/ChatActivity;->access$8(Lcom/lzx/iteam/ChatActivity;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/lzx/iteam/ChatActivity$1;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mGroupID:Ljava/lang/String;
    invoke-static {v6}, Lcom/lzx/iteam/ChatActivity;->access$9(Lcom/lzx/iteam/ChatActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/lzx/iteam/net/ChatMsgCenter;->getChatMsgData(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lzx/iteam/ChatActivity;->access$10(Lcom/lzx/iteam/ChatActivity;Ljava/util/List;)V

    goto/16 :goto_0

    .line 214
    :cond_3
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v7, :cond_4

    .line 215
    iget-object v2, p0, Lcom/lzx/iteam/ChatActivity$1;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lzx/iteam/ChatActivity;->access$4(Lcom/lzx/iteam/ChatActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v8, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 216
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 217
    :cond_4
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0x3ea

    if-eq v2, v3, :cond_5

    iget v2, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0x3eb

    if-eq v2, v3, :cond_5

    iget v2, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0x3ed

    if-ne v2, v3, :cond_6

    .line 218
    :cond_5
    iget-object v2, p0, Lcom/lzx/iteam/ChatActivity$1;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;
    invoke-static {v2}, Lcom/lzx/iteam/ChatActivity;->access$11(Lcom/lzx/iteam/ChatActivity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v3

    const-string v4, "\u63d0\u793a"

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v5, p0, Lcom/lzx/iteam/ChatActivity$1;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/lzx/iteam/ChatActivity;->access$4(Lcom/lzx/iteam/ChatActivity;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f08002c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v2, v5}, Lcom/lzx/iteam/util/AllDialogUtil;->titleMsgBtnStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 219
    iget-object v2, p0, Lcom/lzx/iteam/ChatActivity$1;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;
    invoke-static {v2}, Lcom/lzx/iteam/ChatActivity;->access$11(Lcom/lzx/iteam/ChatActivity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v2

    new-instance v3, Lcom/lzx/iteam/ChatActivity$1$1;

    invoke-direct {v3, p0}, Lcom/lzx/iteam/ChatActivity$1$1;-><init>(Lcom/lzx/iteam/ChatActivity$1;)V

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/util/AllDialogUtil;->setOnDialogListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;)V

    goto/16 :goto_0

    .line 244
    :cond_6
    iget-object v2, p0, Lcom/lzx/iteam/ChatActivity$1;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lzx/iteam/ChatActivity;->access$4(Lcom/lzx/iteam/ChatActivity;)Landroid/content/Context;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 245
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 250
    .end local v1    # "ts":Ljava/lang/Long;
    :sswitch_2
    iget-object v2, p0, Lcom/lzx/iteam/ChatActivity$1;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mRpbPlaySound:Lcom/lzx/iteam/widget/RoundProgressBar;
    invoke-static {v2}, Lcom/lzx/iteam/ChatActivity;->access$12(Lcom/lzx/iteam/ChatActivity;)Lcom/lzx/iteam/widget/RoundProgressBar;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/widget/RoundProgressBar;->setVisibility(I)V

    .line 251
    iget-object v2, p0, Lcom/lzx/iteam/ChatActivity$1;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mRpbPlaySound:Lcom/lzx/iteam/widget/RoundProgressBar;
    invoke-static {v2}, Lcom/lzx/iteam/ChatActivity;->access$12(Lcom/lzx/iteam/ChatActivity;)Lcom/lzx/iteam/widget/RoundProgressBar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/widget/RoundProgressBar;->setProgress(I)V

    goto/16 :goto_0

    .line 178
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_1
        0x4d2 -> :sswitch_2
        0xbb8 -> :sswitch_0
    .end sparse-switch
.end method
