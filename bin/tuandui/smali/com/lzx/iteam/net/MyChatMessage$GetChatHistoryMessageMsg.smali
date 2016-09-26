.class public Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;
.super Lcom/lzx/iteam/net/CcMsgStructure;
.source "MyChatMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/net/MyChatMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetChatHistoryMessageMsg"
.end annotation


# instance fields
.field chatGroupId:Ljava/lang/String;

.field private chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

.field private chatMsgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;",
            ">;"
        }
    .end annotation
.end field

.field private cloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

.field private mmCallback:Landroid/os/Message;

.field senderId:Ljava/lang/String;

.field senderImg:Ljava/lang/String;

.field senderName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Message;Landroid/content/Context;)V
    .locals 1
    .param p1, "callBack"    # Landroid/os/Message;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/lzx/iteam/net/CcMsgStructure;-><init>()V

    .line 229
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->senderName:Ljava/lang/String;

    .line 230
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->senderImg:Ljava/lang/String;

    .line 231
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->chatGroupId:Ljava/lang/String;

    .line 232
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->senderId:Ljava/lang/String;

    .line 235
    iput-object p1, p0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->mmCallback:Landroid/os/Message;

    .line 236
    new-instance v0, Lcom/lzx/iteam/provider/CloudDBOperation;

    invoke-direct {v0, p2}, Lcom/lzx/iteam/provider/CloudDBOperation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->cloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    .line 238
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/Object;)V
    .locals 1
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 321
    iget-object v0, p0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->mmCallback:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->mmCallback:Landroid/os/Message;

    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 323
    iget-object v0, p0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 325
    :cond_0
    return-void
.end method

