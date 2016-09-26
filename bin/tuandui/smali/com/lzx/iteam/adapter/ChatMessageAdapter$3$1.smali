.class Lcom/lzx/iteam/adapter/ChatMessageAdapter$3$1;
.super Ljava/lang/Object;
.source "ChatMessageAdapter.java"

# interfaces
.implements Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/adapter/ChatMessageAdapter$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lzx/iteam/adapter/ChatMessageAdapter$3;

.field private final synthetic val$chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/adapter/ChatMessageAdapter$3;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$3$1;->this$1:Lcom/lzx/iteam/adapter/ChatMessageAdapter$3;

    iput-object p2, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$3$1;->val$chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 416
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 417
    return-void
.end method

.method public onConfirmClick(Landroid/app/Dialog;)V
    .locals 10
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 391
    iget-object v3, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$3$1;->this$1:Lcom/lzx/iteam/adapter/ChatMessageAdapter$3;

    # getter for: Lcom/lzx/iteam/adapter/ChatMessageAdapter$3;->this$0:Lcom/lzx/iteam/adapter/ChatMessageAdapter;
    invoke-static {v3}, Lcom/lzx/iteam/adapter/ChatMessageAdapter$3;->access$0(Lcom/lzx/iteam/adapter/ChatMessageAdapter$3;)Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    move-result-object v3

    # getter for: Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mMsgDB:Lcom/lzx/iteam/provider/MessageDB;
    invoke-static {v3}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->access$9(Lcom/lzx/iteam/adapter/ChatMessageAdapter;)Lcom/lzx/iteam/provider/MessageDB;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$3$1;->val$chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    invoke-virtual {v4}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getChatGroupID()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$3$1;->val$chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    invoke-virtual {v5}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getMsgID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/lzx/iteam/provider/MessageDB;->deleteOneMsgByGroudID(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v3, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$3$1;->this$1:Lcom/lzx/iteam/adapter/ChatMessageAdapter$3;

    # getter for: Lcom/lzx/iteam/adapter/ChatMessageAdapter$3;->this$0:Lcom/lzx/iteam/adapter/ChatMessageAdapter;
    invoke-static {v3}, Lcom/lzx/iteam/adapter/ChatMessageAdapter$3;->access$0(Lcom/lzx/iteam/adapter/ChatMessageAdapter$3;)Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    move-result-object v3

    # getter for: Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mChatMsgs:Ljava/util/List;
    invoke-static {v3}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->access$10(Lcom/lzx/iteam/adapter/ChatMessageAdapter;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$3$1;->val$chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 393
    iget-object v3, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$3$1;->this$1:Lcom/lzx/iteam/adapter/ChatMessageAdapter$3;

    # getter for: Lcom/lzx/iteam/adapter/ChatMessageAdapter$3;->this$0:Lcom/lzx/iteam/adapter/ChatMessageAdapter;
    invoke-static {v3}, Lcom/lzx/iteam/adapter/ChatMessageAdapter$3;->access$0(Lcom/lzx/iteam/adapter/ChatMessageAdapter$3;)Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    move-result-object v3

    # getter for: Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->access$7(Lcom/lzx/iteam/adapter/ChatMessageAdapter;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/ChatActivity;

    iget-object v4, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$3$1;->this$1:Lcom/lzx/iteam/adapter/ChatMessageAdapter$3;

    # getter for: Lcom/lzx/iteam/adapter/ChatMessageAdapter$3;->this$0:Lcom/lzx/iteam/adapter/ChatMessageAdapter;
    invoke-static {v4}, Lcom/lzx/iteam/adapter/ChatMessageAdapter$3;->access$0(Lcom/lzx/iteam/adapter/ChatMessageAdapter$3;)Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    move-result-object v4

    # getter for: Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mChatMsgs:Ljava/util/List;
    invoke-static {v4}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->access$10(Lcom/lzx/iteam/adapter/ChatMessageAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lzx/iteam/ChatActivity;->setDatas(Ljava/util/List;)V

    .line 394
    iget-object v3, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$3$1;->this$1:Lcom/lzx/iteam/adapter/ChatMessageAdapter$3;

    # getter for: Lcom/lzx/iteam/adapter/ChatMessageAdapter$3;->this$0:Lcom/lzx/iteam/adapter/ChatMessageAdapter;
    invoke-static {v3}, Lcom/lzx/iteam/adapter/ChatMessageAdapter$3;->access$0(Lcom/lzx/iteam/adapter/ChatMessageAdapter$3;)Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->notifyDataSetChanged()V

    .line 395
    iget-object v3, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$3$1;->val$chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->setIsSuccess(Z)V

    .line 396
    iget-object v3, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$3$1;->val$chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->setSendTime(Ljava/lang/String;)V

    .line 397
    iget-object v3, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$3$1;->val$chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    invoke-virtual {v3}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getMsgType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 411
    :goto_0
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 412
    return-void

    .line 399
    :pswitch_0
    iget-object v3, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$3$1;->this$1:Lcom/lzx/iteam/adapter/ChatMessageAdapter$3;

    # getter for: Lcom/lzx/iteam/adapter/ChatMessageAdapter$3;->this$0:Lcom/lzx/iteam/adapter/ChatMessageAdapter;
    invoke-static {v3}, Lcom/lzx/iteam/adapter/ChatMessageAdapter$3;->access$0(Lcom/lzx/iteam/adapter/ChatMessageAdapter$3;)Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    move-result-object v3

    # getter for: Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->access$7(Lcom/lzx/iteam/adapter/ChatMessageAdapter;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/ChatActivity;

    iget-object v4, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$3$1;->val$chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    invoke-virtual {v3, v4}, Lcom/lzx/iteam/ChatActivity;->sendTextMessage(Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V

    goto :goto_0

    .line 402
    :pswitch_1
    iget-object v3, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$3$1;->val$chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    invoke-virtual {v3}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getVoiceContent()Ljava/lang/String;

    move-result-object v3

    const-string v4, "tuandui@lzx"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 403
    .local v1, "voice":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v2, v1, v3

    .line 404
    .local v2, "voiceData":Ljava/lang/String;
    iget-object v3, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$3$1;->this$1:Lcom/lzx/iteam/adapter/ChatMessageAdapter$3;

    # getter for: Lcom/lzx/iteam/adapter/ChatMessageAdapter$3;->this$0:Lcom/lzx/iteam/adapter/ChatMessageAdapter;
    invoke-static {v3}, Lcom/lzx/iteam/adapter/ChatMessageAdapter$3;->access$0(Lcom/lzx/iteam/adapter/ChatMessageAdapter$3;)Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    move-result-object v3

    # getter for: Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->access$7(Lcom/lzx/iteam/adapter/ChatMessageAdapter;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/ChatActivity;

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->decoderBase64File(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$3$1;->val$chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    invoke-virtual {v3, v4, v5}, Lcom/lzx/iteam/ChatActivity;->sendSoundIQ(Ljava/lang/String;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V

    goto :goto_0

    .line 407
    .end local v1    # "voice":[Ljava/lang/String;
    .end local v2    # "voiceData":Ljava/lang/String;
    :pswitch_2
    iget-object v3, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$3$1;->val$chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    invoke-virtual {v3}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getImageContent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lzx/iteam/util/StringUtil;->decompressToByteArrayByGzip(Ljava/lang/String;)[B

    move-result-object v0

    .line 408
    .local v0, "image":[B
    iget-object v3, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$3$1;->this$1:Lcom/lzx/iteam/adapter/ChatMessageAdapter$3;

    # getter for: Lcom/lzx/iteam/adapter/ChatMessageAdapter$3;->this$0:Lcom/lzx/iteam/adapter/ChatMessageAdapter;
    invoke-static {v3}, Lcom/lzx/iteam/adapter/ChatMessageAdapter$3;->access$0(Lcom/lzx/iteam/adapter/ChatMessageAdapter$3;)Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    move-result-object v3

    # getter for: Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->access$7(Lcom/lzx/iteam/adapter/ChatMessageAdapter;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/ChatActivity;

    iget-object v4, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$3$1;->val$chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    invoke-virtual {v3, v0, v4}, Lcom/lzx/iteam/ChatActivity;->sendImageIQ([BLcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V

    goto :goto_0

    .line 397
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
