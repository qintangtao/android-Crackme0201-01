.class Lcom/lzx/iteam/service/NetServiceManager$LooperThread$1;
.super Landroid/os/Handler;
.source "NetServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lzx/iteam/service/NetServiceManager$LooperThread;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/service/NetServiceManager$LooperThread;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/service/NetServiceManager$LooperThread$1;->this$1:Lcom/lzx/iteam/service/NetServiceManager$LooperThread;

    .line 107
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 111
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 112
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 114
    :pswitch_0
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_0

    .line 115
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/service/NetServiceManager$LooperThread$1;->this$1:Lcom/lzx/iteam/service/NetServiceManager$LooperThread;

    # getter for: Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->this$0:Lcom/lzx/iteam/service/NetServiceManager;
    invoke-static {v2}, Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->access$0(Lcom/lzx/iteam/service/NetServiceManager$LooperThread;)Lcom/lzx/iteam/service/NetServiceManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/service/NetServiceManager$LooperThread$1;->this$1:Lcom/lzx/iteam/service/NetServiceManager$LooperThread;

    # getter for: Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->this$0:Lcom/lzx/iteam/service/NetServiceManager;
    invoke-static {v3}, Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->access$0(Lcom/lzx/iteam/service/NetServiceManager$LooperThread;)Lcom/lzx/iteam/service/NetServiceManager;

    move-result-object v3

    # getter for: Lcom/lzx/iteam/service/NetServiceManager;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;
    invoke-static {v3}, Lcom/lzx/iteam/service/NetServiceManager;->access$1(Lcom/lzx/iteam/service/NetServiceManager;)Lcom/lzx/iteam/provider/CloudDBOperation;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/service/NetServiceManager$LooperThread$1;->this$1:Lcom/lzx/iteam/service/NetServiceManager$LooperThread;

    # getter for: Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->this$0:Lcom/lzx/iteam/service/NetServiceManager;
    invoke-static {v4}, Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->access$0(Lcom/lzx/iteam/service/NetServiceManager$LooperThread;)Lcom/lzx/iteam/service/NetServiceManager;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/service/NetServiceManager;->senderId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/lzx/iteam/provider/CloudDBOperation;->findUserMsgById(Ljava/lang/String;)Lcom/lzx/iteam/bean/ChatContact;

    move-result-object v3

    iget-object v3, v3, Lcom/lzx/iteam/bean/ChatContact;->userImg:Ljava/lang/String;

    iput-object v3, v2, Lcom/lzx/iteam/service/NetServiceManager;->senderAvatar:Ljava/lang/String;

    .line 116
    const/4 v1, 0x0

    .line 117
    .local v1, "chatMsg":Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/service/NetServiceManager$LooperThread$1;->this$1:Lcom/lzx/iteam/service/NetServiceManager$LooperThread;

    # getter for: Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->this$0:Lcom/lzx/iteam/service/NetServiceManager;
    invoke-static {v2}, Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->access$0(Lcom/lzx/iteam/service/NetServiceManager$LooperThread;)Lcom/lzx/iteam/service/NetServiceManager;

    move-result-object v2

    iget-object v2, v2, Lcom/lzx/iteam/service/NetServiceManager;->mt:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 130
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/service/NetServiceManager$LooperThread$1;->this$1:Lcom/lzx/iteam/service/NetServiceManager$LooperThread;

    # getter for: Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->this$0:Lcom/lzx/iteam/service/NetServiceManager;
    invoke-static {v2}, Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->access$0(Lcom/lzx/iteam/service/NetServiceManager$LooperThread;)Lcom/lzx/iteam/service/NetServiceManager;

    move-result-object v2

    # getter for: Lcom/lzx/iteam/service/NetServiceManager;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;
    invoke-static {v2}, Lcom/lzx/iteam/service/NetServiceManager;->access$1(Lcom/lzx/iteam/service/NetServiceManager;)Lcom/lzx/iteam/provider/CloudDBOperation;

    move-result-object v2

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getChatGroupID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/lzx/iteam/provider/CloudDBOperation;->updateChatMessage(Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;Ljava/lang/String;)V

    .line 131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/service/NetServiceManager$LooperThread$1;->this$1:Lcom/lzx/iteam/service/NetServiceManager$LooperThread;

    # getter for: Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->this$0:Lcom/lzx/iteam/service/NetServiceManager;
    invoke-static {v2}, Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->access$0(Lcom/lzx/iteam/service/NetServiceManager$LooperThread;)Lcom/lzx/iteam/service/NetServiceManager;

    move-result-object v2

    # getter for: Lcom/lzx/iteam/service/NetServiceManager;->mMsgDB:Lcom/lzx/iteam/provider/MessageDB;
    invoke-static {v2}, Lcom/lzx/iteam/service/NetServiceManager;->access$2(Lcom/lzx/iteam/service/NetServiceManager;)Lcom/lzx/iteam/provider/MessageDB;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 132
    const-string v2, "ChatService"

    const-string v3, "success"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/service/NetServiceManager$LooperThread$1;->this$1:Lcom/lzx/iteam/service/NetServiceManager$LooperThread;

    # getter for: Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->this$0:Lcom/lzx/iteam/service/NetServiceManager;
    invoke-static {v2}, Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->access$0(Lcom/lzx/iteam/service/NetServiceManager$LooperThread;)Lcom/lzx/iteam/service/NetServiceManager;

    move-result-object v2

    # getter for: Lcom/lzx/iteam/service/NetServiceManager;->mMsgDB:Lcom/lzx/iteam/provider/MessageDB;
    invoke-static {v2}, Lcom/lzx/iteam/service/NetServiceManager;->access$2(Lcom/lzx/iteam/service/NetServiceManager;)Lcom/lzx/iteam/provider/MessageDB;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lzx/iteam/provider/MessageDB;->addChatMessage(Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V

    goto :goto_0

    .line 119
    :pswitch_1
    new-instance v1, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    .end local v1    # "chatMsg":Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    const/16 v2, 0x65

    const-string v3, ""

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/service/NetServiceManager$LooperThread$1;->this$1:Lcom/lzx/iteam/service/NetServiceManager$LooperThread;

    # getter for: Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->this$0:Lcom/lzx/iteam/service/NetServiceManager;
    invoke-static {v4}, Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->access$0(Lcom/lzx/iteam/service/NetServiceManager$LooperThread;)Lcom/lzx/iteam/service/NetServiceManager;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/service/NetServiceManager;->sendTime:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lzx/iteam/service/NetServiceManager$LooperThread$1;->this$1:Lcom/lzx/iteam/service/NetServiceManager$LooperThread;

    # getter for: Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->this$0:Lcom/lzx/iteam/service/NetServiceManager;
    invoke-static {v5}, Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->access$0(Lcom/lzx/iteam/service/NetServiceManager$LooperThread;)Lcom/lzx/iteam/service/NetServiceManager;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/service/NetServiceManager;->msgId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lzx/iteam/service/NetServiceManager$LooperThread$1;->this$1:Lcom/lzx/iteam/service/NetServiceManager$LooperThread;

    # getter for: Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->this$0:Lcom/lzx/iteam/service/NetServiceManager;
    invoke-static {v6}, Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->access$0(Lcom/lzx/iteam/service/NetServiceManager$LooperThread;)Lcom/lzx/iteam/service/NetServiceManager;

    move-result-object v6

    iget-object v6, v6, Lcom/lzx/iteam/service/NetServiceManager;->senderId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/service/NetServiceManager$LooperThread$1;->this$1:Lcom/lzx/iteam/service/NetServiceManager$LooperThread;

    # getter for: Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->this$0:Lcom/lzx/iteam/service/NetServiceManager;
    invoke-static {v7}, Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->access$0(Lcom/lzx/iteam/service/NetServiceManager$LooperThread;)Lcom/lzx/iteam/service/NetServiceManager;

    move-result-object v7

    iget-object v7, v7, Lcom/lzx/iteam/service/NetServiceManager;->senderName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/service/NetServiceManager$LooperThread$1;->this$1:Lcom/lzx/iteam/service/NetServiceManager$LooperThread;

    # getter for: Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->this$0:Lcom/lzx/iteam/service/NetServiceManager;
    invoke-static {v8}, Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->access$0(Lcom/lzx/iteam/service/NetServiceManager$LooperThread;)Lcom/lzx/iteam/service/NetServiceManager;

    move-result-object v8

    iget-object v8, v8, Lcom/lzx/iteam/service/NetServiceManager;->senderAvatar:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lzx/iteam/service/NetServiceManager$LooperThread$1;->this$1:Lcom/lzx/iteam/service/NetServiceManager$LooperThread;

    # getter for: Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->this$0:Lcom/lzx/iteam/service/NetServiceManager;
    invoke-static {v9}, Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->access$0(Lcom/lzx/iteam/service/NetServiceManager$LooperThread;)Lcom/lzx/iteam/service/NetServiceManager;

    move-result-object v9

    iget-object v9, v9, Lcom/lzx/iteam/service/NetServiceManager;->chgrpId:Ljava/lang/String;

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lzx/iteam/service/NetServiceManager$LooperThread$1;->this$1:Lcom/lzx/iteam/service/NetServiceManager$LooperThread;

    # getter for: Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->this$0:Lcom/lzx/iteam/service/NetServiceManager;
    invoke-static {v11}, Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->access$0(Lcom/lzx/iteam/service/NetServiceManager$LooperThread;)Lcom/lzx/iteam/service/NetServiceManager;

    move-result-object v11

    iget-object v11, v11, Lcom/lzx/iteam/service/NetServiceManager;->msgBody:Ljava/lang/String;

    const-string v12, ""

    const-string v13, ""

    const-string v14, ""

    const-string v15, ""

    const/16 v16, 0x1

    invoke-direct/range {v1 .. v16}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 120
    .restart local v1    # "chatMsg":Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    goto/16 :goto_1

    .line 122
    :pswitch_2
    new-instance v1, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    .end local v1    # "chatMsg":Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    const/16 v2, 0x67

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/service/NetServiceManager$LooperThread$1;->this$1:Lcom/lzx/iteam/service/NetServiceManager$LooperThread;

    # getter for: Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->this$0:Lcom/lzx/iteam/service/NetServiceManager;
    invoke-static {v3}, Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->access$0(Lcom/lzx/iteam/service/NetServiceManager$LooperThread;)Lcom/lzx/iteam/service/NetServiceManager;

    move-result-object v3

    iget-object v3, v3, Lcom/lzx/iteam/service/NetServiceManager;->msgBody:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/service/NetServiceManager$LooperThread$1;->this$1:Lcom/lzx/iteam/service/NetServiceManager$LooperThread;

    # getter for: Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->this$0:Lcom/lzx/iteam/service/NetServiceManager;
    invoke-static {v4}, Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->access$0(Lcom/lzx/iteam/service/NetServiceManager$LooperThread;)Lcom/lzx/iteam/service/NetServiceManager;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/service/NetServiceManager;->sendTime:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lzx/iteam/service/NetServiceManager$LooperThread$1;->this$1:Lcom/lzx/iteam/service/NetServiceManager$LooperThread;

    # getter for: Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->this$0:Lcom/lzx/iteam/service/NetServiceManager;
    invoke-static {v5}, Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->access$0(Lcom/lzx/iteam/service/NetServiceManager$LooperThread;)Lcom/lzx/iteam/service/NetServiceManager;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/service/NetServiceManager;->msgId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lzx/iteam/service/NetServiceManager$LooperThread$1;->this$1:Lcom/lzx/iteam/service/NetServiceManager$LooperThread;

    # getter for: Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->this$0:Lcom/lzx/iteam/service/NetServiceManager;
    invoke-static {v6}, Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->access$0(Lcom/lzx/iteam/service/NetServiceManager$LooperThread;)Lcom/lzx/iteam/service/NetServiceManager;

    move-result-object v6

    iget-object v6, v6, Lcom/lzx/iteam/service/NetServiceManager;->senderId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/service/NetServiceManager$LooperThread$1;->this$1:Lcom/lzx/iteam/service/NetServiceManager$LooperThread;

    # getter for: Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->this$0:Lcom/lzx/iteam/service/NetServiceManager;
    invoke-static {v7}, Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->access$0(Lcom/lzx/iteam/service/NetServiceManager$LooperThread;)Lcom/lzx/iteam/service/NetServiceManager;

    move-result-object v7

    iget-object v7, v7, Lcom/lzx/iteam/service/NetServiceManager;->senderName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/service/NetServiceManager$LooperThread$1;->this$1:Lcom/lzx/iteam/service/NetServiceManager$LooperThread;

    # getter for: Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->this$0:Lcom/lzx/iteam/service/NetServiceManager;
    invoke-static {v8}, Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->access$0(Lcom/lzx/iteam/service/NetServiceManager$LooperThread;)Lcom/lzx/iteam/service/NetServiceManager;

    move-result-object v8

    iget-object v8, v8, Lcom/lzx/iteam/service/NetServiceManager;->senderAvatar:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lzx/iteam/service/NetServiceManager$LooperThread$1;->this$1:Lcom/lzx/iteam/service/NetServiceManager$LooperThread;

    # getter for: Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->this$0:Lcom/lzx/iteam/service/NetServiceManager;
    invoke-static {v9}, Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->access$0(Lcom/lzx/iteam/service/NetServiceManager$LooperThread;)Lcom/lzx/iteam/service/NetServiceManager;

    move-result-object v9

    iget-object v9, v9, Lcom/lzx/iteam/service/NetServiceManager;->chgrpId:Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, ""

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lzx/iteam/service/NetServiceManager$LooperThread$1;->this$1:Lcom/lzx/iteam/service/NetServiceManager$LooperThread;

    # getter for: Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->this$0:Lcom/lzx/iteam/service/NetServiceManager;
    invoke-static {v12}, Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->access$0(Lcom/lzx/iteam/service/NetServiceManager$LooperThread;)Lcom/lzx/iteam/service/NetServiceManager;

    move-result-object v12

    iget-object v12, v12, Lcom/lzx/iteam/service/NetServiceManager;->msgBody:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/service/NetServiceManager$LooperThread$1;->this$1:Lcom/lzx/iteam/service/NetServiceManager$LooperThread;

    # getter for: Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->this$0:Lcom/lzx/iteam/service/NetServiceManager;
    invoke-static {v13}, Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->access$0(Lcom/lzx/iteam/service/NetServiceManager$LooperThread;)Lcom/lzx/iteam/service/NetServiceManager;

    move-result-object v13

    iget-object v13, v13, Lcom/lzx/iteam/service/NetServiceManager;->imagePath:Ljava/lang/String;

    const-string v14, ""

    const-string v15, ""

    const/16 v16, 0x1

    invoke-direct/range {v1 .. v16}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 124
    .restart local v1    # "chatMsg":Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    goto/16 :goto_1

    .line 126
    :pswitch_3
    new-instance v1, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    .end local v1    # "chatMsg":Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    const/16 v2, 0x66

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/service/NetServiceManager$LooperThread$1;->this$1:Lcom/lzx/iteam/service/NetServiceManager$LooperThread;

    # getter for: Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->this$0:Lcom/lzx/iteam/service/NetServiceManager;
    invoke-static {v3}, Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->access$0(Lcom/lzx/iteam/service/NetServiceManager$LooperThread;)Lcom/lzx/iteam/service/NetServiceManager;

    move-result-object v3

    iget-object v3, v3, Lcom/lzx/iteam/service/NetServiceManager;->msgBody:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/service/NetServiceManager$LooperThread$1;->this$1:Lcom/lzx/iteam/service/NetServiceManager$LooperThread;

    # getter for: Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->this$0:Lcom/lzx/iteam/service/NetServiceManager;
    invoke-static {v4}, Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->access$0(Lcom/lzx/iteam/service/NetServiceManager$LooperThread;)Lcom/lzx/iteam/service/NetServiceManager;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/service/NetServiceManager;->sendTime:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lzx/iteam/service/NetServiceManager$LooperThread$1;->this$1:Lcom/lzx/iteam/service/NetServiceManager$LooperThread;

    # getter for: Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->this$0:Lcom/lzx/iteam/service/NetServiceManager;
    invoke-static {v5}, Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->access$0(Lcom/lzx/iteam/service/NetServiceManager$LooperThread;)Lcom/lzx/iteam/service/NetServiceManager;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/service/NetServiceManager;->msgId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lzx/iteam/service/NetServiceManager$LooperThread$1;->this$1:Lcom/lzx/iteam/service/NetServiceManager$LooperThread;

    # getter for: Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->this$0:Lcom/lzx/iteam/service/NetServiceManager;
    invoke-static {v6}, Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->access$0(Lcom/lzx/iteam/service/NetServiceManager$LooperThread;)Lcom/lzx/iteam/service/NetServiceManager;

    move-result-object v6

    iget-object v6, v6, Lcom/lzx/iteam/service/NetServiceManager;->senderId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/service/NetServiceManager$LooperThread$1;->this$1:Lcom/lzx/iteam/service/NetServiceManager$LooperThread;

    # getter for: Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->this$0:Lcom/lzx/iteam/service/NetServiceManager;
    invoke-static {v7}, Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->access$0(Lcom/lzx/iteam/service/NetServiceManager$LooperThread;)Lcom/lzx/iteam/service/NetServiceManager;

    move-result-object v7

    iget-object v7, v7, Lcom/lzx/iteam/service/NetServiceManager;->senderName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/service/NetServiceManager$LooperThread$1;->this$1:Lcom/lzx/iteam/service/NetServiceManager$LooperThread;

    # getter for: Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->this$0:Lcom/lzx/iteam/service/NetServiceManager;
    invoke-static {v8}, Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->access$0(Lcom/lzx/iteam/service/NetServiceManager$LooperThread;)Lcom/lzx/iteam/service/NetServiceManager;

    move-result-object v8

    iget-object v8, v8, Lcom/lzx/iteam/service/NetServiceManager;->senderAvatar:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lzx/iteam/service/NetServiceManager$LooperThread$1;->this$1:Lcom/lzx/iteam/service/NetServiceManager$LooperThread;

    # getter for: Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->this$0:Lcom/lzx/iteam/service/NetServiceManager;
    invoke-static {v9}, Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->access$0(Lcom/lzx/iteam/service/NetServiceManager$LooperThread;)Lcom/lzx/iteam/service/NetServiceManager;

    move-result-object v9

    iget-object v9, v9, Lcom/lzx/iteam/service/NetServiceManager;->chgrpId:Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, ""

    const-string v12, ""

    const-string v13, ""

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/service/NetServiceManager$LooperThread$1;->this$1:Lcom/lzx/iteam/service/NetServiceManager$LooperThread;

    # getter for: Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->this$0:Lcom/lzx/iteam/service/NetServiceManager;
    invoke-static {v14}, Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->access$0(Lcom/lzx/iteam/service/NetServiceManager$LooperThread;)Lcom/lzx/iteam/service/NetServiceManager;

    move-result-object v14

    iget-object v14, v14, Lcom/lzx/iteam/service/NetServiceManager;->msgBody:Ljava/lang/String;

    const-string v15, ""

    const/16 v16, 0x1

    invoke-direct/range {v1 .. v16}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .restart local v1    # "chatMsg":Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    goto/16 :goto_1

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch

    .line 117
    :pswitch_data_1
    .packed-switch 0x65
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
