.class Lcom/lzx/iteam/EditMyCardActivity$1;
.super Landroid/os/Handler;
.source "EditMyCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/EditMyCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/EditMyCardActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/EditMyCardActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/EditMyCardActivity$1;->this$0:Lcom/lzx/iteam/EditMyCardActivity;

    .line 93
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    .line 96
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 97
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 134
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 99
    :pswitch_1
    iget-object v5, p0, Lcom/lzx/iteam/EditMyCardActivity$1;->this$0:Lcom/lzx/iteam/EditMyCardActivity;

    # getter for: Lcom/lzx/iteam/EditMyCardActivity;->mDialog:Landroid/app/Dialog;
    invoke-static {v5}, Lcom/lzx/iteam/EditMyCardActivity;->access$0(Lcom/lzx/iteam/EditMyCardActivity;)Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 100
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-nez v5, :cond_1

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v0, "cardData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/lzx/iteam/EditMyCardActivity$1;->this$0:Lcom/lzx/iteam/EditMyCardActivity;

    # getter for: Lcom/lzx/iteam/EditMyCardActivity;->name:Ljava/lang/String;
    invoke-static {v5}, Lcom/lzx/iteam/EditMyCardActivity;->access$1(Lcom/lzx/iteam/EditMyCardActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v5, p0, Lcom/lzx/iteam/EditMyCardActivity$1;->this$0:Lcom/lzx/iteam/EditMyCardActivity;

    # getter for: Lcom/lzx/iteam/EditMyCardActivity;->mobilePhone1:Ljava/lang/String;
    invoke-static {v5}, Lcom/lzx/iteam/EditMyCardActivity;->access$2(Lcom/lzx/iteam/EditMyCardActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v5, p0, Lcom/lzx/iteam/EditMyCardActivity$1;->this$0:Lcom/lzx/iteam/EditMyCardActivity;

    # getter for: Lcom/lzx/iteam/EditMyCardActivity;->mobilePhone2:Ljava/lang/String;
    invoke-static {v5}, Lcom/lzx/iteam/EditMyCardActivity;->access$3(Lcom/lzx/iteam/EditMyCardActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v5, p0, Lcom/lzx/iteam/EditMyCardActivity$1;->this$0:Lcom/lzx/iteam/EditMyCardActivity;

    # getter for: Lcom/lzx/iteam/EditMyCardActivity;->company:Ljava/lang/String;
    invoke-static {v5}, Lcom/lzx/iteam/EditMyCardActivity;->access$4(Lcom/lzx/iteam/EditMyCardActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v5, p0, Lcom/lzx/iteam/EditMyCardActivity$1;->this$0:Lcom/lzx/iteam/EditMyCardActivity;

    # getter for: Lcom/lzx/iteam/EditMyCardActivity;->position:Ljava/lang/String;
    invoke-static {v5}, Lcom/lzx/iteam/EditMyCardActivity;->access$5(Lcom/lzx/iteam/EditMyCardActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v5, p0, Lcom/lzx/iteam/EditMyCardActivity$1;->this$0:Lcom/lzx/iteam/EditMyCardActivity;

    # getter for: Lcom/lzx/iteam/EditMyCardActivity;->email:Ljava/lang/String;
    invoke-static {v5}, Lcom/lzx/iteam/EditMyCardActivity;->access$6(Lcom/lzx/iteam/EditMyCardActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v5, p0, Lcom/lzx/iteam/EditMyCardActivity$1;->this$0:Lcom/lzx/iteam/EditMyCardActivity;

    # getter for: Lcom/lzx/iteam/EditMyCardActivity;->address:Ljava/lang/String;
    invoke-static {v5}, Lcom/lzx/iteam/EditMyCardActivity;->access$7(Lcom/lzx/iteam/EditMyCardActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v5, p0, Lcom/lzx/iteam/EditMyCardActivity$1;->this$0:Lcom/lzx/iteam/EditMyCardActivity;

    # getter for: Lcom/lzx/iteam/EditMyCardActivity;->avatar:Ljava/lang/String;
    invoke-static {v5}, Lcom/lzx/iteam/EditMyCardActivity;->access$8(Lcom/lzx/iteam/EditMyCardActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v5, p0, Lcom/lzx/iteam/EditMyCardActivity$1;->this$0:Lcom/lzx/iteam/EditMyCardActivity;

    # getter for: Lcom/lzx/iteam/EditMyCardActivity;->sex:Ljava/lang/String;
    invoke-static {v5}, Lcom/lzx/iteam/EditMyCardActivity;->access$9(Lcom/lzx/iteam/EditMyCardActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v5, p0, Lcom/lzx/iteam/EditMyCardActivity$1;->this$0:Lcom/lzx/iteam/EditMyCardActivity;

    # getter for: Lcom/lzx/iteam/EditMyCardActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;
    invoke-static {v5}, Lcom/lzx/iteam/EditMyCardActivity;->access$10(Lcom/lzx/iteam/EditMyCardActivity;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v5

    const-string v6, "contact_name_card"

    invoke-virtual {v5, v6, v0}, Lcom/lzx/iteam/util/PreferenceUtil;->saveCloudContact(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    iget-object v5, p0, Lcom/lzx/iteam/EditMyCardActivity$1;->this$0:Lcom/lzx/iteam/EditMyCardActivity;

    # getter for: Lcom/lzx/iteam/EditMyCardActivity;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/lzx/iteam/EditMyCardActivity;->access$11(Lcom/lzx/iteam/EditMyCardActivity;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "\u4fee\u6539\u6210\u529f"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 113
    iget-object v5, p0, Lcom/lzx/iteam/EditMyCardActivity$1;->this$0:Lcom/lzx/iteam/EditMyCardActivity;

    invoke-virtual {v5}, Lcom/lzx/iteam/EditMyCardActivity;->finish()V

    goto/16 :goto_0

    .line 115
    .end local v0    # "cardData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    iget v5, p1, Landroid/os/Message;->arg1:I

    const/16 v6, 0x1f41

    if-ne v5, v6, :cond_2

    .line 116
    iget-object v5, p0, Lcom/lzx/iteam/EditMyCardActivity$1;->this$0:Lcom/lzx/iteam/EditMyCardActivity;

    # getter for: Lcom/lzx/iteam/EditMyCardActivity;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/lzx/iteam/EditMyCardActivity;->access$11(Lcom/lzx/iteam/EditMyCardActivity;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f080042

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    .line 117
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 119
    :cond_2
    iget-object v5, p0, Lcom/lzx/iteam/EditMyCardActivity$1;->this$0:Lcom/lzx/iteam/EditMyCardActivity;

    # getter for: Lcom/lzx/iteam/EditMyCardActivity;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/lzx/iteam/EditMyCardActivity;->access$11(Lcom/lzx/iteam/EditMyCardActivity;)Landroid/content/Context;

    move-result-object v6

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v6, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 120
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 125
    :pswitch_2
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-nez v5, :cond_0

    .line 126
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    .line 127
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "token"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 128
    .local v4, "token":Ljava/lang/String;
    const-string v5, "file"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 129
    .local v1, "file":[B
    const-string v5, "fileName"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 130
    .local v2, "fileName":Ljava/lang/String;
    iget-object v5, p0, Lcom/lzx/iteam/EditMyCardActivity$1;->this$0:Lcom/lzx/iteam/EditMyCardActivity;

    invoke-virtual {v5, v4, v1, v2}, Lcom/lzx/iteam/EditMyCardActivity;->setPhoto(Ljava/lang/String;[BLjava/lang/String;)V

    goto/16 :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x75e
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