.method public onReceive(Lorg/json/JSONObject;)V
    .locals 38
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 243
    :try_start_0
    const-string v2, "data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v7, "msgs"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v35

    .line 244
    .local v35, "jsonArray":Lorg/json/JSONArray;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->chatMsgs:Ljava/util/ArrayList;

    .line 245
    const/16 v33, 0x0

    .local v33, "i":I
    :goto_0
    invoke-virtual/range {v35 .. v35}, Lorg/json/JSONArray;->length()I

    move-result v2

    move/from16 v0, v33

    if-lt v0, v2, :cond_2

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->mmCallback:Landroid/os/Message;

    if-eqz v2, :cond_1

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->mmCallback:Landroid/os/Message;

    const/4 v7, 0x0

    iput v7, v2, Landroid/os/Message;->arg1:I

    .line 305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->mmCallback:Landroid/os/Message;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->chatMsgs:Ljava/util/ArrayList;

    iput-object v7, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 306
    const-string v2, "data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v7, "is_none"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->mmCallback:Landroid/os/Message;

    const-string v7, "data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "is_none"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v2, Landroid/os/Message;->arg2:I

    .line 309
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 317
    .end local v33    # "i":I
    .end local v35    # "jsonArray":Lorg/json/JSONArray;
    :cond_1
    :goto_1
    return-void

    .line 246
    .restart local v33    # "i":I
    .restart local v35    # "jsonArray":Lorg/json/JSONArray;
    :cond_2
    move-object/from16 v0, v35

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lorg/json/JSONObject;

    .line 247
    .local v36, "msgObj":Lorg/json/JSONObject;
    const-string v2, "type"

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 248
    .local v3, "msgType":I
    const-string v2, "id"

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 249
    .local v6, "msgId":Ljava/lang/String;
    const-string v2, "snd_id"

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->senderId:Ljava/lang/String;

    .line 250
    const-string v2, "chgrp_id"

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->chatGroupId:Ljava/lang/String;

    .line 251
    const-string v2, "ct"

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 252
    .local v4, "msgContent":Ljava/lang/String;
    const-string v2, "thumbnails"

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 253
    .local v37, "msgThumbnails":Ljava/lang/String;
    const-string v2, "time"

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 254
    .local v5, "sendTime":Ljava/lang/String;
    const-string v2, "duration"

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x66

    if-ne v3, v2, :cond_3

    .line 255
    const-string v2, "duration"

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 256
    .local v31, "duration":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "tuandui@lzx"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 258
    .end local v31    # "duration":Ljava/lang/String;
    :cond_3
    packed-switch v3, :pswitch_data_0

    .line 289
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->senderName:Ljava/lang/String;

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->senderImg:Ljava/lang/String;

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 290
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->cloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->senderId:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/lzx/iteam/provider/CloudDBOperation;->findUserMsgById(Ljava/lang/String;)Lcom/lzx/iteam/bean/ChatContact;

    move-result-object v2

    iget-object v2, v2, Lcom/lzx/iteam/bean/ChatContact;->userId:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->cloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->senderId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/lzx/iteam/provider/CloudDBOperation;->findUserMsgById(Ljava/lang/String;)Lcom/lzx/iteam/bean/ChatContact;

    move-result-object v7

    iget-object v7, v7, Lcom/lzx/iteam/bean/ChatContact;->userName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->setSenderName(Ljava/lang/String;)V

    .line 292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->cloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->senderId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/lzx/iteam/provider/CloudDBOperation;->findUserMsgById(Ljava/lang/String;)Lcom/lzx/iteam/bean/ChatContact;

    move-result-object v7

    iget-object v7, v7, Lcom/lzx/iteam/bean/ChatContact;->userImg:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->setSenderImg(Ljava/lang/String;)V

    .line 295
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->setIsReaded(Z)V

    .line 301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->chatMsgs:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_0

    .line 260
    :pswitch_0
    new-instance v2, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->senderId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->senderName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->senderImg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->chatGroupId:Ljava/lang/String;

    const/4 v11, 0x0

    const-string v13, ""

    const-string v14, ""

    const-string v15, ""

    const-string v16, ""

    const/16 v17, 0x1

    move-object v12, v4

    invoke-direct/range {v2 .. v17}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 313
    .end local v3    # "msgType":I
    .end local v4    # "msgContent":Ljava/lang/String;
    .end local v5    # "sendTime":Ljava/lang/String;
    .end local v6    # "msgId":Ljava/lang/String;
    .end local v33    # "i":I
    .end local v35    # "jsonArray":Lorg/json/JSONArray;
    .end local v36    # "msgObj":Lorg/json/JSONObject;
    .end local v37    # "msgThumbnails":Ljava/lang/String;
    :catch_0
    move-exception v32

    .line 314
    .local v32, "e":Ljava/lang/Exception;
    const-string v2, "GetChatMessageMsg"

    const-string v7, "get chat message exception"

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 264
    .end local v32    # "e":Ljava/lang/Exception;
    .restart local v3    # "msgType":I
    .restart local v4    # "msgContent":Ljava/lang/String;
    .restart local v5    # "sendTime":Ljava/lang/String;
    .restart local v6    # "msgId":Ljava/lang/String;
    .restart local v33    # "i":I
    .restart local v35    # "jsonArray":Lorg/json/JSONArray;
    .restart local v36    # "msgObj":Lorg/json/JSONObject;
    .restart local v37    # "msgThumbnails":Ljava/lang/String;
    :pswitch_1
    :try_start_1
    invoke-static/range {v37 .. v37}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 265
    invoke-static/range {v37 .. v37}, Lcom/lzx/iteam/task/DownloadImageTask;->loadImageFromNetwork(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v34

    .line 266
    .local v34, "imageBitmap":Landroid/graphics/Bitmap;
    const-string v2, "/Yun/Images/Thumbnails/"

    move-object/from16 v0, v34

    invoke-static {v0, v2}, Lcom/lzx/iteam/util/PhotoUtil;->saveBitmaptoSdCard(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 267
    .local v14, "imagePath":Ljava/lang/String;
    new-instance v2, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->senderId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->senderName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->senderImg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->chatGroupId:Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, ""

    const-string v15, ""

    const-string v16, ""

    const/16 v17, 0x1

    move-object v13, v4

    invoke-direct/range {v2 .. v17}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    goto/16 :goto_2

    .line 270
    .end local v14    # "imagePath":Ljava/lang/String;
    .end local v34    # "imageBitmap":Landroid/graphics/Bitmap;
    :cond_6
    const-string v2, "http"

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "?imageView2/0/w/100/h/100"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    .line 272
    invoke-static/range {v37 .. v37}, Lcom/lzx/iteam/task/DownloadImageTask;->loadImageFromNetwork(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v34

    .line 273
    .restart local v34    # "imageBitmap":Landroid/graphics/Bitmap;
    const-string v2, "/Yun/Images/Thumbnails/"

    move-object/from16 v0, v34

    invoke-static {v0, v2}, Lcom/lzx/iteam/util/PhotoUtil;->saveBitmaptoSdCard(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 274
    .restart local v14    # "imagePath":Ljava/lang/String;
    new-instance v2, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->senderId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->senderName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->senderImg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->chatGroupId:Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, ""

    const-string v15, ""

    const-string v16, ""

    const/16 v17, 0x1

    move-object v13, v4

    invoke-direct/range {v2 .. v17}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    goto/16 :goto_2

    .line 276
    .end local v14    # "imagePath":Ljava/lang/String;
    .end local v34    # "imageBitmap":Landroid/graphics/Bitmap;
    :cond_7
    new-instance v15, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->senderId:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->senderName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->senderImg:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->chatGroupId:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, ""

    const-string v27, ""

    const-string v28, ""

    const-string v29, ""

    const/16 v30, 0x1

    move/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v26, v4

    invoke-direct/range {v15 .. v30}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    goto/16 :goto_2

    .line 282
    :pswitch_2
    new-instance v15, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->senderId:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->senderName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->senderImg:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->chatGroupId:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, ""

    const-string v26, ""

    const-string v27, ""

    const-string v29, ""

    const/16 v30, 0x1

    move/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v28, v4

    invoke-direct/range {v15 .. v30}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 258
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
