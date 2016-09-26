.class Lcom/lzx/iteam/service/ChatService$1;
.super Landroid/os/Handler;
.source "ChatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/service/ChatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/service/ChatService;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/service/ChatService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/service/ChatService$1;->this$0:Lcom/lzx/iteam/service/ChatService;

    .line 69
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 72
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 157
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 74
    :pswitch_1
    iget v6, p1, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 116
    :pswitch_2
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-nez v6, :cond_0

    .line 117
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;

    .line 118
    .local v1, "eventReplyData":Lcom/lzx/iteam/bean/aidl/EventReplyNewData;
    iget-object v6, p0, Lcom/lzx/iteam/service/ChatService$1;->this$0:Lcom/lzx/iteam/service/ChatService;

    # getter for: Lcom/lzx/iteam/service/ChatService;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;
    invoke-static {v6}, Lcom/lzx/iteam/service/ChatService;->access$0(Lcom/lzx/iteam/service/ChatService;)Lcom/lzx/iteam/provider/CloudDBOperation;

    move-result-object v6

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->getEventId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Lcom/lzx/iteam/provider/CloudDBOperation;->updateEventReply(Lcom/lzx/iteam/bean/aidl/EventReplyNewData;Ljava/lang/String;)V

    .line 119
    const-string v6, "ChatService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "eventReply--"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->getContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance v3, Lcom/lzx/iteam/provider/EventsMsgDB;

    iget-object v6, p0, Lcom/lzx/iteam/service/ChatService$1;->this$0:Lcom/lzx/iteam/service/ChatService;

    invoke-direct {v3, v6}, Lcom/lzx/iteam/provider/EventsMsgDB;-><init>(Landroid/content/Context;)V

    .line 121
    .local v3, "mDb":Lcom/lzx/iteam/provider/EventsMsgDB;
    iget-object v6, p0, Lcom/lzx/iteam/service/ChatService$1;->this$0:Lcom/lzx/iteam/service/ChatService;

    # getter for: Lcom/lzx/iteam/service/ChatService;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;
    invoke-static {v6}, Lcom/lzx/iteam/service/ChatService;->access$0(Lcom/lzx/iteam/service/ChatService;)Lcom/lzx/iteam/provider/CloudDBOperation;

    move-result-object v6

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->getEventId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lzx/iteam/provider/CloudDBOperation;->isHaveEventById(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 122
    invoke-virtual {v3, v1}, Lcom/lzx/iteam/provider/EventsMsgDB;->insertEventReply(Lcom/lzx/iteam/bean/aidl/EventReplyNewData;)V

    .line 124
    :cond_1
    iget-object v6, p0, Lcom/lzx/iteam/service/ChatService$1;->this$0:Lcom/lzx/iteam/service/ChatService;

    # getter for: Lcom/lzx/iteam/service/ChatService;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;
    invoke-static {v6}, Lcom/lzx/iteam/service/ChatService;->access$0(Lcom/lzx/iteam/service/ChatService;)Lcom/lzx/iteam/provider/CloudDBOperation;

    move-result-object v6

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->getEventId()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->getEventId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/lzx/iteam/provider/EventsMsgDB;->getUnReadCountOfOneEvent(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/lzx/iteam/provider/CloudDBOperation;->updateEventUnReadCount(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v6, p0, Lcom/lzx/iteam/service/ChatService$1;->this$0:Lcom/lzx/iteam/service/ChatService;

    # getter for: Lcom/lzx/iteam/service/ChatService;->mMsgListeners:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/lzx/iteam/service/ChatService;->access$1(Lcom/lzx/iteam/service/ChatService;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/lzx/iteam/service/ChatService$1;->this$0:Lcom/lzx/iteam/service/ChatService;

    # getter for: Lcom/lzx/iteam/service/ChatService;->mMsgListeners:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/lzx/iteam/service/ChatService;->access$1(Lcom/lzx/iteam/service/ChatService;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 127
    iget-object v6, p0, Lcom/lzx/iteam/service/ChatService$1;->this$0:Lcom/lzx/iteam/service/ChatService;

    # getter for: Lcom/lzx/iteam/service/ChatService;->mMsgListeners:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/lzx/iteam/service/ChatService;->access$1(Lcom/lzx/iteam/service/ChatService;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 135
    :cond_2
    iget-object v6, p0, Lcom/lzx/iteam/service/ChatService$1;->this$0:Lcom/lzx/iteam/service/ChatService;

    invoke-static {v6}, Lcom/lzx/iteam/util/Constants;->isBackground(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 146
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/lzx/iteam/service/ChatService$1;->this$0:Lcom/lzx/iteam/service/ChatService;

    const-class v7, Lcom/lzx/iteam/MainActivity;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 147
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v6, 0x14000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 148
    iget-object v6, p0, Lcom/lzx/iteam/service/ChatService$1;->this$0:Lcom/lzx/iteam/service/ChatService;

    const/4 v7, 0x1

    .line 149
    const/high16 v8, 0x40000000    # 2.0f

    .line 148
    invoke-static {v6, v7, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 150
    .local v5, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v6, p0, Lcom/lzx/iteam/service/ChatService$1;->this$0:Lcom/lzx/iteam/service/ChatService;

    # getter for: Lcom/lzx/iteam/service/ChatService;->messageNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/lzx/iteam/service/ChatService;->access$2(Lcom/lzx/iteam/service/ChatService;)Landroid/app/Notification;

    move-result-object v6

    iget-object v7, p0, Lcom/lzx/iteam/service/ChatService$1;->this$0:Lcom/lzx/iteam/service/ChatService;

    const-string v8, "\u56e2\u961f"

    const-string v9, "\u60a8\u7684\u4e8b\u4ef6\u6709\u65b0\u56de\u590d\uff0c\u8bf7\u5c3d\u5feb\u67e5\u770b"

    invoke-virtual {v6, v7, v8, v9, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 151
    iget-object v6, p0, Lcom/lzx/iteam/service/ChatService$1;->this$0:Lcom/lzx/iteam/service/ChatService;

    # getter for: Lcom/lzx/iteam/service/ChatService;->messageNotificatioManager:Landroid/app/NotificationManager;
    invoke-static {v6}, Lcom/lzx/iteam/service/ChatService;->access$3(Lcom/lzx/iteam/service/ChatService;)Landroid/app/NotificationManager;

    move-result-object v6

    iget-object v7, p0, Lcom/lzx/iteam/service/ChatService$1;->this$0:Lcom/lzx/iteam/service/ChatService;

    # getter for: Lcom/lzx/iteam/service/ChatService;->eventNotificationID:I
    invoke-static {v7}, Lcom/lzx/iteam/service/ChatService;->access$4(Lcom/lzx/iteam/service/ChatService;)I

    move-result v7

    iget-object v8, p0, Lcom/lzx/iteam/service/ChatService$1;->this$0:Lcom/lzx/iteam/service/ChatService;

    # getter for: Lcom/lzx/iteam/service/ChatService;->messageNotification:Landroid/app/Notification;
    invoke-static {v8}, Lcom/lzx/iteam/service/ChatService;->access$2(Lcom/lzx/iteam/service/ChatService;)Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 152
    iget-object v6, p0, Lcom/lzx/iteam/service/ChatService$1;->this$0:Lcom/lzx/iteam/service/ChatService;

    # getter for: Lcom/lzx/iteam/service/ChatService;->eventNotificationID:I
    invoke-static {v6}, Lcom/lzx/iteam/service/ChatService;->access$4(Lcom/lzx/iteam/service/ChatService;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v6, v7}, Lcom/lzx/iteam/service/ChatService;->access$5(Lcom/lzx/iteam/service/ChatService;I)V

    goto/16 :goto_0

    .line 127
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lzx/iteam/service/aidl/NewMessageInterface;

    .line 129
    .local v4, "newMessage":Lcom/lzx/iteam/service/aidl/NewMessageInterface;
    :try_start_0
    invoke-interface {v4, v1}, Lcom/lzx/iteam/service/aidl/NewMessageInterface;->onNewEventReply(Lcom/lzx/iteam/bean/aidl/EventReplyNewData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0xfa1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
