.class Lcom/lzx/iteam/CloudDialerActivity$1;
.super Landroid/os/Handler;
.source "CloudDialerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/CloudDialerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/CloudDialerActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/CloudDialerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    .line 212
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/CloudDialerActivity$1;)Lcom/lzx/iteam/CloudDialerActivity;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 215
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 217
    :sswitch_0
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-nez v8, :cond_1

    .line 219
    new-instance v7, Lcom/lzx/iteam/task/UpLoadContactsTask;

    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/lzx/iteam/CloudDialerActivity;->access$0(Lcom/lzx/iteam/CloudDialerActivity;)Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/lzx/iteam/task/UpLoadContactsTask;-><init>(Landroid/content/Context;)V

    .line 220
    .local v7, "upload":Lcom/lzx/iteam/task/UpLoadContactsTask;
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Void;

    invoke-virtual {v7, v8}, Lcom/lzx/iteam/task/UpLoadContactsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 221
    .end local v7    # "upload":Lcom/lzx/iteam/task/UpLoadContactsTask;
    :cond_1
    iget v8, p1, Landroid/os/Message;->arg1:I

    const/16 v9, 0x1f41

    if-ne v8, v9, :cond_2

    .line 222
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    const v9, 0x7f080042

    invoke-virtual {v8, v9}, Lcom/lzx/iteam/CloudDialerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 223
    .local v3, "error":Ljava/lang/String;
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/lzx/iteam/CloudDialerActivity;->access$0(Lcom/lzx/iteam/CloudDialerActivity;)Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v3, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 224
    .end local v3    # "error":Ljava/lang/String;
    :cond_2
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v8, :cond_3

    .line 225
    iget-object v9, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    .line 226
    const/4 v10, 0x1

    .line 225
    invoke-static {v9, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    .line 226
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 228
    :cond_3
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/lzx/iteam/CloudDialerActivity;->access$0(Lcom/lzx/iteam/CloudDialerActivity;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f080044

    .line 229
    const/4 v10, 0x1

    .line 228
    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    .line 229
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 248
    :sswitch_1
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-eqz v8, :cond_4

    iget v8, p1, Landroid/os/Message;->arg1:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_6

    .line 249
    :cond_4
    iget-object v9, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    invoke-static {v9, v8}, Lcom/lzx/iteam/CloudDialerActivity;->access$1(Lcom/lzx/iteam/CloudDialerActivity;Ljava/util/ArrayList;)V

    .line 250
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-boolean v8, v8, Lcom/lzx/iteam/CloudDialerActivity;->mIfBatchOperation:Z

    if-eqz v8, :cond_5

    .line 251
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mShowModleChiceView:Lcom/lzx/iteam/widget/TwiceTextChoiceView;
    invoke-static {v8}, Lcom/lzx/iteam/CloudDialerActivity;->access$2(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/widget/TwiceTextChoiceView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lzx/iteam/widget/TwiceTextChoiceView;->backToDefaultState()V

    .line 253
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v8, v8, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v8}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->changeToAllContent()V

    .line 256
    :cond_5
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v9, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mContactList:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/lzx/iteam/CloudDialerActivity;->access$3(Lcom/lzx/iteam/CloudDialerActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/lzx/iteam/CloudDialerActivity;->updateCloudContactList(Ljava/util/ArrayList;)V

    .line 258
    iget v8, p1, Landroid/os/Message;->arg1:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mContactList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/lzx/iteam/CloudDialerActivity;->access$3(Lcom/lzx/iteam/CloudDialerActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    sget v8, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    if-nez v8, :cond_0

    .line 259
    new-instance v8, Lcom/lzx/iteam/CloudDialerActivity$1$1;

    invoke-direct {v8, p0}, Lcom/lzx/iteam/CloudDialerActivity$1$1;-><init>(Lcom/lzx/iteam/CloudDialerActivity$1;)V

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Void;

    .line 281
    invoke-virtual {v8, v9}, Lcom/lzx/iteam/CloudDialerActivity$1$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 302
    :cond_6
    iget v8, p1, Landroid/os/Message;->arg1:I

    const/16 v9, 0x1f41

    if-ne v8, v9, :cond_7

    .line 303
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    const v9, 0x7f080042

    .line 304
    const/4 v10, 0x1

    .line 303
    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    .line 304
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 305
    :cond_7
    iget v8, p1, Landroid/os/Message;->arg1:I

    const/16 v9, 0x3ea

    if-eq v8, v9, :cond_8

    iget v8, p1, Landroid/os/Message;->arg1:I

    const/16 v9, 0x3eb

    if-eq v8, v9, :cond_8

    iget v8, p1, Landroid/os/Message;->arg1:I

    const/16 v9, 0x3ed

    if-ne v8, v9, :cond_9

    .line 306
    :cond_8
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;
    invoke-static {v8}, Lcom/lzx/iteam/CloudDialerActivity;->access$6(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v9

    const-string v10, "\u63d0\u793a"

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v11, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/lzx/iteam/CloudDialerActivity;->access$0(Lcom/lzx/iteam/CloudDialerActivity;)Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f08002c

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v8, v11}, Lcom/lzx/iteam/util/AllDialogUtil;->titleMsgBtnStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 307
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;
    invoke-static {v8}, Lcom/lzx/iteam/CloudDialerActivity;->access$6(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v8

    new-instance v9, Lcom/lzx/iteam/CloudDialerActivity$1$2;

    invoke-direct {v9, p0}, Lcom/lzx/iteam/CloudDialerActivity$1$2;-><init>(Lcom/lzx/iteam/CloudDialerActivity$1;)V

    invoke-virtual {v8, v9}, Lcom/lzx/iteam/util/AllDialogUtil;->setOnDialogListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;)V

    goto/16 :goto_0

    .line 331
    :cond_9
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/lzx/iteam/CloudDialerActivity;->access$0(Lcom/lzx/iteam/CloudDialerActivity;)Landroid/content/Context;

    move-result-object v9

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    .line 332
    const/4 v10, 0x1

    .line 331
    invoke-static {v9, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    .line 332
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 338
    :sswitch_2
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v8, v8, Lcom/lzx/iteam/CloudDialerActivity;->mListStatus:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    sget-object v9, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CLOUD_CONTACT:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    if-ne v8, v9, :cond_0

    .line 342
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mShowModleChiceView:Lcom/lzx/iteam/widget/TwiceTextChoiceView;
    invoke-static {v8}, Lcom/lzx/iteam/CloudDialerActivity;->access$2(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/widget/TwiceTextChoiceView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lzx/iteam/widget/TwiceTextChoiceView;->backToDefaultState()V

    .line 343
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-boolean v8, v8, Lcom/lzx/iteam/CloudDialerActivity;->mIfBatchOperation:Z

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v8, v8, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    iget-boolean v8, v8, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mIsShowSelected:Z

    if-eqz v8, :cond_a

    .line 344
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v8, v8, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v8}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->changeToAllContent()V

    .line 346
    :cond_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    .line 347
    .local v1, "contactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/CloudContact;>;"
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-nez v8, :cond_c

    .line 348
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_b

    .line 349
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget v9, v8, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    .line 351
    :cond_b
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v8, v1}, Lcom/lzx/iteam/CloudDialerActivity;->appendCloudContactList(Ljava/util/ArrayList;)V

    .line 353
    :cond_c
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/lzx/iteam/CloudDialerActivity;->access$7(Lcom/lzx/iteam/CloudDialerActivity;Z)V

    goto/16 :goto_0

    .line 356
    .end local v1    # "contactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/CloudContact;>;"
    :sswitch_3
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-nez v8, :cond_d

    .line 357
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 358
    .local v5, "message":Landroid/os/Message;
    const/4 v8, 0x2

    iput v8, v5, Landroid/os/Message;->what:I

    .line 359
    iget v8, p1, Landroid/os/Message;->arg1:I

    iput v8, v5, Landroid/os/Message;->arg1:I

    .line 360
    iget v8, p1, Landroid/os/Message;->arg2:I

    iput v8, v5, Landroid/os/Message;->arg2:I

    .line 361
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v8, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 362
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v8, v8, Lcom/lzx/iteam/CloudDialerActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v8, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 364
    .end local v5    # "message":Landroid/os/Message;
    :cond_d
    iget v8, p1, Landroid/os/Message;->arg1:I

    const/16 v9, 0x1f41

    if-ne v8, v9, :cond_e

    .line 365
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    const v9, 0x7f080042

    .line 366
    const/4 v10, 0x1

    .line 365
    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    .line 366
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 368
    :cond_e
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mProgressWaitDlg:Landroid/app/ProgressDialog;
    invoke-static {v8}, Lcom/lzx/iteam/CloudDialerActivity;->access$8(Lcom/lzx/iteam/CloudDialerActivity;)Landroid/app/ProgressDialog;

    move-result-object v8

    if-eqz v8, :cond_f

    .line 369
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mProgressWaitDlg:Landroid/app/ProgressDialog;
    invoke-static {v8}, Lcom/lzx/iteam/CloudDialerActivity;->access$8(Lcom/lzx/iteam/CloudDialerActivity;)Landroid/app/ProgressDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ProgressDialog;->dismiss()V

    .line 371
    :cond_f
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;
    invoke-static {v8}, Lcom/lzx/iteam/CloudDialerActivity;->access$6(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v9

    const-string v10, "\u63d0\u793a"

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v11, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    const v12, 0x7f08002c

    invoke-virtual {v11, v12}, Lcom/lzx/iteam/CloudDialerActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v8, v11}, Lcom/lzx/iteam/util/AllDialogUtil;->titleMsgBtnStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 372
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;
    invoke-static {v8}, Lcom/lzx/iteam/CloudDialerActivity;->access$6(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v8

    new-instance v9, Lcom/lzx/iteam/CloudDialerActivity$1$3;

    invoke-direct {v9, p0}, Lcom/lzx/iteam/CloudDialerActivity$1$3;-><init>(Lcom/lzx/iteam/CloudDialerActivity$1;)V

    invoke-virtual {v8, v9}, Lcom/lzx/iteam/util/AllDialogUtil;->setOnDialogListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;)V

    goto/16 :goto_0

    .line 389
    :sswitch_4
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-nez v8, :cond_10

    .line 390
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lzx/iteam/bean/ChatGroup;

    .line 391
    .local v0, "chatGroup":Lcom/lzx/iteam/bean/ChatGroup;
    const-string v8, "0"

    iput-object v8, v0, Lcom/lzx/iteam/bean/ChatGroup;->type:Ljava/lang/String;

    .line 392
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;
    invoke-static {v8}, Lcom/lzx/iteam/CloudDialerActivity;->access$4(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/provider/CloudDBOperation;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/lzx/iteam/provider/CloudDBOperation;->insertChatGroup(Lcom/lzx/iteam/bean/ChatGroup;)J

    .line 393
    new-instance v4, Landroid/content/Intent;

    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    const-class v9, Lcom/lzx/iteam/ChatActivity;

    invoke-direct {v4, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 394
    .local v4, "intent":Landroid/content/Intent;
    const-string v8, "chat_group_name"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ChatGroup;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    const-string v8, "chat_group_id"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ChatGroup;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    const-string v8, "chat_count"

    iget-object v9, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mMemberCount:Ljava/lang/String;
    invoke-static {v9}, Lcom/lzx/iteam/CloudDialerActivity;->access$9(Lcom/lzx/iteam/CloudDialerActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    const-string v8, "userType"

    const-string v9, "2"

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    const-string v8, "creatorName"

    const-string v9, ""

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    const-string v8, "isSingle"

    const-string v9, "0"

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v8, v4}, Lcom/lzx/iteam/CloudDialerActivity;->startActivity(Landroid/content/Intent;)V

    .line 401
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v8}, Lcom/lzx/iteam/CloudDialerActivity;->finish()V

    goto/16 :goto_0

    .line 403
    .end local v0    # "chatGroup":Lcom/lzx/iteam/bean/ChatGroup;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_10
    iget v8, p1, Landroid/os/Message;->arg1:I

    const/16 v9, 0x1f41

    if-ne v8, v9, :cond_11

    .line 404
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    const v9, 0x7f080042

    .line 405
    const/4 v10, 0x1

    .line 404
    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    .line 405
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 407
    :cond_11
    iget-object v9, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v9, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 413
    :sswitch_5
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-nez v8, :cond_0

    .line 415
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    .line 416
    .local v2, "contactList2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/CloudContact;>;"
    if-eqz v2, :cond_12

    .line 417
    const-string v8, "size"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_12
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v8, v2}, Lcom/lzx/iteam/CloudDialerActivity;->updateCloudContactList(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 427
    .end local v2    # "contactList2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/CloudContact;>;"
    :sswitch_6
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-nez v8, :cond_17

    .line 428
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mDialog:Landroid/app/Dialog;
    invoke-static {v8}, Lcom/lzx/iteam/CloudDialerActivity;->access$10(Lcom/lzx/iteam/CloudDialerActivity;)Landroid/app/Dialog;

    move-result-object v8

    if-eqz v8, :cond_13

    .line 429
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mDialog:Landroid/app/Dialog;
    invoke-static {v8}, Lcom/lzx/iteam/CloudDialerActivity;->access$10(Lcom/lzx/iteam/CloudDialerActivity;)Landroid/app/Dialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Dialog;->dismiss()V

    .line 431
    :cond_13
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/lzx/iteam/CloudDialerActivity;->access$11(Lcom/lzx/iteam/CloudDialerActivity;Z)V

    .line 433
    const/4 v8, 0x0

    sput v8, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    .line 434
    sget v8, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    if-nez v8, :cond_15

    .line 437
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v8, v8, Lcom/lzx/iteam/CloudDialerActivity;->mTreeFrag:Lcom/lzx/iteam/TreeFrag;

    if-eqz v8, :cond_14

    .line 438
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v8, v8, Lcom/lzx/iteam/CloudDialerActivity;->mTreeFrag:Lcom/lzx/iteam/TreeFrag;

    iget-object v9, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v9, v9, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v9}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->getSelectedContacts()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/lzx/iteam/TreeFrag;->setContactNum(Ljava/util/ArrayList;)V

    .line 443
    :cond_14
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/lzx/iteam/CloudDialerActivity;->quitBatchOperation(ZZ)V

    .line 444
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v8}, Lcom/lzx/iteam/CloudDialerActivity;->freshContactsByStatus()V

    .line 445
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v8, v8, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    if-eqz v8, :cond_15

    .line 446
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v8, v8, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v8}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->clearSelected()V

    .line 447
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v8, v8, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->setIfCheckBoxShow(Z)V

    .line 451
    :cond_15
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/lzx/iteam/CloudDialerActivity;->showDepartment:Z

    .line 453
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-boolean v8, v8, Lcom/lzx/iteam/CloudDialerActivity;->showDepartment:Z

    if-nez v8, :cond_16

    .line 454
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v8, v8, Lcom/lzx/iteam/CloudDialerActivity;->ivChange:Landroid/widget/ImageView;

    const v9, 0x7f02020b

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 459
    :goto_1
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    sget-object v9, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CLOUD_CONTACT:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    iput-object v9, v8, Lcom/lzx/iteam/CloudDialerActivity;->mListStatus:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    .line 479
    sget-object v8, Lcom/lzx/iteam/CloudDialerActivity;->instance:Lcom/lzx/iteam/CloudDialerActivity;

    # invokes: Lcom/lzx/iteam/CloudDialerActivity;->initIntentData()V
    invoke-static {v8}, Lcom/lzx/iteam/CloudDialerActivity;->access$12(Lcom/lzx/iteam/CloudDialerActivity;)V

    .line 481
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v8, v8, Lcom/lzx/iteam/CloudDialerActivity;->mTreeFrag:Lcom/lzx/iteam/TreeFrag;

    invoke-virtual {v8}, Lcom/lzx/iteam/TreeFrag;->clearcontactlist()V

    .line 482
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-boolean v11, v11, Lcom/lzx/iteam/CloudDialerActivity;->showDepartment:Z

    # invokes: Lcom/lzx/iteam/CloudDialerActivity;->keyBoardVert(ZLjava/lang/String;Z)V
    invoke-static {v8, v9, v10, v11}, Lcom/lzx/iteam/CloudDialerActivity;->access$13(Lcom/lzx/iteam/CloudDialerActivity;ZLjava/lang/String;Z)V

    goto/16 :goto_0

    .line 456
    :cond_16
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v8, v8, Lcom/lzx/iteam/CloudDialerActivity;->ivChange:Landroid/widget/ImageView;

    const v9, 0x7f02020a

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 486
    :cond_17
    iget v8, p1, Landroid/os/Message;->arg1:I

    const/16 v9, 0x1f41

    if-ne v8, v9, :cond_18

    .line 487
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    const v9, 0x7f080042

    .line 488
    const/4 v10, 0x1

    .line 487
    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    .line 488
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 490
    :cond_18
    iget-object v9, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v9, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 495
    :sswitch_7
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-nez v8, :cond_19

    .line 496
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v8}, Lcom/lzx/iteam/CloudDialerActivity;->finish()V

    goto/16 :goto_0

    .line 498
    :cond_19
    iget v8, p1, Landroid/os/Message;->arg1:I

    const/16 v9, 0x1f41

    if-ne v8, v9, :cond_1a

    .line 499
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    const v9, 0x7f080042

    .line 500
    const/4 v10, 0x1

    .line 499
    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    .line 500
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 502
    :cond_1a
    iget-object v9, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v9, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 507
    :sswitch_8
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-nez v8, :cond_1b

    .line 508
    new-instance v4, Landroid/content/Intent;

    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    const-class v9, Lcom/lzx/iteam/ManageGroupActivity;

    invoke-direct {v4, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 509
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string v8, "group_name"

    iget-object v9, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v9, v9, Lcom/lzx/iteam/CloudDialerActivity;->groupName:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 510
    const-string v8, "group_id"

    iget-object v9, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v9, v9, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    const-string v8, "contact_id"

    iget-object v9, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v9, v9, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 512
    const-string v8, "create_type"

    iget-object v9, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v9, v9, Lcom/lzx/iteam/CloudDialerActivity;->userType:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 513
    const-string v8, "where"

    const-string v9, "delete_member"

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 514
    const/high16 v8, 0x4000000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 515
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v8, v4}, Lcom/lzx/iteam/CloudDialerActivity;->startActivity(Landroid/content/Intent;)V

    .line 516
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/lzx/iteam/CloudDialerActivity;->access$0(Lcom/lzx/iteam/CloudDialerActivity;)Landroid/content/Context;

    move-result-object v8

    const-string v9, "\u5220\u9664\u6210\u529f"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 518
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_1b
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/lzx/iteam/CloudDialerActivity;->access$0(Lcom/lzx/iteam/CloudDialerActivity;)Landroid/content/Context;

    move-result-object v8

    const-string v9, "\u5220\u9664\u5931\u8d25"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 519
    iget v8, p1, Landroid/os/Message;->arg1:I

    const/16 v9, 0x1f41

    if-ne v8, v9, :cond_1c

    .line 520
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    const v9, 0x7f080042

    .line 521
    const/4 v10, 0x1

    .line 520
    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    .line 521
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 523
    :cond_1c
    iget-object v9, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v9, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 528
    :sswitch_9
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-nez v8, :cond_1e

    .line 529
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lzx/iteam/bean/ChatGroup;

    .line 530
    .restart local v0    # "chatGroup":Lcom/lzx/iteam/bean/ChatGroup;
    const-string v8, "1"

    iget-object v9, v0, Lcom/lzx/iteam/bean/ChatGroup;->isNewCreate:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 531
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v8, v8, Lcom/lzx/iteam/CloudDialerActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v9, "contact_name_card"

    invoke-virtual {v8, v9}, Lcom/lzx/iteam/util/PreferenceUtil;->getCloudContact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 532
    .local v6, "nameCard":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, v0, Lcom/lzx/iteam/bean/ChatGroup;->lastMsgName:Ljava/lang/String;

    .line 533
    const-string v8, "\u53d1\u8d77\u4e86\u804a\u5929"

    iput-object v8, v0, Lcom/lzx/iteam/bean/ChatGroup;->lastMsgContent:Ljava/lang/String;

    .line 534
    const-string v8, "0"

    iput-object v8, v0, Lcom/lzx/iteam/bean/ChatGroup;->type:Ljava/lang/String;

    .line 535
    const-string v8, "2"

    iput-object v8, v0, Lcom/lzx/iteam/bean/ChatGroup;->userType:Ljava/lang/String;

    .line 536
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;
    invoke-static {v8}, Lcom/lzx/iteam/CloudDialerActivity;->access$4(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/provider/CloudDBOperation;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/lzx/iteam/provider/CloudDBOperation;->insertChatGroup(Lcom/lzx/iteam/bean/ChatGroup;)J

    .line 537
    new-instance v4, Landroid/content/Intent;

    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    const-class v9, Lcom/lzx/iteam/ChatActivity;

    invoke-direct {v4, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 538
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string v8, "chat_group_name"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ChatGroup;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 539
    const-string v8, "chat_group_id"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ChatGroup;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 540
    const-string v8, "userType"

    const-string v9, "2"

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 541
    const-string v8, "creatorName"

    const-string v9, ""

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 542
    const-string v8, "isSingle"

    const-string v9, "1"

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 543
    const-string v8, "chat_count"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ChatGroup;->getMemberCount()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 544
    const/high16 v8, 0x4000000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 545
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v8, v4}, Lcom/lzx/iteam/CloudDialerActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 546
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v6    # "nameCard":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1d
    const-string v8, "0"

    iget-object v9, v0, Lcom/lzx/iteam/bean/ChatGroup;->isNewCreate:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 547
    new-instance v4, Landroid/content/Intent;

    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    const-class v9, Lcom/lzx/iteam/ChatGroupDetailActivity;

    invoke-direct {v4, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 548
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string v8, "chat_group_name"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ChatGroup;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 549
    const-string v8, "chat_group_id"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ChatGroup;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 550
    const-string v8, "userType"

    const-string v9, "2"

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 551
    const-string v8, "creatorName"

    const-string v9, ""

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 552
    const-string v8, "isSingle"

    const-string v9, "0"

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 553
    const/high16 v8, 0x4000000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 554
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v8, v4}, Lcom/lzx/iteam/CloudDialerActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 558
    .end local v0    # "chatGroup":Lcom/lzx/iteam/bean/ChatGroup;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_1e
    iget v8, p1, Landroid/os/Message;->arg1:I

    const/16 v9, 0x1f41

    if-ne v8, v9, :cond_1f

    .line 559
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    const v9, 0x7f080042

    .line 560
    const/4 v10, 0x1

    .line 559
    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    .line 560
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 562
    :cond_1f
    iget-object v9, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v9, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 567
    :sswitch_a
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-nez v8, :cond_0

    .line 568
    new-instance v4, Landroid/content/Intent;

    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    const-class v9, Lcom/lzx/iteam/EventReceiveMemberActivity;

    invoke-direct {v4, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 569
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string v8, "event_id"

    iget-object v9, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v9, v9, Lcom/lzx/iteam/CloudDialerActivity;->eventId:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 570
    const-string v8, "event_type"

    iget-object v9, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v9, v9, Lcom/lzx/iteam/CloudDialerActivity;->eventTypeId:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 571
    const/high16 v8, 0x4000000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 572
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v8, v4}, Lcom/lzx/iteam/CloudDialerActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 576
    .end local v4    # "intent":Landroid/content/Intent;
    :sswitch_b
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-nez v8, :cond_21

    .line 577
    new-instance v4, Landroid/content/Intent;

    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    const-class v9, Lcom/lzx/iteam/ScheduleManagerActivity;

    invoke-direct {v4, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 578
    .restart local v4    # "intent":Landroid/content/Intent;
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 579
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v8, v8, Lcom/lzx/iteam/CloudDialerActivity;->mCloudGroup:Lcom/lzx/iteam/bean/CloudGroup;

    if-eqz v8, :cond_20

    .line 580
    const-string v8, "groupData"

    iget-object v9, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v9, v9, Lcom/lzx/iteam/CloudDialerActivity;->mCloudGroup:Lcom/lzx/iteam/bean/CloudGroup;

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 582
    :cond_20
    const/high16 v8, 0x4000000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 583
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v8, v4}, Lcom/lzx/iteam/CloudDialerActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 586
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_21
    iget v8, p1, Landroid/os/Message;->arg1:I

    const/16 v9, 0x1f41

    if-ne v8, v9, :cond_22

    .line 587
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    const v9, 0x7f080042

    .line 588
    const/4 v10, 0x1

    .line 587
    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    .line 588
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 590
    :cond_22
    iget-object v9, p0, Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v9, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 215
    nop

    :sswitch_data_0
    .sparse-switch
        0x6fd -> :sswitch_0
        0xbb8 -> :sswitch_1
        0xbb9 -> :sswitch_5
        0xbba -> :sswitch_3
        0xbbb -> :sswitch_2
        0xbbd -> :sswitch_4
        0xbbe -> :sswitch_6
        0xbbf -> :sswitch_7
        0xbc0 -> :sswitch_8
        0xbc1 -> :sswitch_a
        0xbc2 -> :sswitch_9
        0xbc3 -> :sswitch_b
    .end sparse-switch
.end method
