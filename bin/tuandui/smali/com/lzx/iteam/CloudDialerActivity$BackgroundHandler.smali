.class public Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;
.super Landroid/os/Handler;
.source "CloudDialerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/CloudDialerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BackgroundHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/CloudDialerActivity;


# direct methods
.method public constructor <init>(Lcom/lzx/iteam/CloudDialerActivity;)V
    .locals 0

    .prologue
    .line 2460
    iput-object p1, p0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;)Lcom/lzx/iteam/CloudDialerActivity;
    .locals 1

    .prologue
    .line 2460
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 45
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2463
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2464
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v30, v0

    .line 2465
    .local v30, "msgId":I
    packed-switch v30, :pswitch_data_0

    .line 3035
    :cond_0
    :goto_0
    return-void

    .line 2467
    :pswitch_0
    const/16 v36, 0x0

    .line 2468
    .local v36, "size":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    move-object/from16 v41, v0

    if-eqz v41, :cond_1

    sget v41, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    const/high16 v42, 0x200000

    and-int v41, v41, v42

    if-nez v41, :cond_2

    :cond_1
    sget v41, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    const/high16 v42, 0x400000

    and-int v41, v41, v42

    if-nez v41, :cond_2

    sget v41, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    const/high16 v42, 0x800000

    and-int v41, v41, v42

    if-nez v41, :cond_2

    sget v41, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    const/high16 v42, 0x1000000

    and-int v41, v41, v42

    if-nez v41, :cond_2

    sget v41, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    const/high16 v42, 0x2000000

    and-int v41, v41, v42

    if-nez v41, :cond_2

    sget v41, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    const/high16 v42, 0x8000000

    and-int v41, v41, v42

    if-nez v41, :cond_2

    sget v41, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    const/high16 v42, 0x10000000

    and-int v41, v41, v42

    if-nez v41, :cond_2

    sget v41, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    const/high16 v42, 0x20000000

    and-int v41, v41, v42

    if-eqz v41, :cond_4

    .line 2469
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->getSelectedContacts()Ljava/util/ArrayList;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v36

    .line 2470
    const-string v6, "\u5df2\u9009"

    .line 2484
    .local v6, "btnText":Ljava/lang/String;
    if-eqz v36, :cond_3

    .line 2485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mShowModleChiceView:Lcom/lzx/iteam/widget/TwiceTextChoiceView;
    invoke-static/range {v41 .. v41}, Lcom/lzx/iteam/CloudDialerActivity;->access$2(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/widget/TwiceTextChoiceView;

    move-result-object v41

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v43, "("

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, ")"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Lcom/lzx/iteam/widget/TwiceTextChoiceView;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2487
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mShowModleChiceView:Lcom/lzx/iteam/widget/TwiceTextChoiceView;
    invoke-static/range {v41 .. v41}, Lcom/lzx/iteam/CloudDialerActivity;->access$2(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/widget/TwiceTextChoiceView;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/widget/TwiceTextChoiceView;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2493
    .end local v6    # "btnText":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;
    invoke-static/range {v41 .. v41}, Lcom/lzx/iteam/CloudDialerActivity;->access$23(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->getSelectedContactIds()Ljava/util/ArrayList;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v36

    .line 2496
    const-string v6, "\u5df2\u9009"

    .line 2509
    .restart local v6    # "btnText":Ljava/lang/String;
    if-eqz v36, :cond_5

    .line 2510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mShowModleChiceView:Lcom/lzx/iteam/widget/TwiceTextChoiceView;
    invoke-static/range {v41 .. v41}, Lcom/lzx/iteam/CloudDialerActivity;->access$2(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/widget/TwiceTextChoiceView;

    move-result-object v41

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v43, "("

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, ")"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Lcom/lzx/iteam/widget/TwiceTextChoiceView;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2512
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mShowModleChiceView:Lcom/lzx/iteam/widget/TwiceTextChoiceView;
    invoke-static/range {v41 .. v41}, Lcom/lzx/iteam/CloudDialerActivity;->access$2(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/widget/TwiceTextChoiceView;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/widget/TwiceTextChoiceView;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2518
    .end local v6    # "btnText":Ljava/lang/String;
    .end local v36    # "size":I
    :pswitch_1
    sget v41, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    const/high16 v42, 0x200000

    and-int v41, v41, v42

    if-eqz v41, :cond_a

    .line 2519
    new-instance v24, Lorg/json/JSONArray;

    invoke-direct/range {v24 .. v24}, Lorg/json/JSONArray;-><init>()V

    .line 2520
    .local v24, "jsonArray":Lorg/json/JSONArray;
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->getSelectedContacts()Ljava/util/ArrayList;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v16

    move/from16 v1, v41

    if-lt v0, v1, :cond_7

    .line 2533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->getSelectedContacts()Ljava/util/ArrayList;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    if-nez v41, :cond_8

    .line 2534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mContext:Landroid/content/Context;
    invoke-static/range {v41 .. v41}, Lcom/lzx/iteam/CloudDialerActivity;->access$0(Lcom/lzx/iteam/CloudDialerActivity;)Landroid/content/Context;

    move-result-object v41

    const-string v42, "\u8bf7\u81f3\u5c11\u9009\u62e9\u4e00\u4e2a\u8054\u7cfb\u4eba\uff01"

    const/16 v43, 0x0

    invoke-static/range {v41 .. v43}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/Toast;->show()V

    .line 3008
    .end local v16    # "i":I
    .end local v24    # "jsonArray":Lorg/json/JSONArray;
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/lzx/iteam/CloudDialerActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    check-cast v4, Lcom/lzx/iteam/DialerApp;

    .line 3009
    .local v4, "app":Lcom/lzx/iteam/DialerApp;
    iget-boolean v0, v4, Lcom/lzx/iteam/DialerApp;->mYaoyiyaoShare:Z

    move/from16 v41, v0

    if-eqz v41, :cond_0

    .line 3010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    const/16 v42, 0x1

    const/16 v43, 0x1

    invoke-virtual/range {v41 .. v43}, Lcom/lzx/iteam/CloudDialerActivity;->quitBatchOperation(ZZ)V

    .line 3011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/lzx/iteam/CloudDialerActivity;->removeFullScreen()V

    .line 3012
    const/16 v41, 0x0

    move/from16 v0, v41

    iput-boolean v0, v4, Lcom/lzx/iteam/DialerApp;->mYaoyiyaoShare:Z

    .line 3013
    const-wide/16 v42, -0x1

    move-wide/from16 v0, v42

    iput-wide v0, v4, Lcom/lzx/iteam/DialerApp;->mYaoyiyaoShareContactId:J

    goto/16 :goto_0

    .line 2521
    .end local v4    # "app":Lcom/lzx/iteam/DialerApp;
    .restart local v16    # "i":I
    .restart local v24    # "jsonArray":Lorg/json/JSONArray;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->getSelectedContacts()Ljava/util/ArrayList;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lzx/iteam/bean/ChatContact;

    .line 2523
    .local v7, "chatContact":Lcom/lzx/iteam/bean/ChatContact;
    :try_start_0
    new-instance v27, Lorg/json/JSONObject;

    invoke-direct/range {v27 .. v27}, Lorg/json/JSONObject;-><init>()V

    .line 2524
    .local v27, "jsonObject":Lorg/json/JSONObject;
    const-string v41, "user_name"

    invoke-virtual {v7}, Lcom/lzx/iteam/bean/ChatContact;->getUserName()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v27

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2525
    const-string v41, "user_image"

    invoke-virtual {v7}, Lcom/lzx/iteam/bean/ChatContact;->getUserImg()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v27

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2526
    const-string v41, "contact_id"

    invoke-virtual {v7}, Lcom/lzx/iteam/bean/ChatContact;->getContactId()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v27

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2527
    const-string v41, "user_id"

    invoke-virtual {v7}, Lcom/lzx/iteam/bean/ChatContact;->getUserId()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v27

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2528
    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2520
    .end local v27    # "jsonObject":Lorg/json/JSONObject;
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 2529
    :catch_0
    move-exception v12

    .line 2530
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 2536
    .end local v7    # "chatContact":Lcom/lzx/iteam/bean/ChatContact;
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->chatGroupId:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_9

    .line 2537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v24

    # invokes: Lcom/lzx/iteam/CloudDialerActivity;->addChatGroupContactList(Lorg/json/JSONArray;)V
    invoke-static {v0, v1}, Lcom/lzx/iteam/CloudDialerActivity;->access$24(Lcom/lzx/iteam/CloudDialerActivity;Lorg/json/JSONArray;)V

    .line 2538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONArray;->length()I

    move-result v43

    add-int/lit8 v43, v43, 0x1

    invoke-static/range {v43 .. v43}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/lzx/iteam/CloudDialerActivity;->access$25(Lcom/lzx/iteam/CloudDialerActivity;Ljava/lang/String;)V

    .line 2542
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    const/16 v42, 0x1

    const/16 v43, 0x1

    invoke-virtual/range {v41 .. v43}, Lcom/lzx/iteam/CloudDialerActivity;->quitBatchOperation(ZZ)V

    goto/16 :goto_2

    .line 2540
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v24

    # invokes: Lcom/lzx/iteam/CloudDialerActivity;->addMemberToChatGroup(Lorg/json/JSONArray;)V
    invoke-static {v0, v1}, Lcom/lzx/iteam/CloudDialerActivity;->access$26(Lcom/lzx/iteam/CloudDialerActivity;Lorg/json/JSONArray;)V

    goto :goto_4

    .line 2546
    .end local v16    # "i":I
    .end local v24    # "jsonArray":Lorg/json/JSONArray;
    :cond_a
    sget v41, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    const/high16 v42, 0x2000000

    and-int v41, v41, v42

    if-eqz v41, :cond_14

    .line 2547
    new-instance v24, Lorg/json/JSONArray;

    invoke-direct/range {v24 .. v24}, Lorg/json/JSONArray;-><init>()V

    .line 2548
    .restart local v24    # "jsonArray":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->eventReceiver:Ljava/lang/String;

    move-object/from16 v41, v0

    if-eqz v41, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->eventReceiver:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->length()I

    move-result v41

    if-lez v41, :cond_b

    .line 2550
    :try_start_1
    new-instance v26, Lorg/json/JSONArray;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->eventReceiver:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 2551
    .local v26, "jsonArray1":Lorg/json/JSONArray;
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_5
    invoke-virtual/range {v26 .. v26}, Lorg/json/JSONArray;->length()I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v41

    move/from16 v0, v16

    move/from16 v1, v41

    if-lt v0, v1, :cond_c

    .line 2559
    .end local v16    # "i":I
    .end local v26    # "jsonArray1":Lorg/json/JSONArray;
    :cond_b
    :goto_6
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->getSelectedContacts()Ljava/util/ArrayList;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v16

    move/from16 v1, v41

    if-lt v0, v1, :cond_d

    .line 2581
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 2582
    .local v17, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->getSelectedContacts()Ljava/util/ArrayList;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    if-nez v41, :cond_11

    .line 2583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mContext:Landroid/content/Context;
    invoke-static/range {v41 .. v41}, Lcom/lzx/iteam/CloudDialerActivity;->access$0(Lcom/lzx/iteam/CloudDialerActivity;)Landroid/content/Context;

    move-result-object v41

    const-string v42, "\u8bf7\u81f3\u5c11\u9009\u62e9\u4e00\u4e2a\u8054\u7cfb\u4eba\uff01"

    const/16 v43, 0x0

    invoke-static/range {v41 .. v43}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 2552
    .end local v17    # "intent":Landroid/content/Intent;
    .restart local v26    # "jsonArray1":Lorg/json/JSONArray;
    :cond_c
    :try_start_2
    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v27

    .line 2553
    .restart local v27    # "jsonObject":Lorg/json/JSONObject;
    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2551
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 2555
    .end local v16    # "i":I
    .end local v26    # "jsonArray1":Lorg/json/JSONArray;
    .end local v27    # "jsonObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v12

    .line 2556
    .local v12, "e":Lorg/json/JSONException;
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_6

    .line 2560
    .end local v12    # "e":Lorg/json/JSONException;
    .restart local v16    # "i":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->getSelectedContacts()Ljava/util/ArrayList;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lzx/iteam/bean/ChatContact;

    .line 2562
    .restart local v7    # "chatContact":Lcom/lzx/iteam/bean/ChatContact;
    :try_start_3
    new-instance v27, Lorg/json/JSONObject;

    invoke-direct/range {v27 .. v27}, Lorg/json/JSONObject;-><init>()V

    .line 2563
    .restart local v27    # "jsonObject":Lorg/json/JSONObject;
    const-string v41, "user_id"

    invoke-virtual {v7}, Lcom/lzx/iteam/bean/ChatContact;->getUserId()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v27

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2564
    const-string v41, "user_name"

    invoke-virtual {v7}, Lcom/lzx/iteam/bean/ChatContact;->getUserName()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v27

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2565
    const-string v41, "user_image"

    invoke-virtual {v7}, Lcom/lzx/iteam/bean/ChatContact;->getUserImg()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v27

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2566
    const-string v41, "contact_id"

    invoke-virtual {v7}, Lcom/lzx/iteam/bean/ChatContact;->getContactId()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v27

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2567
    const/16 v19, 0x0

    .line 2568
    .local v19, "isSame":Z
    const/16 v23, 0x0

    .local v23, "j":I
    :goto_8
    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONArray;->length()I

    move-result v41

    move/from16 v0, v23

    move/from16 v1, v41

    if-lt v0, v1, :cond_f

    .line 2574
    :goto_9
    if-nez v19, :cond_e

    .line 2575
    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2559
    .end local v19    # "isSame":Z
    .end local v23    # "j":I
    .end local v27    # "jsonObject":Lorg/json/JSONObject;
    :cond_e
    :goto_a
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_7

    .line 2569
    .restart local v19    # "isSame":Z
    .restart local v23    # "j":I
    .restart local v27    # "jsonObject":Lorg/json/JSONObject;
    :cond_f
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v41

    const-string v42, "user_id"

    invoke-virtual/range {v41 .. v42}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    const-string v42, "user_id"

    move-object/from16 v0, v27

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_10

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v41

    const-string v42, "user_name"

    invoke-virtual/range {v41 .. v42}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    const-string v42, "user_name"

    move-object/from16 v0, v27

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_10

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v41

    const-string v42, "user_image"

    invoke-virtual/range {v41 .. v42}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    const-string v42, "user_image"

    move-object/from16 v0, v27

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v41

    if-eqz v41, :cond_10

    .line 2570
    const/16 v19, 0x1

    .line 2571
    goto :goto_9

    .line 2568
    :cond_10
    add-int/lit8 v23, v23, 0x1

    goto :goto_8

    .line 2577
    .end local v19    # "isSame":Z
    .end local v23    # "j":I
    .end local v27    # "jsonObject":Lorg/json/JSONObject;
    :catch_2
    move-exception v12

    .line 2578
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    .line 2585
    .end local v7    # "chatContact":Lcom/lzx/iteam/bean/ChatContact;
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v17    # "intent":Landroid/content/Intent;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->eventId:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_13

    .line 2586
    const-string v42, "1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/lzx/iteam/CloudDialerActivity;->getApplication()Landroid/app/Application;

    move-result-object v41

    check-cast v41, Lcom/lzx/iteam/DialerApp;

    invoke-virtual/range {v41 .. v41}, Lcom/lzx/iteam/DialerApp;->getmEventToWhere()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v42

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_12

    .line 2587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    const-class v42, Lcom/lzx/iteam/CreateNewEventActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2591
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mEventData:Lcom/lzx/iteam/bean/EventListData;
    invoke-static/range {v41 .. v41}, Lcom/lzx/iteam/CloudDialerActivity;->access$27(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/bean/EventListData;

    move-result-object v41

    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Lcom/lzx/iteam/bean/EventListData;->setReceiver(Ljava/lang/String;)V

    .line 2592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mBundle:Landroid/os/Bundle;
    invoke-static/range {v41 .. v41}, Lcom/lzx/iteam/CloudDialerActivity;->access$28(Lcom/lzx/iteam/CloudDialerActivity;)Landroid/os/Bundle;

    move-result-object v41

    const-string v42, "event_bundle"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v43, v0

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mEventData:Lcom/lzx/iteam/bean/EventListData;
    invoke-static/range {v43 .. v43}, Lcom/lzx/iteam/CloudDialerActivity;->access$27(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/bean/EventListData;

    move-result-object v43

    invoke-virtual/range {v41 .. v43}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2593
    const-string v41, "event_msg"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v42, v0

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mBundle:Landroid/os/Bundle;
    invoke-static/range {v42 .. v42}, Lcom/lzx/iteam/CloudDialerActivity;->access$28(Lcom/lzx/iteam/CloudDialerActivity;)Landroid/os/Bundle;

    move-result-object v42

    move-object/from16 v0, v17

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2594
    const/high16 v41, 0x4000000

    move-object/from16 v0, v17

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/CloudDialerActivity;->startActivity(Landroid/content/Intent;)V

    .line 2596
    const/16 v41, 0x0

    sput v41, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    goto/16 :goto_2

    .line 2589
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    const-class v42, Lcom/lzx/iteam/CustomEventActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_b

    .line 2598
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v42

    # invokes: Lcom/lzx/iteam/CloudDialerActivity;->addReceiverToEvent(Ljava/lang/String;)V
    invoke-static/range {v41 .. v42}, Lcom/lzx/iteam/CloudDialerActivity;->access$29(Lcom/lzx/iteam/CloudDialerActivity;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2602
    .end local v16    # "i":I
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v24    # "jsonArray":Lorg/json/JSONArray;
    :cond_14
    sget v41, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    const/high16 v42, 0x400000

    and-int v41, v41, v42

    if-eqz v41, :cond_17

    .line 2603
    new-instance v34, Ljava/lang/StringBuffer;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuffer;-><init>()V

    .line 2604
    .local v34, "sb":Ljava/lang/StringBuffer;
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->getSelectedContacts()Ljava/util/ArrayList;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v16

    move/from16 v1, v41

    if-lt v0, v1, :cond_16

    .line 2608
    const-string v10, ""

    .line 2609
    .local v10, "contactIds":Ljava/lang/String;
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuffer;->length()I

    move-result v41

    if-lez v41, :cond_15

    .line 2610
    const/16 v41, 0x0

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuffer;->length()I

    move-result v42

    add-int/lit8 v42, v42, -0x1

    move-object/from16 v0, v34

    move/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 2612
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    # invokes: Lcom/lzx/iteam/CloudDialerActivity;->setGroupContact(Ljava/lang/String;)V
    invoke-static {v0, v10}, Lcom/lzx/iteam/CloudDialerActivity;->access$30(Lcom/lzx/iteam/CloudDialerActivity;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2605
    .end local v10    # "contactIds":Ljava/lang/String;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->getSelectedContacts()Ljava/util/ArrayList;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lzx/iteam/bean/ChatContact;

    .line 2606
    .restart local v7    # "chatContact":Lcom/lzx/iteam/bean/ChatContact;
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/lzx/iteam/bean/ChatContact;->getContactId()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v42, ","

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v34

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2604
    add-int/lit8 v16, v16, 0x1

    goto :goto_c

    .line 2615
    .end local v7    # "chatContact":Lcom/lzx/iteam/bean/ChatContact;
    .end local v16    # "i":I
    .end local v34    # "sb":Ljava/lang/StringBuffer;
    :cond_17
    sget v41, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    const/high16 v42, 0x800000

    and-int v41, v41, v42

    if-eqz v41, :cond_1b

    .line 2616
    new-instance v34, Ljava/lang/StringBuffer;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuffer;-><init>()V

    .line 2617
    .restart local v34    # "sb":Ljava/lang/StringBuffer;
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->getSelectedContacts()Ljava/util/ArrayList;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v16

    move/from16 v1, v41

    if-lt v0, v1, :cond_19

    .line 2621
    const-string v10, ""

    .line 2622
    .restart local v10    # "contactIds":Ljava/lang/String;
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuffer;->length()I

    move-result v41

    if-lez v41, :cond_18

    .line 2623
    const/16 v41, 0x0

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuffer;->length()I

    move-result v42

    add-int/lit8 v42, v42, -0x1

    move-object/from16 v0, v34

    move/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 2625
    :cond_18
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v41

    if-gtz v41, :cond_1a

    .line 2626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mContext:Landroid/content/Context;
    invoke-static/range {v41 .. v41}, Lcom/lzx/iteam/CloudDialerActivity;->access$0(Lcom/lzx/iteam/CloudDialerActivity;)Landroid/content/Context;

    move-result-object v41

    const-string v42, "\u8bf7\u81f3\u5c11\u9009\u62e9\u4e00\u4e2a\u8054\u7cfb\u4eba\uff01"

    const/16 v43, 0x0

    invoke-static/range {v41 .. v43}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 2618
    .end local v10    # "contactIds":Ljava/lang/String;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->getSelectedContacts()Ljava/util/ArrayList;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lzx/iteam/bean/ChatContact;

    .line 2619
    .restart local v7    # "chatContact":Lcom/lzx/iteam/bean/ChatContact;
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/lzx/iteam/bean/ChatContact;->getContactId()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v42, ","

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v34

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2617
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_d

    .line 2628
    .end local v7    # "chatContact":Lcom/lzx/iteam/bean/ChatContact;
    .restart local v10    # "contactIds":Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    # invokes: Lcom/lzx/iteam/CloudDialerActivity;->setGroupManager(Ljava/lang/String;)V
    invoke-static {v0, v10}, Lcom/lzx/iteam/CloudDialerActivity;->access$31(Lcom/lzx/iteam/CloudDialerActivity;Ljava/lang/String;)V

    .line 2629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    const/16 v42, 0x1

    const/16 v43, 0x1

    invoke-virtual/range {v41 .. v43}, Lcom/lzx/iteam/CloudDialerActivity;->quitBatchOperation(ZZ)V

    goto/16 :goto_2

    .line 2631
    .end local v10    # "contactIds":Ljava/lang/String;
    .end local v16    # "i":I
    .end local v34    # "sb":Ljava/lang/StringBuffer;
    :cond_1b
    sget v41, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    const/high16 v42, 0x1000000

    and-int v41, v41, v42

    if-eqz v41, :cond_1f

    .line 2632
    new-instance v34, Ljava/lang/StringBuffer;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuffer;-><init>()V

    .line 2633
    .restart local v34    # "sb":Ljava/lang/StringBuffer;
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->getSelectedContacts()Ljava/util/ArrayList;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v16

    move/from16 v1, v41

    if-lt v0, v1, :cond_1d

    .line 2637
    const-string v10, ""

    .line 2638
    .restart local v10    # "contactIds":Ljava/lang/String;
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuffer;->length()I

    move-result v41

    if-lez v41, :cond_1c

    .line 2639
    const/16 v41, 0x0

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuffer;->length()I

    move-result v42

    add-int/lit8 v42, v42, -0x1

    move-object/from16 v0, v34

    move/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 2641
    :cond_1c
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v41

    if-gtz v41, :cond_1e

    .line 2642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mContext:Landroid/content/Context;
    invoke-static/range {v41 .. v41}, Lcom/lzx/iteam/CloudDialerActivity;->access$0(Lcom/lzx/iteam/CloudDialerActivity;)Landroid/content/Context;

    move-result-object v41

    const-string v42, "\u8bf7\u81f3\u5c11\u9009\u62e9\u4e00\u4e2a\u8054\u7cfb\u4eba\uff01"

    const/16 v43, 0x0

    invoke-static/range {v41 .. v43}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 2634
    .end local v10    # "contactIds":Ljava/lang/String;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->getSelectedContacts()Ljava/util/ArrayList;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lzx/iteam/bean/ChatContact;

    .line 2635
    .restart local v7    # "chatContact":Lcom/lzx/iteam/bean/ChatContact;
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/lzx/iteam/bean/ChatContact;->getContactId()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v42, ","

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v34

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2633
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_e

    .line 2644
    .end local v7    # "chatContact":Lcom/lzx/iteam/bean/ChatContact;
    .restart local v10    # "contactIds":Ljava/lang/String;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    # invokes: Lcom/lzx/iteam/CloudDialerActivity;->deleteGroupMember(Ljava/lang/String;)V
    invoke-static {v0, v10}, Lcom/lzx/iteam/CloudDialerActivity;->access$32(Lcom/lzx/iteam/CloudDialerActivity;Ljava/lang/String;)V

    .line 2645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    const/16 v42, 0x1

    const/16 v43, 0x1

    invoke-virtual/range {v41 .. v43}, Lcom/lzx/iteam/CloudDialerActivity;->quitBatchOperation(ZZ)V

    goto/16 :goto_2

    .line 2648
    .end local v10    # "contactIds":Ljava/lang/String;
    .end local v16    # "i":I
    .end local v34    # "sb":Ljava/lang/StringBuffer;
    :cond_1f
    sget v41, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    const/high16 v42, 0x8000000

    and-int v41, v41, v42

    if-eqz v41, :cond_22

    .line 2649
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    .line 2650
    .local v40, "userIds":Ljava/lang/StringBuilder;
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->getSelectedContacts()Ljava/util/ArrayList;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v16

    move/from16 v1, v41

    if-lt v0, v1, :cond_20

    .line 2654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->getSelectedContacts()Ljava/util/ArrayList;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    if-nez v41, :cond_21

    .line 2655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mContext:Landroid/content/Context;
    invoke-static/range {v41 .. v41}, Lcom/lzx/iteam/CloudDialerActivity;->access$0(Lcom/lzx/iteam/CloudDialerActivity;)Landroid/content/Context;

    move-result-object v41

    const-string v42, "\u8bf7\u81f3\u5c11\u9009\u62e9\u4e00\u4e2a\u8054\u7cfb\u4eba\uff01"

    const/16 v43, 0x0

    invoke-static/range {v41 .. v43}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 2651
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->getSelectedContacts()Ljava/util/ArrayList;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lzx/iteam/bean/ChatContact;

    .line 2652
    .restart local v7    # "chatContact":Lcom/lzx/iteam/bean/ChatContact;
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/lzx/iteam/bean/ChatContact;->getUserId()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v42, ","

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2650
    add-int/lit8 v16, v16, 0x1

    goto :goto_f

    .line 2657
    .end local v7    # "chatContact":Lcom/lzx/iteam/bean/ChatContact;
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->length()I

    move-result v43

    add-int/lit8 v43, v43, -0x1

    move-object/from16 v0, v40

    move/from16 v1, v42

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v42

    # invokes: Lcom/lzx/iteam/CloudDialerActivity;->addScheduleManager(Ljava/lang/String;)V
    invoke-static/range {v41 .. v42}, Lcom/lzx/iteam/CloudDialerActivity;->access$33(Lcom/lzx/iteam/CloudDialerActivity;Ljava/lang/String;)V

    .line 2658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    const/16 v42, 0x1

    const/16 v43, 0x1

    invoke-virtual/range {v41 .. v43}, Lcom/lzx/iteam/CloudDialerActivity;->quitBatchOperation(ZZ)V

    goto/16 :goto_2

    .line 2660
    .end local v16    # "i":I
    .end local v40    # "userIds":Ljava/lang/StringBuilder;
    :cond_22
    sget v41, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    const/high16 v42, 0x10000000

    and-int v41, v41, v42

    if-eqz v41, :cond_29

    .line 2661
    const/16 v24, 0x0

    .line 2662
    .restart local v24    # "jsonArray":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;
    invoke-static/range {v41 .. v41}, Lcom/lzx/iteam/CloudDialerActivity;->access$34(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/bean/AttendanceData;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/lzx/iteam/bean/AttendanceData;->getMembers()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_23

    .line 2663
    new-instance v24, Lorg/json/JSONArray;

    .end local v24    # "jsonArray":Lorg/json/JSONArray;
    invoke-direct/range {v24 .. v24}, Lorg/json/JSONArray;-><init>()V

    .line 2671
    .restart local v24    # "jsonArray":Lorg/json/JSONArray;
    :goto_10
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->getSelectedContacts()Ljava/util/ArrayList;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v16

    move/from16 v1, v41

    if-lt v0, v1, :cond_24

    .line 2692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->getSelectedContacts()Ljava/util/ArrayList;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    if-nez v41, :cond_28

    .line 2693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mContext:Landroid/content/Context;
    invoke-static/range {v41 .. v41}, Lcom/lzx/iteam/CloudDialerActivity;->access$0(Lcom/lzx/iteam/CloudDialerActivity;)Landroid/content/Context;

    move-result-object v41

    const-string v42, "\u8bf7\u81f3\u5c11\u9009\u62e9\u4e00\u4e2a\u8054\u7cfb\u4eba\uff01"

    const/16 v43, 0x0

    invoke-static/range {v41 .. v43}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 2666
    .end local v16    # "i":I
    :cond_23
    :try_start_4
    new-instance v25, Lorg/json/JSONArray;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;
    invoke-static/range {v41 .. v41}, Lcom/lzx/iteam/CloudDialerActivity;->access$34(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/bean/AttendanceData;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/lzx/iteam/bean/AttendanceData;->getMembers()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v25

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    .end local v24    # "jsonArray":Lorg/json/JSONArray;
    .local v25, "jsonArray":Lorg/json/JSONArray;
    move-object/from16 v24, v25

    .line 2667
    .end local v25    # "jsonArray":Lorg/json/JSONArray;
    .restart local v24    # "jsonArray":Lorg/json/JSONArray;
    goto :goto_10

    :catch_3
    move-exception v12

    .line 2668
    .local v12, "e":Lorg/json/JSONException;
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_10

    .line 2672
    .end local v12    # "e":Lorg/json/JSONException;
    .restart local v16    # "i":I
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->getSelectedContacts()Ljava/util/ArrayList;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lzx/iteam/bean/ChatContact;

    .line 2674
    .restart local v7    # "chatContact":Lcom/lzx/iteam/bean/ChatContact;
    :try_start_5
    new-instance v27, Lorg/json/JSONObject;

    invoke-direct/range {v27 .. v27}, Lorg/json/JSONObject;-><init>()V

    .line 2675
    .restart local v27    # "jsonObject":Lorg/json/JSONObject;
    const-string v41, "contact_name"

    invoke-virtual {v7}, Lcom/lzx/iteam/bean/ChatContact;->getUserName()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v27

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2676
    const-string v41, "user_id"

    invoke-virtual {v7}, Lcom/lzx/iteam/bean/ChatContact;->getUserId()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v27

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2677
    const-string v41, "user_image"

    invoke-virtual {v7}, Lcom/lzx/iteam/bean/ChatContact;->getUserImg()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v27

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2678
    const/16 v19, 0x0

    .line 2679
    .restart local v19    # "isSame":Z
    const/16 v23, 0x0

    .restart local v23    # "j":I
    :goto_12
    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONArray;->length()I

    move-result v41

    move/from16 v0, v23

    move/from16 v1, v41

    if-lt v0, v1, :cond_26

    .line 2685
    :goto_13
    if-nez v19, :cond_25

    .line 2686
    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2671
    .end local v19    # "isSame":Z
    .end local v23    # "j":I
    .end local v27    # "jsonObject":Lorg/json/JSONObject;
    :cond_25
    :goto_14
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_11

    .line 2680
    .restart local v19    # "isSame":Z
    .restart local v23    # "j":I
    .restart local v27    # "jsonObject":Lorg/json/JSONObject;
    :cond_26
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v41

    const-string v42, "user_id"

    invoke-virtual/range {v41 .. v42}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    const-string v42, "user_id"

    move-object/from16 v0, v27

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_27

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v41

    const-string v42, "user_name"

    invoke-virtual/range {v41 .. v42}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    const-string v42, "user_name"

    move-object/from16 v0, v27

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-result v41

    if-eqz v41, :cond_27

    .line 2681
    const/16 v19, 0x1

    .line 2682
    goto :goto_13

    .line 2679
    :cond_27
    add-int/lit8 v23, v23, 0x1

    goto :goto_12

    .line 2688
    .end local v19    # "isSame":Z
    .end local v23    # "j":I
    .end local v27    # "jsonObject":Lorg/json/JSONObject;
    :catch_4
    move-exception v12

    .line 2689
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_14

    .line 2695
    .end local v7    # "chatContact":Lcom/lzx/iteam/bean/ChatContact;
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;
    invoke-static/range {v41 .. v41}, Lcom/lzx/iteam/CloudDialerActivity;->access$34(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/bean/AttendanceData;

    move-result-object v41

    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Lcom/lzx/iteam/bean/AttendanceData;->setMembers(Ljava/lang/String;)V

    .line 2696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;
    invoke-static/range {v41 .. v41}, Lcom/lzx/iteam/CloudDialerActivity;->access$34(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/bean/AttendanceData;

    move-result-object v41

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONArray;->length()I

    move-result v43

    invoke-static/range {v43 .. v43}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Lcom/lzx/iteam/bean/AttendanceData;->setMemberCount(Ljava/lang/String;)V

    .line 2698
    new-instance v17, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    const-class v42, Lcom/lzx/iteam/AttendanceSettingActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2699
    .restart local v17    # "intent":Landroid/content/Intent;
    const-string v41, "attendanceData"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v42, v0

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;
    invoke-static/range {v42 .. v42}, Lcom/lzx/iteam/CloudDialerActivity;->access$34(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/bean/AttendanceData;

    move-result-object v42

    move-object/from16 v0, v17

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2700
    const-string v41, "group_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v42, v0

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;
    invoke-static/range {v42 .. v42}, Lcom/lzx/iteam/CloudDialerActivity;->access$34(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/bean/AttendanceData;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/lzx/iteam/bean/AttendanceData;->getGroupId()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v17

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2701
    const-string v41, "tag_id"

    const-string v42, "0"

    move-object/from16 v0, v17

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2702
    const-string v41, "tag_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->tagName:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2703
    const-string v41, "group_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->groupName:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2704
    const-string v41, "user_type"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->userType:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2705
    const-string v41, "contact_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2706
    const-string v41, "where"

    const-string v42, "cloud"

    move-object/from16 v0, v17

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2707
    const/high16 v41, 0x4000000

    move-object/from16 v0, v17

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/CloudDialerActivity;->startActivity(Landroid/content/Intent;)V

    .line 2709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    const/16 v42, 0x1

    const/16 v43, 0x1

    invoke-virtual/range {v41 .. v43}, Lcom/lzx/iteam/CloudDialerActivity;->quitBatchOperation(ZZ)V

    goto/16 :goto_2

    .line 2711
    .end local v16    # "i":I
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v24    # "jsonArray":Lorg/json/JSONArray;
    :cond_29
    sget v41, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    const/high16 v42, 0x20000000

    and-int v41, v41, v42

    if-eqz v41, :cond_2c

    .line 2712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->getSelectedContacts()Ljava/util/ArrayList;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    if-nez v41, :cond_2a

    .line 2713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mContext:Landroid/content/Context;
    invoke-static/range {v41 .. v41}, Lcom/lzx/iteam/CloudDialerActivity;->access$0(Lcom/lzx/iteam/CloudDialerActivity;)Landroid/content/Context;

    move-result-object v41

    const-string v42, "\u8bf7\u81f3\u5c11\u9009\u62e9\u4e00\u4e2a\u8054\u7cfb\u4eba\uff01"

    const/16 v43, 0x0

    invoke-static/range {v41 .. v43}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 2715
    :cond_2a
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    .line 2716
    .restart local v40    # "userIds":Ljava/lang/StringBuilder;
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->getSelectedContacts()Ljava/util/ArrayList;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v16

    move/from16 v1, v41

    if-lt v0, v1, :cond_2b

    .line 2720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->length()I

    move-result v43

    add-int/lit8 v43, v43, -0x1

    move-object/from16 v0, v40

    move/from16 v1, v42

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v42

    # invokes: Lcom/lzx/iteam/CloudDialerActivity;->addApprovalManager(Ljava/lang/String;)V
    invoke-static/range {v41 .. v42}, Lcom/lzx/iteam/CloudDialerActivity;->access$35(Lcom/lzx/iteam/CloudDialerActivity;Ljava/lang/String;)V

    .line 2721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    const/16 v42, 0x1

    const/16 v43, 0x1

    invoke-virtual/range {v41 .. v43}, Lcom/lzx/iteam/CloudDialerActivity;->quitBatchOperation(ZZ)V

    goto/16 :goto_2

    .line 2717
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->getSelectedContacts()Ljava/util/ArrayList;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lzx/iteam/bean/ChatContact;

    .line 2718
    .restart local v7    # "chatContact":Lcom/lzx/iteam/bean/ChatContact;
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/lzx/iteam/bean/ChatContact;->getContactId()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v42, ","

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2716
    add-int/lit8 v16, v16, 0x1

    goto :goto_15

    .line 2724
    .end local v7    # "chatContact":Lcom/lzx/iteam/bean/ChatContact;
    .end local v16    # "i":I
    .end local v40    # "userIds":Ljava/lang/StringBuilder;
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;
    invoke-static/range {v41 .. v41}, Lcom/lzx/iteam/CloudDialerActivity;->access$23(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    move-result-object v41

    .line 2725
    invoke-virtual/range {v41 .. v41}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->getSelectedContactIds()Ljava/util/ArrayList;

    move-result-object v35

    .line 2727
    .local v35, "selectedPeople":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget v41, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    and-int/lit8 v41, v41, 0x2

    if-nez v41, :cond_2d

    .line 2728
    sget v41, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    and-int/lit8 v41, v41, 0x4

    if-eqz v41, :cond_3a

    .line 2729
    :cond_2d
    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .line 2730
    .local v21, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 2731
    .local v5, "arrs":Lorg/json/JSONArray;
    new-instance v34, Ljava/lang/StringBuffer;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuffer;-><init>()V

    .line 2732
    .restart local v34    # "sb":Ljava/lang/StringBuffer;
    :goto_16
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v41

    if-nez v41, :cond_2e

    .line 2758
    const-wide/16 v8, 0x0

    .line 2759
    .local v8, "contactId":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-wide v8, v0, Lcom/lzx/iteam/CloudDialerActivity;->mShareContactId:J

    .line 2760
    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v41

    const/16 v42, 0xa

    move/from16 v0, v41

    move/from16 v1, v42

    if-le v0, v1, :cond_34

    .line 2761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/lzx/iteam/CloudDialerActivity;->checkSIMCard()Z

    move-result v41

    if-nez v41, :cond_30

    .line 2762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mContext:Landroid/content/Context;
    invoke-static/range {v41 .. v41}, Lcom/lzx/iteam/CloudDialerActivity;->access$0(Lcom/lzx/iteam/CloudDialerActivity;)Landroid/content/Context;

    move-result-object v41

    const v42, 0x7f08009f

    .line 2763
    const/16 v43, 0x1

    .line 2762
    invoke-static/range {v41 .. v43}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v41

    .line 2763
    invoke-virtual/range {v41 .. v41}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2733
    .end local v8    # "contactId":J
    :cond_2e
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/Long;

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 2734
    .restart local v8    # "contactId":J
    new-instance v31, Lorg/json/JSONObject;

    invoke-direct/range {v31 .. v31}, Lorg/json/JSONObject;-><init>()V

    .line 2736
    .local v31, "obj":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    .line 2737
    const/16 v42, 0x1

    .line 2736
    move-object/from16 v0, v41

    move/from16 v1, v42

    invoke-static {v0, v8, v9, v1}, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->getFirstMobilePhoneNumber(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v13

    .line 2744
    .local v13, "firstMobilePhoneNumber":Ljava/lang/String;
    invoke-static {v13}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_2f

    .line 2745
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v42, ","

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v34

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2746
    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v41

    const/16 v42, 0xa

    move/from16 v0, v41

    move/from16 v1, v42

    if-le v0, v1, :cond_2f

    .line 2748
    :try_start_6
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v31

    move-object/from16 v1, v41

    invoke-virtual {v0, v1, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_5

    .line 2756
    :cond_2f
    :goto_17
    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_16

    .line 2749
    :catch_5
    move-exception v12

    .line 2752
    .local v12, "e":Lorg/json/JSONException;
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_17

    .line 2767
    .end local v12    # "e":Lorg/json/JSONException;
    .end local v13    # "firstMobilePhoneNumber":Ljava/lang/String;
    .end local v31    # "obj":Lorg/json/JSONObject;
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mContext:Landroid/content/Context;
    invoke-static/range {v41 .. v41}, Lcom/lzx/iteam/CloudDialerActivity;->access$0(Lcom/lzx/iteam/CloudDialerActivity;)Landroid/content/Context;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v28

    .line 2768
    .local v28, "mPreferenceUtil":Lcom/lzx/iteam/util/PreferenceUtil;
    const-string v41, "istwosim"

    .line 2769
    const-class v42, Ljava/lang/Integer;

    .line 2768
    move-object/from16 v0, v28

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/util/PreferenceUtil;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/Integer;

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 2771
    .local v20, "isTwoSim":I
    const/16 v41, 0x1

    move/from16 v0, v20

    move/from16 v1, v41

    if-ne v0, v1, :cond_33

    .line 2773
    const-string v41, "twosimpackage"

    const/16 v42, 0x0

    .line 2772
    move-object/from16 v0, v28

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 2774
    .local v38, "twoSimPackage":Ljava/lang/String;
    const/16 v18, 0x0

    .line 2775
    .local v18, "isHaveInstalled":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mContext:Landroid/content/Context;
    invoke-static/range {v41 .. v41}, Lcom/lzx/iteam/CloudDialerActivity;->access$0(Lcom/lzx/iteam/CloudDialerActivity;)Landroid/content/Context;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lcom/lzx/iteam/net/MsgCenter;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/MsgCenter;

    move-result-object v29

    .line 2776
    .local v29, "mc":Lcom/lzx/iteam/net/MsgCenter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/lzx/iteam/CloudDialerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v33

    .line 2778
    .local v33, "pm":Landroid/content/pm/PackageManager;
    :try_start_7
    move-object/from16 v0, v33

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_6

    .line 2779
    const/16 v18, 0x1

    .line 2783
    :goto_18
    if-eqz v18, :cond_31

    .line 2784
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 2785
    .restart local v17    # "intent":Landroid/content/Intent;
    const/high16 v41, 0x20000000

    move-object/from16 v0, v17

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2786
    new-instance v41, Landroid/content/ComponentName;

    .line 2787
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v43, ".BatchSendSmsActivity"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v41

    move-object/from16 v1, v38

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2786
    move-object/from16 v0, v17

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2788
    const-string v41, "com.hfx.twosimplugin"

    move-object/from16 v0, v17

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2790
    const-string v41, "numbers"

    .line 2791
    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v42

    .line 2790
    move-object/from16 v0, v17

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/CloudDialerActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 2781
    .end local v17    # "intent":Landroid/content/Intent;
    :catch_6
    move-exception v41

    const/16 v18, 0x0

    goto :goto_18

    .line 2794
    :cond_31
    new-instance v17, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mContext:Landroid/content/Context;
    invoke-static/range {v41 .. v41}, Lcom/lzx/iteam/CloudDialerActivity;->access$0(Lcom/lzx/iteam/CloudDialerActivity;)Landroid/content/Context;

    move-result-object v41

    .line 2795
    const-class v42, Lcom/lzx/iteam/BatchSendSmsActivity;

    .line 2794
    move-object/from16 v0, v17

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2796
    .restart local v17    # "intent":Landroid/content/Intent;
    const/high16 v41, 0x20000000

    move-object/from16 v0, v17

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2797
    const-string v41, "numbers"

    .line 2798
    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v42

    .line 2797
    move-object/from16 v0, v17

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/CloudDialerActivity;->startActivity(Landroid/content/Intent;)V

    .line 2800
    const-wide/16 v42, 0x0

    .line 2801
    const/16 v41, 0x2718

    .line 2800
    move-object/from16 v0, v29

    move-wide/from16 v1, v42

    move/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lcom/lzx/iteam/net/MsgCenter;->typeMsgExist(JI)J

    move-result-wide v14

    .line 2802
    .local v14, "flag":J
    const-wide/16 v42, -0x1

    cmp-long v41, v14, v42

    if-nez v41, :cond_32

    .line 2803
    new-instance v22, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;

    invoke-direct/range {v22 .. v22}, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;-><init>()V

    .line 2804
    .local v22, "item":Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;
    const-wide/16 v42, 0x0

    move-wide/from16 v0, v42

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->cloudId:J

    .line 2805
    const/16 v41, 0x0

    move-object/from16 v0, v41

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->phoneNum:Ljava/lang/String;

    .line 2806
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, v22

    iput v0, v1, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->isReaded:I

    .line 2807
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v42

    move-wide/from16 v0, v42

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->dateTime:J

    .line 2808
    const/16 v41, 0x2718

    move/from16 v0, v41

    move-object/from16 v1, v22

    iput v0, v1, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->execCode:I

    .line 2809
    const-string v41, "\u6709\u53cc\u5361\u63d2\u4ef6\u9700\u8981\u5b89\u88c5"

    move-object/from16 v0, v41

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->displayText:Ljava/lang/String;

    .line 2810
    const-string v41, ""

    move-object/from16 v0, v41

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->argList:Ljava/lang/String;

    .line 2811
    const v41, 0x7f0200e0

    move/from16 v0, v41

    move-object/from16 v1, v22

    iput v0, v1, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->msgTypeDrawableId:I

    .line 2812
    const/16 v41, -0x1

    move/from16 v0, v41

    move-object/from16 v1, v22

    iput v0, v1, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->nextActionDrawableId:I

    .line 2813
    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/net/MsgCenter;->addNewMsg(Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;)V

    goto/16 :goto_2

    .line 2815
    .end local v22    # "item":Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;
    :cond_32
    move-object/from16 v0, v29

    invoke-virtual {v0, v14, v15}, Lcom/lzx/iteam/net/MsgCenter;->getMsgItem(J)Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;

    move-result-object v22

    .line 2816
    .restart local v22    # "item":Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, v22

    iput v0, v1, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->isReaded:I

    .line 2817
    const v41, 0x7f0200e0

    move/from16 v0, v41

    move-object/from16 v1, v22

    iput v0, v1, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->msgTypeDrawableId:I

    .line 2818
    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/net/MsgCenter;->updateMsgReaded(Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;)V

    goto/16 :goto_2

    .line 2822
    .end local v14    # "flag":J
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v18    # "isHaveInstalled":Z
    .end local v22    # "item":Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;
    .end local v29    # "mc":Lcom/lzx/iteam/net/MsgCenter;
    .end local v33    # "pm":Landroid/content/pm/PackageManager;
    .end local v38    # "twoSimPackage":Ljava/lang/String;
    :cond_33
    new-instance v17, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mContext:Landroid/content/Context;
    invoke-static/range {v41 .. v41}, Lcom/lzx/iteam/CloudDialerActivity;->access$0(Lcom/lzx/iteam/CloudDialerActivity;)Landroid/content/Context;

    move-result-object v41

    const-class v42, Lcom/lzx/iteam/BatchSendSmsActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2823
    .restart local v17    # "intent":Landroid/content/Intent;
    const/high16 v41, 0x20000000

    move-object/from16 v0, v17

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2824
    const-string v41, "numbers"

    .line 2825
    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v42

    .line 2824
    move-object/from16 v0, v17

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2827
    const-string v41, "twosimtype"

    const/16 v42, 0x0

    .line 2826
    move-object/from16 v0, v28

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 2828
    .local v39, "type":Ljava/lang/String;
    const-string v41, "type"

    move-object/from16 v0, v17

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/CloudDialerActivity;->startActivity(Landroid/content/Intent;)V

    .line 2830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    const/16 v42, 0x1

    const/16 v43, 0x1

    invoke-virtual/range {v41 .. v43}, Lcom/lzx/iteam/CloudDialerActivity;->quitBatchOperation(ZZ)V

    goto/16 :goto_2

    .line 2832
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v20    # "isTwoSim":I
    .end local v28    # "mPreferenceUtil":Lcom/lzx/iteam/util/PreferenceUtil;
    .end local v39    # "type":Ljava/lang/String;
    :cond_34
    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v41

    if-nez v41, :cond_35

    .line 2833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mContext:Landroid/content/Context;
    invoke-static/range {v41 .. v41}, Lcom/lzx/iteam/CloudDialerActivity;->access$0(Lcom/lzx/iteam/CloudDialerActivity;)Landroid/content/Context;

    move-result-object v41

    const-string v42, "\u8bf7\u81f3\u5c11\u9009\u62e9\u4e00\u4e2a\u8054\u7cfb\u4eba\uff01"

    const/16 v43, 0x0

    invoke-static/range {v41 .. v43}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 2836
    :cond_35
    if-eqz v34, :cond_36

    const-string v41, ""

    move-object/from16 v0, v34

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_36

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuffer;->length()I

    move-result v41

    if-eqz v41, :cond_36

    .line 2838
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuffer;->length()I

    move-result v41

    add-int/lit8 v41, v41, -0x1

    move-object/from16 v0, v34

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 2841
    :cond_36
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuffer;->length()I

    move-result v41

    if-lez v41, :cond_39

    .line 2842
    const-wide/16 v42, -0x1

    cmp-long v41, v8, v42

    if-eqz v41, :cond_37

    .line 2843
    const-wide/16 v42, 0xde

    cmp-long v41, v8, v42

    if-nez v41, :cond_38

    .line 2845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v42

    .line 2846
    new-instance v43, Ljava/lang/StringBuilder;

    const-string v44, "\u59d3\u540d\uff1a"

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->mShareName:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "\n"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->mSharePhone:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "\n"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "\u901a\u8fc7\u201c\u56e2\u961f\u201d\u53d1\u9001"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    .line 2844
    invoke-static/range {v41 .. v43}, Lcom/lzx/iteam/util/CommonCodeUtil;->launchSendMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2866
    :cond_37
    :goto_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    const/16 v42, 0x1

    const/16 v43, 0x1

    invoke-virtual/range {v41 .. v43}, Lcom/lzx/iteam/CloudDialerActivity;->quitBatchOperation(ZZ)V

    goto/16 :goto_2

    .line 2850
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v42

    .line 2852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v43, v0

    .line 2851
    move-object/from16 v0, v43

    invoke-static {v0, v8, v9}, Lcom/lzx/iteam/util/ContactsSend;->getFormatedContact(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v43

    .line 2849
    invoke-static/range {v41 .. v43}, Lcom/lzx/iteam/util/CommonCodeUtil;->launchSendMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_19

    .line 2857
    :cond_39
    const-wide/16 v42, -0x1

    cmp-long v41, v8, v42

    if-eqz v41, :cond_37

    .line 2859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    const-string v42, ""

    .line 2861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v43, v0

    .line 2860
    move-object/from16 v0, v43

    invoke-static {v0, v8, v9}, Lcom/lzx/iteam/util/ContactsSend;->getFormatedContact(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v43

    .line 2858
    invoke-static/range {v41 .. v43}, Lcom/lzx/iteam/util/CommonCodeUtil;->launchSendMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_19

    .line 2869
    .end local v5    # "arrs":Lorg/json/JSONArray;
    .end local v8    # "contactId":J
    .end local v21    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    .end local v34    # "sb":Ljava/lang/StringBuffer;
    :cond_3a
    sget v41, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    move/from16 v0, v41

    and-int/lit16 v0, v0, 0x1000

    move/from16 v41, v0

    if-eqz v41, :cond_3d

    .line 2870
    sget-object v41, Lcom/lzx/iteam/CloudDialerActivity;->selectedGroup:Lcom/lzx/iteam/bean/CloudGroup;

    move-object/from16 v0, v41

    iget v0, v0, Lcom/lzx/iteam/bean/CloudGroup;->groupType:I

    move/from16 v41, v0

    and-int/lit8 v41, v41, 0x20

    if-eqz v41, :cond_3b

    .line 2872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v11

    .line 2873
    .local v11, "dialogUtil":Lcom/lzx/iteam/util/AllDialogUtil;
    const-string v41, "\u63d0\u793a"

    const-string v42, "\u8be5\u7fa4\u7ec4\u6dfb\u52a0\u8054\u7cfb\u4eba\u9700\u8981\u5ba1\u6838\uff0c\u8bf7\u8010\u5fc3\u7b49\u5019\u60a8\u7684\u63d0\u4ea4\u7ed3\u679c\uff01"

    .line 2874
    const-string v43, "\u786e\u5b9a"

    .line 2873
    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v11, v0, v1, v2}, Lcom/lzx/iteam/util/AllDialogUtil;->titleMsgBtnStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 2876
    new-instance v41, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler$1;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler$1;-><init>(Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;)V

    move-object/from16 v0, v41

    invoke-virtual {v11, v0}, Lcom/lzx/iteam/util/AllDialogUtil;->setOnDialogListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;)V

    goto/16 :goto_2

    .line 2890
    .end local v11    # "dialogUtil":Lcom/lzx/iteam/util/AllDialogUtil;
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;
    invoke-static/range {v41 .. v41}, Lcom/lzx/iteam/CloudDialerActivity;->access$23(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->getSelectedContacts()Ljava/util/ArrayList;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    if-nez v41, :cond_3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;
    invoke-static/range {v41 .. v41}, Lcom/lzx/iteam/CloudDialerActivity;->access$23(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->getSelectedContactIds()Ljava/util/ArrayList;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    if-nez v41, :cond_3c

    .line 2891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mContext:Landroid/content/Context;
    invoke-static/range {v41 .. v41}, Lcom/lzx/iteam/CloudDialerActivity;->access$0(Lcom/lzx/iteam/CloudDialerActivity;)Landroid/content/Context;

    move-result-object v41

    const-string v42, "\u8bf7\u81f3\u5c11\u9009\u62e9\u4e00\u4e2a\u8054\u7cfb\u4eba\uff01"

    const/16 v43, 0x0

    invoke-static/range {v41 .. v43}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 2893
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v42, v0

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;
    invoke-static/range {v42 .. v42}, Lcom/lzx/iteam/CloudDialerActivity;->access$23(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->getSelectedContactIds()Ljava/util/ArrayList;

    move-result-object v42

    # invokes: Lcom/lzx/iteam/CloudDialerActivity;->uploadCloudContact(Ljava/util/ArrayList;)V
    invoke-static/range {v41 .. v42}, Lcom/lzx/iteam/CloudDialerActivity;->access$36(Lcom/lzx/iteam/CloudDialerActivity;Ljava/util/ArrayList;)V

    goto/16 :goto_2

    .line 2897
    :cond_3d
    sget v41, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    move/from16 v0, v41

    and-int/lit16 v0, v0, 0x2000

    move/from16 v41, v0

    if-nez v41, :cond_6

    .line 2898
    sget v41, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    move/from16 v0, v41

    and-int/lit16 v0, v0, 0x4000

    move/from16 v41, v0

    if-nez v41, :cond_6

    .line 2900
    sget v41, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    const/high16 v42, 0x100000

    and-int v41, v41, v42

    if-eqz v41, :cond_41

    .line 2901
    new-instance v24, Lorg/json/JSONArray;

    invoke-direct/range {v24 .. v24}, Lorg/json/JSONArray;-><init>()V

    .line 2902
    .restart local v24    # "jsonArray":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    move-object/from16 v41, v0

    const-string v43, "cloud_phone_2_useid"

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/util/PreferenceUtil;->getCloudContact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/util/HashMap;

    move-object/from16 v0, v42

    move-object/from16 v1, v41

    invoke-static {v0, v1}, Lcom/lzx/iteam/CloudDialerActivity;->access$37(Lcom/lzx/iteam/CloudDialerActivity;Ljava/util/HashMap;)V

    .line 2903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mUsers:Ljava/util/HashMap;
    invoke-static/range {v41 .. v41}, Lcom/lzx/iteam/CloudDialerActivity;->access$38(Lcom/lzx/iteam/CloudDialerActivity;)Ljava/util/HashMap;

    move-result-object v41

    if-nez v41, :cond_3e

    .line 2904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    new-instance v42, Ljava/util/HashMap;

    invoke-direct/range {v42 .. v42}, Ljava/util/HashMap;-><init>()V

    invoke-static/range {v41 .. v42}, Lcom/lzx/iteam/CloudDialerActivity;->access$37(Lcom/lzx/iteam/CloudDialerActivity;Ljava/util/HashMap;)V

    .line 2906
    :cond_3e
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;
    invoke-static/range {v41 .. v41}, Lcom/lzx/iteam/CloudDialerActivity;->access$23(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->getSelectedContacts()Ljava/util/ArrayList;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v16

    move/from16 v1, v41

    if-lt v0, v1, :cond_3f

    .line 2924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->chatGroupId:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_40

    .line 2925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v24

    # invokes: Lcom/lzx/iteam/CloudDialerActivity;->addChatGroupContactList(Lorg/json/JSONArray;)V
    invoke-static {v0, v1}, Lcom/lzx/iteam/CloudDialerActivity;->access$24(Lcom/lzx/iteam/CloudDialerActivity;Lorg/json/JSONArray;)V

    .line 2926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONArray;->length()I

    move-result v43

    add-int/lit8 v43, v43, 0x1

    invoke-static/range {v43 .. v43}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/lzx/iteam/CloudDialerActivity;->access$25(Lcom/lzx/iteam/CloudDialerActivity;Ljava/lang/String;)V

    .line 2930
    :goto_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    const/16 v42, 0x1

    const/16 v43, 0x1

    invoke-virtual/range {v41 .. v43}, Lcom/lzx/iteam/CloudDialerActivity;->quitBatchOperation(ZZ)V

    goto/16 :goto_2

    .line 2907
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;
    invoke-static/range {v41 .. v41}, Lcom/lzx/iteam/CloudDialerActivity;->access$23(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->getSelectedContacts()Ljava/util/ArrayList;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/lzx/iteam/bean/ChatContact;

    .line 2909
    :try_start_8
    new-instance v27, Lorg/json/JSONObject;

    invoke-direct/range {v27 .. v27}, Lorg/json/JSONObject;-><init>()V

    .line 2911
    .restart local v27    # "jsonObject":Lorg/json/JSONObject;
    const-string v41, "user_name"

    const-string v42, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2912
    const-string v41, "user_image"

    const-string v42, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2913
    const-string v41, "contact_id"

    const/16 v42, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2917
    const-string v41, "user_id"

    const-string v42, "0"

    move-object/from16 v0, v27

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2919
    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 2906
    .end local v27    # "jsonObject":Lorg/json/JSONObject;
    :goto_1c
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1a

    .line 2920
    :catch_7
    move-exception v12

    .line 2921
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1c

    .line 2928
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v24

    # invokes: Lcom/lzx/iteam/CloudDialerActivity;->addMemberToChatGroup(Lorg/json/JSONArray;)V
    invoke-static {v0, v1}, Lcom/lzx/iteam/CloudDialerActivity;->access$26(Lcom/lzx/iteam/CloudDialerActivity;Lorg/json/JSONArray;)V

    goto :goto_1b

    .line 2931
    .end local v16    # "i":I
    .end local v24    # "jsonArray":Lorg/json/JSONArray;
    :cond_41
    sget v41, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    const/high16 v42, 0x4000000

    and-int v41, v41, v42

    if-eqz v41, :cond_6

    .line 2932
    new-instance v24, Lorg/json/JSONArray;

    invoke-direct/range {v24 .. v24}, Lorg/json/JSONArray;-><init>()V

    .line 2933
    .restart local v24    # "jsonArray":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    move-object/from16 v41, v0

    const-string v43, "cloud_phone_2_useid"

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/util/PreferenceUtil;->getCloudContact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/util/HashMap;

    move-object/from16 v0, v42

    move-object/from16 v1, v41

    invoke-static {v0, v1}, Lcom/lzx/iteam/CloudDialerActivity;->access$37(Lcom/lzx/iteam/CloudDialerActivity;Ljava/util/HashMap;)V

    .line 2934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mUsers:Ljava/util/HashMap;
    invoke-static/range {v41 .. v41}, Lcom/lzx/iteam/CloudDialerActivity;->access$38(Lcom/lzx/iteam/CloudDialerActivity;)Ljava/util/HashMap;

    move-result-object v41

    if-nez v41, :cond_42

    .line 2935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    new-instance v42, Ljava/util/HashMap;

    invoke-direct/range {v42 .. v42}, Ljava/util/HashMap;-><init>()V

    invoke-static/range {v41 .. v42}, Lcom/lzx/iteam/CloudDialerActivity;->access$37(Lcom/lzx/iteam/CloudDialerActivity;Ljava/util/HashMap;)V

    .line 2937
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->eventReceiver:Ljava/lang/String;

    move-object/from16 v41, v0

    if-eqz v41, :cond_43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->eventReceiver:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->length()I

    move-result v41

    if-lez v41, :cond_43

    .line 2939
    :try_start_9
    new-instance v26, Lorg/json/JSONArray;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->eventReceiver:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 2940
    .restart local v26    # "jsonArray1":Lorg/json/JSONArray;
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_1d
    invoke-virtual/range {v26 .. v26}, Lorg/json/JSONArray;->length()I
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_8

    move-result v41

    move/from16 v0, v16

    move/from16 v1, v41

    if-lt v0, v1, :cond_44

    .line 2948
    .end local v16    # "i":I
    .end local v26    # "jsonArray1":Lorg/json/JSONArray;
    :cond_43
    :goto_1e
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;
    invoke-static/range {v41 .. v41}, Lcom/lzx/iteam/CloudDialerActivity;->access$23(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->getSelectedContacts()Ljava/util/ArrayList;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v16

    move/from16 v1, v41

    if-lt v0, v1, :cond_45

    .line 2974
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 2975
    .restart local v17    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->eventId:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_4a

    .line 2976
    const-string v42, "1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/lzx/iteam/CloudDialerActivity;->getApplication()Landroid/app/Application;

    move-result-object v41

    check-cast v41, Lcom/lzx/iteam/DialerApp;

    invoke-virtual/range {v41 .. v41}, Lcom/lzx/iteam/DialerApp;->getmEventToWhere()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v42

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_49

    .line 2977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    const-class v42, Lcom/lzx/iteam/CreateNewEventActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2994
    :goto_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mEventData:Lcom/lzx/iteam/bean/EventListData;
    invoke-static/range {v41 .. v41}, Lcom/lzx/iteam/CloudDialerActivity;->access$27(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/bean/EventListData;

    move-result-object v41

    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Lcom/lzx/iteam/bean/EventListData;->setReceiver(Ljava/lang/String;)V

    .line 2995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mBundle:Landroid/os/Bundle;
    invoke-static/range {v41 .. v41}, Lcom/lzx/iteam/CloudDialerActivity;->access$28(Lcom/lzx/iteam/CloudDialerActivity;)Landroid/os/Bundle;

    move-result-object v41

    const-string v42, "event_bundle"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v43, v0

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mEventData:Lcom/lzx/iteam/bean/EventListData;
    invoke-static/range {v43 .. v43}, Lcom/lzx/iteam/CloudDialerActivity;->access$27(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/bean/EventListData;

    move-result-object v43

    invoke-virtual/range {v41 .. v43}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2996
    const-string v41, "event_msg"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v42, v0

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mBundle:Landroid/os/Bundle;
    invoke-static/range {v42 .. v42}, Lcom/lzx/iteam/CloudDialerActivity;->access$28(Lcom/lzx/iteam/CloudDialerActivity;)Landroid/os/Bundle;

    move-result-object v42

    move-object/from16 v0, v17

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2998
    const/high16 v41, 0x4000000

    move-object/from16 v0, v17

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/CloudDialerActivity;->startActivity(Landroid/content/Intent;)V

    .line 3000
    const/16 v41, 0x0

    sput v41, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    goto/16 :goto_2

    .line 2941
    .end local v17    # "intent":Landroid/content/Intent;
    .restart local v26    # "jsonArray1":Lorg/json/JSONArray;
    :cond_44
    :try_start_a
    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v27

    .line 2942
    .restart local v27    # "jsonObject":Lorg/json/JSONObject;
    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_8

    .line 2940
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1d

    .line 2944
    .end local v16    # "i":I
    .end local v26    # "jsonArray1":Lorg/json/JSONArray;
    .end local v27    # "jsonObject":Lorg/json/JSONObject;
    :catch_8
    move-exception v12

    .line 2945
    .local v12, "e":Lorg/json/JSONException;
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1e

    .line 2949
    .end local v12    # "e":Lorg/json/JSONException;
    .restart local v16    # "i":I
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;
    invoke-static/range {v41 .. v41}, Lcom/lzx/iteam/CloudDialerActivity;->access$23(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->getSelectedContacts()Ljava/util/ArrayList;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lzx/iteam/bean/ChatContact;

    .line 2951
    .restart local v7    # "chatContact":Lcom/lzx/iteam/bean/ChatContact;
    :try_start_b
    new-instance v27, Lorg/json/JSONObject;

    invoke-direct/range {v27 .. v27}, Lorg/json/JSONObject;-><init>()V

    .line 2953
    .restart local v27    # "jsonObject":Lorg/json/JSONObject;
    const-string v41, "user_name"

    invoke-virtual {v7}, Lcom/lzx/iteam/bean/ChatContact;->getUserName()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v27

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2954
    const-string v41, "user_image"

    const-string v42, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2958
    const-string v41, "user_id"

    const-string v42, "0"

    move-object/from16 v0, v27

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2960
    const/16 v19, 0x0

    .line 2961
    .restart local v19    # "isSame":Z
    const/16 v23, 0x0

    .restart local v23    # "j":I
    :goto_21
    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONArray;->length()I

    move-result v41

    move/from16 v0, v23

    move/from16 v1, v41

    if-lt v0, v1, :cond_47

    .line 2967
    :goto_22
    if-nez v19, :cond_46

    .line 2968
    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2948
    .end local v19    # "isSame":Z
    .end local v23    # "j":I
    .end local v27    # "jsonObject":Lorg/json/JSONObject;
    :cond_46
    :goto_23
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1f

    .line 2962
    .restart local v19    # "isSame":Z
    .restart local v23    # "j":I
    .restart local v27    # "jsonObject":Lorg/json/JSONObject;
    :cond_47
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v41

    const-string v42, "user_id"

    invoke-virtual/range {v41 .. v42}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    const-string v42, "user_id"

    move-object/from16 v0, v27

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    move-result v41

    if-eqz v41, :cond_48

    .line 2963
    const/16 v19, 0x1

    .line 2964
    goto :goto_22

    .line 2961
    :cond_48
    add-int/lit8 v23, v23, 0x1

    goto :goto_21

    .line 2970
    .end local v19    # "isSame":Z
    .end local v23    # "j":I
    .end local v27    # "jsonObject":Lorg/json/JSONObject;
    :catch_9
    move-exception v12

    .line 2971
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_23

    .line 2979
    .end local v7    # "chatContact":Lcom/lzx/iteam/bean/ChatContact;
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v17    # "intent":Landroid/content/Intent;
    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    const-class v42, Lcom/lzx/iteam/CustomEventActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_20

    .line 3002
    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v42

    # invokes: Lcom/lzx/iteam/CloudDialerActivity;->addReceiverToEvent(Ljava/lang/String;)V
    invoke-static/range {v41 .. v42}, Lcom/lzx/iteam/CloudDialerActivity;->access$29(Lcom/lzx/iteam/CloudDialerActivity;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3018
    .end local v16    # "i":I
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v24    # "jsonArray":Lorg/json/JSONArray;
    .end local v35    # "selectedPeople":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Ljava/lang/String;

    .line 3020
    .local v37, "text":Ljava/lang/String;
    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v41

    const/16 v42, 0x3

    move/from16 v0, v41

    move/from16 v1, v42

    if-le v0, v1, :cond_0

    invoke-static/range {v37 .. v37}, Lcom/lzx/iteam/util/StringUtil;->isNumeric(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_0

    .line 3022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcom/lzx/iteam/util/PhoneNumberArea;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PhoneNumberArea;

    move-result-object v32

    .line 3023
    .local v32, "phoneNumberArea":Lcom/lzx/iteam/util/PhoneNumberArea;
    const/16 v41, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v37

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/util/PhoneNumberArea;->getArea(Ljava/lang/String;Z)Ljava/lang/String;

    goto/16 :goto_0

    .line 2465
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
