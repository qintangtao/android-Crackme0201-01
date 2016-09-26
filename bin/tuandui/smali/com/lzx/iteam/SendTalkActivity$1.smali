.class Lcom/lzx/iteam/SendTalkActivity$1;
.super Landroid/os/Handler;
.source "SendTalkActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/SendTalkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/SendTalkActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/SendTalkActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/SendTalkActivity$1;->this$0:Lcom/lzx/iteam/SendTalkActivity;

    .line 68
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v9, 0x7f080042

    const/16 v7, 0x1f41

    const/4 v8, 0x1

    .line 71
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 72
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 74
    :pswitch_0
    iget-object v6, p0, Lcom/lzx/iteam/SendTalkActivity$1;->this$0:Lcom/lzx/iteam/SendTalkActivity;

    # invokes: Lcom/lzx/iteam/SendTalkActivity;->httpReqDlgDismiss()V
    invoke-static {v6}, Lcom/lzx/iteam/SendTalkActivity;->access$0(Lcom/lzx/iteam/SendTalkActivity;)V

    .line 78
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-nez v6, :cond_3

    .line 79
    iget-object v6, p0, Lcom/lzx/iteam/SendTalkActivity$1;->this$0:Lcom/lzx/iteam/SendTalkActivity;

    const-string v7, "input_method"

    invoke-virtual {v6, v7}, Lcom/lzx/iteam/SendTalkActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, p0, Lcom/lzx/iteam/SendTalkActivity$1;->this$0:Lcom/lzx/iteam/SendTalkActivity;

    invoke-virtual {v7}, Lcom/lzx/iteam/SendTalkActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 80
    sget-object v6, Lcom/lzx/iteam/selectimage/Bimp;->mPictureData:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 81
    sget-object v6, Lcom/lzx/iteam/selectimage/Bimp;->mPictureData:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 83
    :cond_1
    sget-object v6, Lcom/lzx/iteam/selectimage/Bimp;->tempSelectBitmap:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 87
    sget-object v6, Lcom/lzx/iteam/selectimage/Bimp;->tempSelectBitmap:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 89
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/lzx/iteam/SendTalkActivity$1;->this$0:Lcom/lzx/iteam/SendTalkActivity;

    const-class v7, Lcom/lzx/iteam/TalkListActivity;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v6, 0x4000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 91
    sget-object v6, Lcom/lzx/iteam/TalkListActivity;->CONTACTS_CIRCLE:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string v6, "type"

    const-string v7, "score"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    iget-object v6, p0, Lcom/lzx/iteam/SendTalkActivity$1;->this$0:Lcom/lzx/iteam/SendTalkActivity;

    invoke-virtual {v6, v2}, Lcom/lzx/iteam/SendTalkActivity;->startActivity(Landroid/content/Intent;)V

    .line 94
    iget-object v6, p0, Lcom/lzx/iteam/SendTalkActivity$1;->this$0:Lcom/lzx/iteam/SendTalkActivity;

    invoke-virtual {v6}, Lcom/lzx/iteam/SendTalkActivity;->finish()V

    goto :goto_0

    .line 83
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 84
    .local v0, "data":Ljava/lang/String;
    sget-object v7, Lcom/lzx/iteam/selectimage/Bimp;->mPictureData:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    const-string v7, "talk_list_send_da"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 96
    .end local v0    # "data":Ljava/lang/String;
    :cond_3
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v7, :cond_4

    .line 97
    iget-object v6, p0, Lcom/lzx/iteam/SendTalkActivity$1;->this$0:Lcom/lzx/iteam/SendTalkActivity;

    invoke-static {v6, v9, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    .line 98
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 100
    :cond_4
    iget-object v7, p0, Lcom/lzx/iteam/SendTalkActivity$1;->this$0:Lcom/lzx/iteam/SendTalkActivity;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-static {v7, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 101
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 107
    :pswitch_1
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-nez v6, :cond_6

    .line 108
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/util/HashMap;

    .line 109
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v6, p0, Lcom/lzx/iteam/SendTalkActivity$1;->this$0:Lcom/lzx/iteam/SendTalkActivity;

    # getter for: Lcom/lzx/iteam/SendTalkActivity;->keyByte:Ljava/util/List;
    invoke-static {v6}, Lcom/lzx/iteam/SendTalkActivity;->access$1(Lcom/lzx/iteam/SendTalkActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 110
    iget-object v6, p0, Lcom/lzx/iteam/SendTalkActivity$1;->this$0:Lcom/lzx/iteam/SendTalkActivity;

    # getter for: Lcom/lzx/iteam/SendTalkActivity;->keyByte:Ljava/util/List;
    invoke-static {v6}, Lcom/lzx/iteam/SendTalkActivity;->access$1(Lcom/lzx/iteam/SendTalkActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 111
    .local v5, "map1":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_5

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 111
    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 112
    .local v3, "key":Ljava/lang/String;
    iget-object v9, p0, Lcom/lzx/iteam/SendTalkActivity$1;->this$0:Lcom/lzx/iteam/SendTalkActivity;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    invoke-virtual {v9, v6, v7, v3}, Lcom/lzx/iteam/SendTalkActivity;->setPhoto(Ljava/lang/String;[BLjava/lang/String;)V

    goto :goto_3

    .line 117
    .end local v1    # "i":I
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "map1":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    :cond_6
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v7, :cond_7

    .line 118
    iget-object v6, p0, Lcom/lzx/iteam/SendTalkActivity$1;->this$0:Lcom/lzx/iteam/SendTalkActivity;

    invoke-static {v6, v9, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    .line 119
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 121
    :cond_7
    iget-object v7, p0, Lcom/lzx/iteam/SendTalkActivity$1;->this$0:Lcom/lzx/iteam/SendTalkActivity;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-static {v7, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 122
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
