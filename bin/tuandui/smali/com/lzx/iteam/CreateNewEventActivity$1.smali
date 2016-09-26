.class Lcom/lzx/iteam/CreateNewEventActivity$1;
.super Landroid/os/Handler;
.source "CreateNewEventActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/CreateNewEventActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/CreateNewEventActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/CreateNewEventActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/CreateNewEventActivity$1;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    .line 147
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x1

    .line 150
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 151
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_0

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 153
    :sswitch_0
    iget-object v7, p0, Lcom/lzx/iteam/CreateNewEventActivity$1;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    invoke-static {v7, v9}, Lcom/lzx/iteam/CreateNewEventActivity;->access$0(Lcom/lzx/iteam/CreateNewEventActivity;Z)V

    goto :goto_0

    .line 158
    :sswitch_1
    iget-object v7, p0, Lcom/lzx/iteam/CreateNewEventActivity$1;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # invokes: Lcom/lzx/iteam/CreateNewEventActivity;->httpReqDlgDismiss()V
    invoke-static {v7}, Lcom/lzx/iteam/CreateNewEventActivity;->access$1(Lcom/lzx/iteam/CreateNewEventActivity;)V

    .line 159
    iget v7, p1, Landroid/os/Message;->arg1:I

    if-nez v7, :cond_4

    .line 160
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/lzx/iteam/bean/EventListData;

    .line 166
    .local v1, "eventData":Lcom/lzx/iteam/bean/EventListData;
    invoke-virtual {v1}, Lcom/lzx/iteam/bean/EventListData;->getEventId()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/lzx/iteam/util/Constants;->NEW_EVENT_ID:Ljava/lang/String;

    .line 167
    iget-object v7, p0, Lcom/lzx/iteam/CreateNewEventActivity$1;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;
    invoke-static {v7}, Lcom/lzx/iteam/CreateNewEventActivity;->access$2(Lcom/lzx/iteam/CreateNewEventActivity;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v7

    const-string v8, "event_count"

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/lzx/iteam/CreateNewEventActivity$1;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;
    invoke-static {v10}, Lcom/lzx/iteam/CreateNewEventActivity;->access$2(Lcom/lzx/iteam/CreateNewEventActivity;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v10

    const-string v11, "event_count"

    const-string v12, "0"

    invoke-virtual {v10, v11, v12}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 168
    iget-object v7, p0, Lcom/lzx/iteam/CreateNewEventActivity$1;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;
    invoke-static {v7}, Lcom/lzx/iteam/CreateNewEventActivity;->access$3(Lcom/lzx/iteam/CreateNewEventActivity;)Lcom/lzx/iteam/provider/CloudDBOperation;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/lzx/iteam/provider/CloudDBOperation;->insertEvent(Lcom/lzx/iteam/bean/EventListData;)J

    .line 169
    new-instance v6, Landroid/content/Intent;

    iget-object v7, p0, Lcom/lzx/iteam/CreateNewEventActivity$1;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    const-class v8, Lcom/lzx/iteam/MainActivity;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 170
    .local v6, "toMain":Landroid/content/Intent;
    const/high16 v7, 0x24000000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 171
    iget-object v7, p0, Lcom/lzx/iteam/CreateNewEventActivity$1;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    invoke-virtual {v7, v6}, Lcom/lzx/iteam/CreateNewEventActivity;->startActivity(Landroid/content/Intent;)V

    .line 173
    iget-object v7, p0, Lcom/lzx/iteam/CreateNewEventActivity$1;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mEventId:Ljava/lang/String;
    invoke-static {v7}, Lcom/lzx/iteam/CreateNewEventActivity;->access$4(Lcom/lzx/iteam/CreateNewEventActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 174
    iget-object v7, p0, Lcom/lzx/iteam/CreateNewEventActivity$1;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;
    invoke-static {v7}, Lcom/lzx/iteam/CreateNewEventActivity;->access$3(Lcom/lzx/iteam/CreateNewEventActivity;)Lcom/lzx/iteam/provider/CloudDBOperation;

    move-result-object v7

    iget-object v8, p0, Lcom/lzx/iteam/CreateNewEventActivity$1;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mEventId:Ljava/lang/String;
    invoke-static {v8}, Lcom/lzx/iteam/CreateNewEventActivity;->access$4(Lcom/lzx/iteam/CreateNewEventActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/lzx/iteam/provider/CloudDBOperation;->deleteEventDraftsByEventId(Ljava/lang/String;)I

    .line 175
    iget-object v7, p0, Lcom/lzx/iteam/CreateNewEventActivity$1;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;
    invoke-static {v7}, Lcom/lzx/iteam/CreateNewEventActivity;->access$2(Lcom/lzx/iteam/CreateNewEventActivity;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v7

    const-string v8, "draft_event_id"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 177
    :cond_1
    sget-object v7, Lcom/lzx/iteam/selectimage/Bimp;->mPictureData:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 178
    sget-object v7, Lcom/lzx/iteam/selectimage/Bimp;->mPictureData:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 180
    :cond_2
    sget-object v7, Lcom/lzx/iteam/selectimage/Bimp;->tempSelectBitmap:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_3

    .line 184
    sget-object v7, Lcom/lzx/iteam/selectimage/Bimp;->tempSelectBitmap:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 186
    iget-object v7, p0, Lcom/lzx/iteam/CreateNewEventActivity$1;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    invoke-virtual {v7}, Lcom/lzx/iteam/CreateNewEventActivity;->finish()V

    goto/16 :goto_0

    .line 180
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 181
    .local v0, "data":Ljava/lang/String;
    sget-object v8, Lcom/lzx/iteam/selectimage/Bimp;->mPictureData:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    const-string v8, "talk_list_send_da"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 188
    .end local v0    # "data":Ljava/lang/String;
    .end local v1    # "eventData":Lcom/lzx/iteam/bean/EventListData;
    .end local v6    # "toMain":Landroid/content/Intent;
    :cond_4
    iget v7, p1, Landroid/os/Message;->arg1:I

    const/16 v8, 0x1f41

    if-ne v7, v8, :cond_5

    .line 189
    iget-object v7, p0, Lcom/lzx/iteam/CreateNewEventActivity$1;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    const v8, 0x7f080042

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    .line 190
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 192
    :cond_5
    iget-object v8, p0, Lcom/lzx/iteam/CreateNewEventActivity$1;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-static {v8, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 198
    :sswitch_2
    iget v7, p1, Landroid/os/Message;->arg1:I

    if-nez v7, :cond_0

    .line 199
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/util/HashMap;

    .line 200
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v7, p0, Lcom/lzx/iteam/CreateNewEventActivity$1;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->keyByte:Ljava/util/List;
    invoke-static {v7}, Lcom/lzx/iteam/CreateNewEventActivity;->access$5(Lcom/lzx/iteam/CreateNewEventActivity;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 201
    iget-object v7, p0, Lcom/lzx/iteam/CreateNewEventActivity$1;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->keyByte:Ljava/util/List;
    invoke-static {v7}, Lcom/lzx/iteam/CreateNewEventActivity;->access$5(Lcom/lzx/iteam/CreateNewEventActivity;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 202
    .local v5, "map1":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_6

    .line 200
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 202
    :cond_6
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 203
    .local v3, "key":Ljava/lang/String;
    iget-object v10, p0, Lcom/lzx/iteam/CreateNewEventActivity$1;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v10, v7, v8, v3}, Lcom/lzx/iteam/CreateNewEventActivity;->setPhoto(Ljava/lang/String;[BLjava/lang/String;)V

    goto :goto_3

    .line 151
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x3e8 -> :sswitch_2
    .end sparse-switch
.end method
