.class Lcom/lzx/iteam/BatchSendSmsService$SmsSendSuccessReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatchSendSmsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/BatchSendSmsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmsSendSuccessReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/BatchSendSmsService;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/BatchSendSmsService;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/lzx/iteam/BatchSendSmsService$SmsSendSuccessReceiver;->this$0:Lcom/lzx/iteam/BatchSendSmsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v10, 0x0

    .line 90
    sget-boolean v0, Lcom/lzx/iteam/BatchSendSmsService;->running:Z

    if-nez v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService$SmsSendSuccessReceiver;->this$0:Lcom/lzx/iteam/BatchSendSmsService;

    invoke-virtual {v0}, Lcom/lzx/iteam/BatchSendSmsService;->createCancelNotification()Landroid/app/Notification;

    move-result-object v8

    .line 92
    .local v8, "notify":Landroid/app/Notification;
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService$SmsSendSuccessReceiver;->this$0:Lcom/lzx/iteam/BatchSendSmsService;

    # getter for: Lcom/lzx/iteam/BatchSendSmsService;->notificationMgr:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/lzx/iteam/BatchSendSmsService;->access$0(Lcom/lzx/iteam/BatchSendSmsService;)Landroid/app/NotificationManager;

    move-result-object v0

    sget v1, Lcom/lzx/iteam/BatchSendSmsService;->SEND_SMS_ID:I

    invoke-virtual {v0, v1, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 93
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService$SmsSendSuccessReceiver;->this$0:Lcom/lzx/iteam/BatchSendSmsService;

    # getter for: Lcom/lzx/iteam/BatchSendSmsService;->blockIntents:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/BatchSendSmsService;->access$1(Lcom/lzx/iteam/BatchSendSmsService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService$SmsSendSuccessReceiver;->this$0:Lcom/lzx/iteam/BatchSendSmsService;

    invoke-virtual {v0}, Lcom/lzx/iteam/BatchSendSmsService;->stopSelf()V

    .line 150
    .end local v8    # "notify":Landroid/app/Notification;
    :cond_0
    :goto_0
    return-void

    .line 96
    .restart local v8    # "notify":Landroid/app/Notification;
    :cond_1
    sget v0, Lcom/lzx/iteam/BatchSendSmsService;->SEND_SMS_ID:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/lzx/iteam/BatchSendSmsService;->SEND_SMS_ID:I

    .line 97
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService$SmsSendSuccessReceiver;->this$0:Lcom/lzx/iteam/BatchSendSmsService;

    # getter for: Lcom/lzx/iteam/BatchSendSmsService;->blockIntents:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/BatchSendSmsService;->access$1(Lcom/lzx/iteam/BatchSendSmsService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 98
    .local v7, "intent2":Landroid/content/Intent;
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService$SmsSendSuccessReceiver;->this$0:Lcom/lzx/iteam/BatchSendSmsService;

    invoke-virtual {v0, v7, v10, v10}, Lcom/lzx/iteam/BatchSendSmsService;->onStartCommand(Landroid/content/Intent;II)I

    goto :goto_0

    .line 103
    .end local v7    # "intent2":Landroid/content/Intent;
    .end local v8    # "notify":Landroid/app/Notification;
    :cond_2
    invoke-virtual {p0}, Lcom/lzx/iteam/BatchSendSmsService$SmsSendSuccessReceiver;->getResultCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 123
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService$SmsSendSuccessReceiver;->this$0:Lcom/lzx/iteam/BatchSendSmsService;

    # getter for: Lcom/lzx/iteam/BatchSendSmsService;->currentMsg:I
    invoke-static {v0}, Lcom/lzx/iteam/BatchSendSmsService;->access$6(Lcom/lzx/iteam/BatchSendSmsService;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 124
    invoke-static {v0, v1}, Lcom/lzx/iteam/BatchSendSmsService;->access$8(Lcom/lzx/iteam/BatchSendSmsService;I)V

    .line 125
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService$SmsSendSuccessReceiver;->this$0:Lcom/lzx/iteam/BatchSendSmsService;

    # getter for: Lcom/lzx/iteam/BatchSendSmsService;->currentMsg:I
    invoke-static {v0}, Lcom/lzx/iteam/BatchSendSmsService;->access$6(Lcom/lzx/iteam/BatchSendSmsService;)I

    move-result v0

    iget-object v1, p0, Lcom/lzx/iteam/BatchSendSmsService$SmsSendSuccessReceiver;->this$0:Lcom/lzx/iteam/BatchSendSmsService;

    # getter for: Lcom/lzx/iteam/BatchSendSmsService;->msgs:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lzx/iteam/BatchSendSmsService;->access$5(Lcom/lzx/iteam/BatchSendSmsService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService$SmsSendSuccessReceiver;->this$0:Lcom/lzx/iteam/BatchSendSmsService;

    invoke-static {v0, v10}, Lcom/lzx/iteam/BatchSendSmsService;->access$8(Lcom/lzx/iteam/BatchSendSmsService;I)V

    .line 127
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService$SmsSendSuccessReceiver;->this$0:Lcom/lzx/iteam/BatchSendSmsService;

    invoke-virtual {v0}, Lcom/lzx/iteam/BatchSendSmsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService$SmsSendSuccessReceiver;->this$0:Lcom/lzx/iteam/BatchSendSmsService;

    # getter for: Lcom/lzx/iteam/BatchSendSmsService;->persons:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/BatchSendSmsService;->access$3(Lcom/lzx/iteam/BatchSendSmsService;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/lzx/iteam/BatchSendSmsService$SmsSendSuccessReceiver;->this$0:Lcom/lzx/iteam/BatchSendSmsService;

    # getter for: Lcom/lzx/iteam/BatchSendSmsService;->currentPerson:I
    invoke-static {v3}, Lcom/lzx/iteam/BatchSendSmsService;->access$4(Lcom/lzx/iteam/BatchSendSmsService;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/widget/PersonVO;

    iget-wide v4, v0, Lcom/lzx/iteam/widget/PersonVO;->id:J

    invoke-static {v1, v4, v5}, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->getContactNameByContactId(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v6

    .line 128
    .local v6, "firstName":Ljava/lang/String;
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService$SmsSendSuccessReceiver;->this$0:Lcom/lzx/iteam/BatchSendSmsService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\u53d1\u9001\u5b8c\u6bd5"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/lzx/iteam/BatchSendSmsService$SmsSendSuccessReceiver;->this$0:Lcom/lzx/iteam/BatchSendSmsService;

    # getter for: Lcom/lzx/iteam/BatchSendSmsService;->currentPerson:I
    invoke-static {v3}, Lcom/lzx/iteam/BatchSendSmsService;->access$4(Lcom/lzx/iteam/BatchSendSmsService;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/lzx/iteam/BatchSendSmsService;->createProcessNotification(Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object v8

    .line 129
    .restart local v8    # "notify":Landroid/app/Notification;
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService$SmsSendSuccessReceiver;->this$0:Lcom/lzx/iteam/BatchSendSmsService;

    # getter for: Lcom/lzx/iteam/BatchSendSmsService;->notificationMgr:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/lzx/iteam/BatchSendSmsService;->access$0(Lcom/lzx/iteam/BatchSendSmsService;)Landroid/app/NotificationManager;

    move-result-object v0

    sget v1, Lcom/lzx/iteam/BatchSendSmsService;->SEND_SMS_ID:I

    invoke-virtual {v0, v1, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 130
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService$SmsSendSuccessReceiver;->this$0:Lcom/lzx/iteam/BatchSendSmsService;

    # getter for: Lcom/lzx/iteam/BatchSendSmsService;->currentPerson:I
    invoke-static {v0}, Lcom/lzx/iteam/BatchSendSmsService;->access$4(Lcom/lzx/iteam/BatchSendSmsService;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/lzx/iteam/BatchSendSmsService;->access$9(Lcom/lzx/iteam/BatchSendSmsService;I)V

    .line 131
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService$SmsSendSuccessReceiver;->this$0:Lcom/lzx/iteam/BatchSendSmsService;

    # getter for: Lcom/lzx/iteam/BatchSendSmsService;->currentPerson:I
    invoke-static {v0}, Lcom/lzx/iteam/BatchSendSmsService;->access$4(Lcom/lzx/iteam/BatchSendSmsService;)I

    move-result v0

    iget-object v1, p0, Lcom/lzx/iteam/BatchSendSmsService$SmsSendSuccessReceiver;->this$0:Lcom/lzx/iteam/BatchSendSmsService;

    # getter for: Lcom/lzx/iteam/BatchSendSmsService;->persons:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lzx/iteam/BatchSendSmsService;->access$3(Lcom/lzx/iteam/BatchSendSmsService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 132
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService$SmsSendSuccessReceiver;->this$0:Lcom/lzx/iteam/BatchSendSmsService;

    # getter for: Lcom/lzx/iteam/BatchSendSmsService;->smsManager:Landroid/telephony/SmsManager;
    invoke-static {v0}, Lcom/lzx/iteam/BatchSendSmsService;->access$10(Lcom/lzx/iteam/BatchSendSmsService;)Landroid/telephony/SmsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/BatchSendSmsService$SmsSendSuccessReceiver;->this$0:Lcom/lzx/iteam/BatchSendSmsService;

    # getter for: Lcom/lzx/iteam/BatchSendSmsService;->persons:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lzx/iteam/BatchSendSmsService;->access$3(Lcom/lzx/iteam/BatchSendSmsService;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/lzx/iteam/BatchSendSmsService$SmsSendSuccessReceiver;->this$0:Lcom/lzx/iteam/BatchSendSmsService;

    # getter for: Lcom/lzx/iteam/BatchSendSmsService;->currentPerson:I
    invoke-static {v3}, Lcom/lzx/iteam/BatchSendSmsService;->access$4(Lcom/lzx/iteam/BatchSendSmsService;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/PersonVO;

    iget-object v1, v1, Lcom/lzx/iteam/widget/PersonVO;->number:Ljava/lang/String;

    iget-object v3, p0, Lcom/lzx/iteam/BatchSendSmsService$SmsSendSuccessReceiver;->this$0:Lcom/lzx/iteam/BatchSendSmsService;

    # getter for: Lcom/lzx/iteam/BatchSendSmsService;->msgs:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lzx/iteam/BatchSendSmsService;->access$5(Lcom/lzx/iteam/BatchSendSmsService;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/BatchSendSmsService$SmsSendSuccessReceiver;->this$0:Lcom/lzx/iteam/BatchSendSmsService;

    # getter for: Lcom/lzx/iteam/BatchSendSmsService;->sendIntents:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/lzx/iteam/BatchSendSmsService;->access$11(Lcom/lzx/iteam/BatchSendSmsService;)Ljava/util/ArrayList;

    move-result-object v4

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 105
    .end local v6    # "firstName":Ljava/lang/String;
    .end local v8    # "notify":Landroid/app/Notification;
    :pswitch_1
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService$SmsSendSuccessReceiver;->this$0:Lcom/lzx/iteam/BatchSendSmsService;

    # getter for: Lcom/lzx/iteam/BatchSendSmsService;->successNum:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/lzx/iteam/BatchSendSmsService;->access$2(Lcom/lzx/iteam/BatchSendSmsService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 106
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 107
    .local v9, "values":Landroid/content/ContentValues;
    const-string v1, "address"

    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService$SmsSendSuccessReceiver;->this$0:Lcom/lzx/iteam/BatchSendSmsService;

    # getter for: Lcom/lzx/iteam/BatchSendSmsService;->persons:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/BatchSendSmsService;->access$3(Lcom/lzx/iteam/BatchSendSmsService;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/lzx/iteam/BatchSendSmsService$SmsSendSuccessReceiver;->this$0:Lcom/lzx/iteam/BatchSendSmsService;

    # getter for: Lcom/lzx/iteam/BatchSendSmsService;->currentPerson:I
    invoke-static {v3}, Lcom/lzx/iteam/BatchSendSmsService;->access$4(Lcom/lzx/iteam/BatchSendSmsService;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/widget/PersonVO;

    iget-object v0, v0, Lcom/lzx/iteam/widget/PersonVO;->number:Ljava/lang/String;

    invoke-virtual {v9, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v1, "body"

    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService$SmsSendSuccessReceiver;->this$0:Lcom/lzx/iteam/BatchSendSmsService;

    # getter for: Lcom/lzx/iteam/BatchSendSmsService;->msgs:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/BatchSendSmsService;->access$5(Lcom/lzx/iteam/BatchSendSmsService;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/lzx/iteam/BatchSendSmsService$SmsSendSuccessReceiver;->this$0:Lcom/lzx/iteam/BatchSendSmsService;

    # getter for: Lcom/lzx/iteam/BatchSendSmsService;->currentMsg:I
    invoke-static {v3}, Lcom/lzx/iteam/BatchSendSmsService;->access$6(Lcom/lzx/iteam/BatchSendSmsService;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v9, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v0, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 110
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService$SmsSendSuccessReceiver;->this$0:Lcom/lzx/iteam/BatchSendSmsService;

    invoke-virtual {v0}, Lcom/lzx/iteam/BatchSendSmsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms/sent"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_1

    .line 115
    .end local v9    # "values":Landroid/content/ContentValues;
    :pswitch_2
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService$SmsSendSuccessReceiver;->this$0:Lcom/lzx/iteam/BatchSendSmsService;

    # getter for: Lcom/lzx/iteam/BatchSendSmsService;->failNum:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/lzx/iteam/BatchSendSmsService;->access$7(Lcom/lzx/iteam/BatchSendSmsService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 116
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 117
    .restart local v9    # "values":Landroid/content/ContentValues;
    const-string v1, "address"

    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService$SmsSendSuccessReceiver;->this$0:Lcom/lzx/iteam/BatchSendSmsService;

    # getter for: Lcom/lzx/iteam/BatchSendSmsService;->persons:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/BatchSendSmsService;->access$3(Lcom/lzx/iteam/BatchSendSmsService;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/lzx/iteam/BatchSendSmsService$SmsSendSuccessReceiver;->this$0:Lcom/lzx/iteam/BatchSendSmsService;

    # getter for: Lcom/lzx/iteam/BatchSendSmsService;->currentPerson:I
    invoke-static {v3}, Lcom/lzx/iteam/BatchSendSmsService;->access$4(Lcom/lzx/iteam/BatchSendSmsService;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/widget/PersonVO;

    iget-object v0, v0, Lcom/lzx/iteam/widget/PersonVO;->number:Ljava/lang/String;

    invoke-virtual {v9, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v1, "body"

    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService$SmsSendSuccessReceiver;->this$0:Lcom/lzx/iteam/BatchSendSmsService;

    # getter for: Lcom/lzx/iteam/BatchSendSmsService;->msgs:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/BatchSendSmsService;->access$5(Lcom/lzx/iteam/BatchSendSmsService;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/lzx/iteam/BatchSendSmsService$SmsSendSuccessReceiver;->this$0:Lcom/lzx/iteam/BatchSendSmsService;

    # getter for: Lcom/lzx/iteam/BatchSendSmsService;->currentMsg:I
    invoke-static {v3}, Lcom/lzx/iteam/BatchSendSmsService;->access$6(Lcom/lzx/iteam/BatchSendSmsService;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v9, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v0, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 120
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService$SmsSendSuccessReceiver;->this$0:Lcom/lzx/iteam/BatchSendSmsService;

    invoke-virtual {v0}, Lcom/lzx/iteam/BatchSendSmsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms/failed"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_1

    .line 134
    .end local v9    # "values":Landroid/content/ContentValues;
    .restart local v6    # "firstName":Ljava/lang/String;
    .restart local v8    # "notify":Landroid/app/Notification;
    :cond_3
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService$SmsSendSuccessReceiver;->this$0:Lcom/lzx/iteam/BatchSendSmsService;

    # getter for: Lcom/lzx/iteam/BatchSendSmsService;->blockIntents:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/BatchSendSmsService;->access$1(Lcom/lzx/iteam/BatchSendSmsService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 135
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService$SmsSendSuccessReceiver;->this$0:Lcom/lzx/iteam/BatchSendSmsService;

    invoke-virtual {v0}, Lcom/lzx/iteam/BatchSendSmsService;->createFinishNotification()Landroid/app/Notification;

    move-result-object v8

    .line 136
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService$SmsSendSuccessReceiver;->this$0:Lcom/lzx/iteam/BatchSendSmsService;

    # getter for: Lcom/lzx/iteam/BatchSendSmsService;->notificationMgr:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/lzx/iteam/BatchSendSmsService;->access$0(Lcom/lzx/iteam/BatchSendSmsService;)Landroid/app/NotificationManager;

    move-result-object v0

    sget v1, Lcom/lzx/iteam/BatchSendSmsService;->SEND_SMS_ID:I

    invoke-virtual {v0, v1, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 137
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService$SmsSendSuccessReceiver;->this$0:Lcom/lzx/iteam/BatchSendSmsService;

    invoke-virtual {v0}, Lcom/lzx/iteam/BatchSendSmsService;->stopSelf()V

    .line 138
    sput-boolean v10, Lcom/lzx/iteam/BatchSendSmsService;->running:Z

    goto/16 :goto_0

    .line 140
    :cond_4
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService$SmsSendSuccessReceiver;->this$0:Lcom/lzx/iteam/BatchSendSmsService;

    invoke-virtual {v0}, Lcom/lzx/iteam/BatchSendSmsService;->createFinishNotification()Landroid/app/Notification;

    move-result-object v8

    .line 141
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService$SmsSendSuccessReceiver;->this$0:Lcom/lzx/iteam/BatchSendSmsService;

    # getter for: Lcom/lzx/iteam/BatchSendSmsService;->notificationMgr:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/lzx/iteam/BatchSendSmsService;->access$0(Lcom/lzx/iteam/BatchSendSmsService;)Landroid/app/NotificationManager;

    move-result-object v0

    sget v1, Lcom/lzx/iteam/BatchSendSmsService;->SEND_SMS_ID:I

    invoke-virtual {v0, v1, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 142
    sget v0, Lcom/lzx/iteam/BatchSendSmsService;->SEND_SMS_ID:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/lzx/iteam/BatchSendSmsService;->SEND_SMS_ID:I

    .line 143
    sput-boolean v10, Lcom/lzx/iteam/BatchSendSmsService;->running:Z

    .line 144
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService$SmsSendSuccessReceiver;->this$0:Lcom/lzx/iteam/BatchSendSmsService;

    # getter for: Lcom/lzx/iteam/BatchSendSmsService;->blockIntents:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/BatchSendSmsService;->access$1(Lcom/lzx/iteam/BatchSendSmsService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 145
    .restart local v7    # "intent2":Landroid/content/Intent;
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsService$SmsSendSuccessReceiver;->this$0:Lcom/lzx/iteam/BatchSendSmsService;

    invoke-virtual {v0, v7, v10, v10}, Lcom/lzx/iteam/BatchSendSmsService;->onStartCommand(Landroid/content/Intent;II)I

    goto/16 :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
