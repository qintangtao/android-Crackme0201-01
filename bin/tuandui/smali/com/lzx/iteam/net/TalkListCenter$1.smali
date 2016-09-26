.class Lcom/lzx/iteam/net/TalkListCenter$1;
.super Landroid/os/Handler;
.source "TalkListCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/net/TalkListCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/net/TalkListCenter;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/net/TalkListCenter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/net/TalkListCenter$1;->this$0:Lcom/lzx/iteam/net/TalkListCenter;

    .line 54
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/net/TalkListCenter$1;)Lcom/lzx/iteam/net/TalkListCenter;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lzx/iteam/net/TalkListCenter$1;->this$0:Lcom/lzx/iteam/net/TalkListCenter;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 57
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 59
    :pswitch_0
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_5

    .line 60
    iget-object v3, p0, Lcom/lzx/iteam/net/TalkListCenter$1;->this$0:Lcom/lzx/iteam/net/TalkListCenter;

    # getter for: Lcom/lzx/iteam/net/TalkListCenter;->isUpDate:Z
    invoke-static {v3}, Lcom/lzx/iteam/net/TalkListCenter;->access$0(Lcom/lzx/iteam/net/TalkListCenter;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 61
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 62
    .local v0, "cloudTalkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/TalkListData;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 63
    iget-object v3, p0, Lcom/lzx/iteam/net/TalkListCenter$1;->this$0:Lcom/lzx/iteam/net/TalkListCenter;

    # getter for: Lcom/lzx/iteam/net/TalkListCenter;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;
    invoke-static {v3}, Lcom/lzx/iteam/net/TalkListCenter;->access$1(Lcom/lzx/iteam/net/TalkListCenter;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v4

    const-string v5, "talk_count"

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/bean/TalkListData;

    iget-object v3, v3, Lcom/lzx/iteam/bean/TalkListData;->allCounts:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 67
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v2, "localTalkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/TalkListData;>;"
    iget-object v3, p0, Lcom/lzx/iteam/net/TalkListCenter$1;->this$0:Lcom/lzx/iteam/net/TalkListCenter;

    # getter for: Lcom/lzx/iteam/net/TalkListCenter;->mTalkListData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lzx/iteam/net/TalkListCenter;->access$2(Lcom/lzx/iteam/net/TalkListCenter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 70
    iget-object v3, p0, Lcom/lzx/iteam/net/TalkListCenter$1;->this$0:Lcom/lzx/iteam/net/TalkListCenter;

    # invokes: Lcom/lzx/iteam/net/TalkListCenter;->updateCloudTalkData(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    invoke-static {v3, v2, v0}, Lcom/lzx/iteam/net/TalkListCenter;->access$3(Lcom/lzx/iteam/net/TalkListCenter;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 71
    iget-object v3, p0, Lcom/lzx/iteam/net/TalkListCenter$1;->this$0:Lcom/lzx/iteam/net/TalkListCenter;

    # getter for: Lcom/lzx/iteam/net/TalkListCenter;->mTalkListData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lzx/iteam/net/TalkListCenter;->access$2(Lcom/lzx/iteam/net/TalkListCenter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 72
    iget-object v3, p0, Lcom/lzx/iteam/net/TalkListCenter$1;->this$0:Lcom/lzx/iteam/net/TalkListCenter;

    # invokes: Lcom/lzx/iteam/net/TalkListCenter;->notifyCloudTalkUpdate()V
    invoke-static {v3}, Lcom/lzx/iteam/net/TalkListCenter;->access$4(Lcom/lzx/iteam/net/TalkListCenter;)V

    goto :goto_0

    .line 65
    .end local v2    # "localTalkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/TalkListData;>;"
    :cond_1
    iget-object v3, p0, Lcom/lzx/iteam/net/TalkListCenter$1;->this$0:Lcom/lzx/iteam/net/TalkListCenter;

    # getter for: Lcom/lzx/iteam/net/TalkListCenter;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;
    invoke-static {v3}, Lcom/lzx/iteam/net/TalkListCenter;->access$1(Lcom/lzx/iteam/net/TalkListCenter;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v3

    const-string v4, "talk_count"

    const-string v5, "0"

    invoke-virtual {v3, v4, v5}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_1

    .line 74
    .restart local v2    # "localTalkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/TalkListData;>;"
    :cond_2
    iget-object v3, p0, Lcom/lzx/iteam/net/TalkListCenter$1;->this$0:Lcom/lzx/iteam/net/TalkListCenter;

    # getter for: Lcom/lzx/iteam/net/TalkListCenter;->mListener:Lcom/lzx/iteam/net/TalkListCenter$TalkDataListener;
    invoke-static {v3}, Lcom/lzx/iteam/net/TalkListCenter;->access$5(Lcom/lzx/iteam/net/TalkListCenter;)Lcom/lzx/iteam/net/TalkListCenter$TalkDataListener;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lzx/iteam/net/TalkListCenter$1;->this$0:Lcom/lzx/iteam/net/TalkListCenter;

    # getter for: Lcom/lzx/iteam/net/TalkListCenter;->mListener:Lcom/lzx/iteam/net/TalkListCenter$TalkDataListener;
    invoke-static {v3}, Lcom/lzx/iteam/net/TalkListCenter;->access$5(Lcom/lzx/iteam/net/TalkListCenter;)Lcom/lzx/iteam/net/TalkListCenter$TalkDataListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/lzx/iteam/net/TalkListCenter$TalkDataListener;->onNoChange()V

    goto :goto_0

    .line 77
    .end local v0    # "cloudTalkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/TalkListData;>;"
    .end local v2    # "localTalkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/TalkListData;>;"
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 78
    .restart local v0    # "cloudTalkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/TalkListData;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_4

    .line 81
    iget-object v3, p0, Lcom/lzx/iteam/net/TalkListCenter$1;->this$0:Lcom/lzx/iteam/net/TalkListCenter;

    # invokes: Lcom/lzx/iteam/net/TalkListCenter;->notifyAddTalkList()V
    invoke-static {v3}, Lcom/lzx/iteam/net/TalkListCenter;->access$6(Lcom/lzx/iteam/net/TalkListCenter;)V

    goto/16 :goto_0

    .line 79
    :cond_4
    iget-object v4, p0, Lcom/lzx/iteam/net/TalkListCenter$1;->this$0:Lcom/lzx/iteam/net/TalkListCenter;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/bean/TalkListData;

    invoke-virtual {v4, v3}, Lcom/lzx/iteam/net/TalkListCenter;->insertTalkData(Lcom/lzx/iteam/bean/TalkListData;)J

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 85
    .end local v0    # "cloudTalkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/TalkListData;>;"
    .end local v1    # "i":I
    :cond_5
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x1f41

    if-ne v3, v4, :cond_6

    .line 86
    iget-object v3, p0, Lcom/lzx/iteam/net/TalkListCenter$1;->this$0:Lcom/lzx/iteam/net/TalkListCenter;

    # getter for: Lcom/lzx/iteam/net/TalkListCenter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/lzx/iteam/net/TalkListCenter;->access$7(Lcom/lzx/iteam/net/TalkListCenter;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080042

    .line 87
    const/4 v5, 0x1

    .line 86
    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 87
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 88
    :cond_6
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x3ea

    if-eq v3, v4, :cond_7

    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x3eb

    if-eq v3, v4, :cond_7

    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x3ed

    if-ne v3, v4, :cond_8

    .line 89
    :cond_7
    iget-object v3, p0, Lcom/lzx/iteam/net/TalkListCenter$1;->this$0:Lcom/lzx/iteam/net/TalkListCenter;

    # getter for: Lcom/lzx/iteam/net/TalkListCenter;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;
    invoke-static {v3}, Lcom/lzx/iteam/net/TalkListCenter;->access$8(Lcom/lzx/iteam/net/TalkListCenter;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v4

    const-string v5, "\u63d0\u793a"

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v6, p0, Lcom/lzx/iteam/net/TalkListCenter$1;->this$0:Lcom/lzx/iteam/net/TalkListCenter;

    # getter for: Lcom/lzx/iteam/net/TalkListCenter;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/lzx/iteam/net/TalkListCenter;->access$7(Lcom/lzx/iteam/net/TalkListCenter;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f08002c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v3, v6}, Lcom/lzx/iteam/util/AllDialogUtil;->titleMsgBtnStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 90
    iget-object v3, p0, Lcom/lzx/iteam/net/TalkListCenter$1;->this$0:Lcom/lzx/iteam/net/TalkListCenter;

    # getter for: Lcom/lzx/iteam/net/TalkListCenter;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;
    invoke-static {v3}, Lcom/lzx/iteam/net/TalkListCenter;->access$8(Lcom/lzx/iteam/net/TalkListCenter;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v3

    new-instance v4, Lcom/lzx/iteam/net/TalkListCenter$1$1;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/net/TalkListCenter$1$1;-><init>(Lcom/lzx/iteam/net/TalkListCenter$1;)V

    invoke-virtual {v3, v4}, Lcom/lzx/iteam/util/AllDialogUtil;->setOnDialogListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;)V

    goto/16 :goto_0

    .line 113
    :cond_8
    iget-object v3, p0, Lcom/lzx/iteam/net/TalkListCenter$1;->this$0:Lcom/lzx/iteam/net/TalkListCenter;

    # getter for: Lcom/lzx/iteam/net/TalkListCenter;->mListener:Lcom/lzx/iteam/net/TalkListCenter$TalkDataListener;
    invoke-static {v3}, Lcom/lzx/iteam/net/TalkListCenter;->access$5(Lcom/lzx/iteam/net/TalkListCenter;)Lcom/lzx/iteam/net/TalkListCenter$TalkDataListener;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lzx/iteam/net/TalkListCenter$1;->this$0:Lcom/lzx/iteam/net/TalkListCenter;

    # getter for: Lcom/lzx/iteam/net/TalkListCenter;->mListener:Lcom/lzx/iteam/net/TalkListCenter$TalkDataListener;
    invoke-static {v3}, Lcom/lzx/iteam/net/TalkListCenter;->access$5(Lcom/lzx/iteam/net/TalkListCenter;)Lcom/lzx/iteam/net/TalkListCenter$TalkDataListener;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Lcom/lzx/iteam/net/TalkListCenter$TalkDataListener;->onError(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
