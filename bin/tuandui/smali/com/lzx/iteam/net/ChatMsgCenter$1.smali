.class Lcom/lzx/iteam/net/ChatMsgCenter$1;
.super Landroid/os/Handler;
.source "ChatMsgCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/net/ChatMsgCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/net/ChatMsgCenter;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/net/ChatMsgCenter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/net/ChatMsgCenter$1;->this$0:Lcom/lzx/iteam/net/ChatMsgCenter;

    .line 43
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/net/ChatMsgCenter$1;)Lcom/lzx/iteam/net/ChatMsgCenter;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lzx/iteam/net/ChatMsgCenter$1;->this$0:Lcom/lzx/iteam/net/ChatMsgCenter;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 46
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 48
    :pswitch_0
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_4

    .line 49
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 50
    .local v0, "cloudChatMoreMsgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v2, "localChatMoreMsgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;>;"
    iget-object v3, p0, Lcom/lzx/iteam/net/ChatMsgCenter$1;->this$0:Lcom/lzx/iteam/net/ChatMsgCenter;

    # getter for: Lcom/lzx/iteam/net/ChatMsgCenter;->mChatMoreMsgs:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lzx/iteam/net/ChatMsgCenter;->access$0(Lcom/lzx/iteam/net/ChatMsgCenter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 53
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 54
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 57
    iget-object v3, p0, Lcom/lzx/iteam/net/ChatMsgCenter$1;->this$0:Lcom/lzx/iteam/net/ChatMsgCenter;

    # getter for: Lcom/lzx/iteam/net/ChatMsgCenter;->mChatMoreMsgs:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lzx/iteam/net/ChatMsgCenter;->access$0(Lcom/lzx/iteam/net/ChatMsgCenter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 58
    iget-object v3, p0, Lcom/lzx/iteam/net/ChatMsgCenter$1;->this$0:Lcom/lzx/iteam/net/ChatMsgCenter;

    # invokes: Lcom/lzx/iteam/net/ChatMsgCenter;->notifyChatMsgList()V
    invoke-static {v3}, Lcom/lzx/iteam/net/ChatMsgCenter;->access$1(Lcom/lzx/iteam/net/ChatMsgCenter;)V

    goto :goto_0

    .line 55
    :cond_1
    iget-object v3, p0, Lcom/lzx/iteam/net/ChatMsgCenter$1;->this$0:Lcom/lzx/iteam/net/ChatMsgCenter;

    iget-object v4, v3, Lcom/lzx/iteam/net/ChatMsgCenter;->mMsgDB:Lcom/lzx/iteam/provider/MessageDB;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    invoke-virtual {v4, v3}, Lcom/lzx/iteam/provider/MessageDB;->addChatMessage(Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 59
    .end local v1    # "i":I
    :cond_2
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v5, :cond_3

    .line 60
    iget-object v3, p0, Lcom/lzx/iteam/net/ChatMsgCenter$1;->this$0:Lcom/lzx/iteam/net/ChatMsgCenter;

    # getter for: Lcom/lzx/iteam/net/ChatMsgCenter;->mListener:Lcom/lzx/iteam/net/ChatMsgCenter$ChatMsgListener;
    invoke-static {v3}, Lcom/lzx/iteam/net/ChatMsgCenter;->access$2(Lcom/lzx/iteam/net/ChatMsgCenter;)Lcom/lzx/iteam/net/ChatMsgCenter$ChatMsgListener;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lzx/iteam/net/ChatMsgCenter$1;->this$0:Lcom/lzx/iteam/net/ChatMsgCenter;

    # getter for: Lcom/lzx/iteam/net/ChatMsgCenter;->mListener:Lcom/lzx/iteam/net/ChatMsgCenter$ChatMsgListener;
    invoke-static {v3}, Lcom/lzx/iteam/net/ChatMsgCenter;->access$2(Lcom/lzx/iteam/net/ChatMsgCenter;)Lcom/lzx/iteam/net/ChatMsgCenter$ChatMsgListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v3, v4}, Lcom/lzx/iteam/net/ChatMsgCenter$ChatMsgListener;->onNoChange(I)V

    goto :goto_0

    .line 62
    :cond_3
    iget-object v3, p0, Lcom/lzx/iteam/net/ChatMsgCenter$1;->this$0:Lcom/lzx/iteam/net/ChatMsgCenter;

    # getter for: Lcom/lzx/iteam/net/ChatMsgCenter;->mListener:Lcom/lzx/iteam/net/ChatMsgCenter$ChatMsgListener;
    invoke-static {v3}, Lcom/lzx/iteam/net/ChatMsgCenter;->access$2(Lcom/lzx/iteam/net/ChatMsgCenter;)Lcom/lzx/iteam/net/ChatMsgCenter$ChatMsgListener;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lzx/iteam/net/ChatMsgCenter$1;->this$0:Lcom/lzx/iteam/net/ChatMsgCenter;

    # getter for: Lcom/lzx/iteam/net/ChatMsgCenter;->mListener:Lcom/lzx/iteam/net/ChatMsgCenter$ChatMsgListener;
    invoke-static {v3}, Lcom/lzx/iteam/net/ChatMsgCenter;->access$2(Lcom/lzx/iteam/net/ChatMsgCenter;)Lcom/lzx/iteam/net/ChatMsgCenter$ChatMsgListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v3, v4}, Lcom/lzx/iteam/net/ChatMsgCenter$ChatMsgListener;->onOver(I)V

    goto :goto_0

    .line 66
    .end local v0    # "cloudChatMoreMsgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;>;"
    .end local v2    # "localChatMoreMsgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;>;"
    :cond_4
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x1f41

    if-ne v3, v4, :cond_5

    .line 67
    iget-object v3, p0, Lcom/lzx/iteam/net/ChatMsgCenter$1;->this$0:Lcom/lzx/iteam/net/ChatMsgCenter;

    # getter for: Lcom/lzx/iteam/net/ChatMsgCenter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/lzx/iteam/net/ChatMsgCenter;->access$3(Lcom/lzx/iteam/net/ChatMsgCenter;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080042

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 68
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 69
    :cond_5
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x3ea

    if-eq v3, v4, :cond_6

    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x3eb

    if-eq v3, v4, :cond_6

    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x3ed

    if-ne v3, v4, :cond_7

    .line 70
    :cond_6
    iget-object v3, p0, Lcom/lzx/iteam/net/ChatMsgCenter$1;->this$0:Lcom/lzx/iteam/net/ChatMsgCenter;

    # getter for: Lcom/lzx/iteam/net/ChatMsgCenter;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;
    invoke-static {v3}, Lcom/lzx/iteam/net/ChatMsgCenter;->access$4(Lcom/lzx/iteam/net/ChatMsgCenter;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v4

    const-string v5, "\u63d0\u793a"

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v6, p0, Lcom/lzx/iteam/net/ChatMsgCenter$1;->this$0:Lcom/lzx/iteam/net/ChatMsgCenter;

    # getter for: Lcom/lzx/iteam/net/ChatMsgCenter;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/lzx/iteam/net/ChatMsgCenter;->access$3(Lcom/lzx/iteam/net/ChatMsgCenter;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f08002c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v3, v6}, Lcom/lzx/iteam/util/AllDialogUtil;->titleMsgBtnStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 71
    iget-object v3, p0, Lcom/lzx/iteam/net/ChatMsgCenter$1;->this$0:Lcom/lzx/iteam/net/ChatMsgCenter;

    # getter for: Lcom/lzx/iteam/net/ChatMsgCenter;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;
    invoke-static {v3}, Lcom/lzx/iteam/net/ChatMsgCenter;->access$4(Lcom/lzx/iteam/net/ChatMsgCenter;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v3

    new-instance v4, Lcom/lzx/iteam/net/ChatMsgCenter$1$1;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/net/ChatMsgCenter$1$1;-><init>(Lcom/lzx/iteam/net/ChatMsgCenter$1;)V

    invoke-virtual {v3, v4}, Lcom/lzx/iteam/util/AllDialogUtil;->setOnDialogListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;)V

    goto/16 :goto_0

    .line 94
    :cond_7
    iget-object v3, p0, Lcom/lzx/iteam/net/ChatMsgCenter$1;->this$0:Lcom/lzx/iteam/net/ChatMsgCenter;

    # getter for: Lcom/lzx/iteam/net/ChatMsgCenter;->mListener:Lcom/lzx/iteam/net/ChatMsgCenter$ChatMsgListener;
    invoke-static {v3}, Lcom/lzx/iteam/net/ChatMsgCenter;->access$2(Lcom/lzx/iteam/net/ChatMsgCenter;)Lcom/lzx/iteam/net/ChatMsgCenter$ChatMsgListener;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lzx/iteam/net/ChatMsgCenter$1;->this$0:Lcom/lzx/iteam/net/ChatMsgCenter;

    # getter for: Lcom/lzx/iteam/net/ChatMsgCenter;->mListener:Lcom/lzx/iteam/net/ChatMsgCenter$ChatMsgListener;
    invoke-static {v3}, Lcom/lzx/iteam/net/ChatMsgCenter;->access$2(Lcom/lzx/iteam/net/ChatMsgCenter;)Lcom/lzx/iteam/net/ChatMsgCenter$ChatMsgListener;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Lcom/lzx/iteam/net/ChatMsgCenter$ChatMsgListener;->onError(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
