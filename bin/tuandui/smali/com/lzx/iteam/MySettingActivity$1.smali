.class Lcom/lzx/iteam/MySettingActivity$1;
.super Landroid/os/Handler;
.source "MySettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/MySettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/MySettingActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/MySettingActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/MySettingActivity$1;->this$0:Lcom/lzx/iteam/MySettingActivity;

    .line 81
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v12, 0x7f080042

    const/16 v9, 0x1f41

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 84
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 86
    :sswitch_0
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-nez v8, :cond_1

    .line 87
    iget-object v8, p0, Lcom/lzx/iteam/MySettingActivity$1;->this$0:Lcom/lzx/iteam/MySettingActivity;

    # invokes: Lcom/lzx/iteam/MySettingActivity;->uploadNameCard()V
    invoke-static {v8}, Lcom/lzx/iteam/MySettingActivity;->access$0(Lcom/lzx/iteam/MySettingActivity;)V

    .line 89
    new-instance v4, Landroid/content/Intent;

    iget-object v8, p0, Lcom/lzx/iteam/MySettingActivity$1;->this$0:Lcom/lzx/iteam/MySettingActivity;

    # getter for: Lcom/lzx/iteam/MySettingActivity;->mActivity:Lcom/lzx/iteam/MySettingActivity;
    invoke-static {v8}, Lcom/lzx/iteam/MySettingActivity;->access$1(Lcom/lzx/iteam/MySettingActivity;)Lcom/lzx/iteam/MySettingActivity;

    move-result-object v8

    const-class v9, Lcom/lzx/iteam/MainActivity;

    invoke-direct {v4, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v8, 0x24000000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 91
    iget-object v8, p0, Lcom/lzx/iteam/MySettingActivity$1;->this$0:Lcom/lzx/iteam/MySettingActivity;

    invoke-virtual {v8, v4}, Lcom/lzx/iteam/MySettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 92
    iget-object v8, p0, Lcom/lzx/iteam/MySettingActivity$1;->this$0:Lcom/lzx/iteam/MySettingActivity;

    # getter for: Lcom/lzx/iteam/MySettingActivity;->mActivity:Lcom/lzx/iteam/MySettingActivity;
    invoke-static {v8}, Lcom/lzx/iteam/MySettingActivity;->access$1(Lcom/lzx/iteam/MySettingActivity;)Lcom/lzx/iteam/MySettingActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lzx/iteam/MySettingActivity;->finish()V

    .line 93
    iget-object v8, p0, Lcom/lzx/iteam/MySettingActivity$1;->this$0:Lcom/lzx/iteam/MySettingActivity;

    # getter for: Lcom/lzx/iteam/MySettingActivity;->mActivity:Lcom/lzx/iteam/MySettingActivity;
    invoke-static {v8}, Lcom/lzx/iteam/MySettingActivity;->access$1(Lcom/lzx/iteam/MySettingActivity;)Lcom/lzx/iteam/MySettingActivity;

    move-result-object v8

    const-string v9, "\u8bbe\u7f6e\u6210\u529f"

    invoke-static {v8, v9, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 95
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_1
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v9, :cond_2

    .line 96
    iget-object v8, p0, Lcom/lzx/iteam/MySettingActivity$1;->this$0:Lcom/lzx/iteam/MySettingActivity;

    # getter for: Lcom/lzx/iteam/MySettingActivity;->mActivity:Lcom/lzx/iteam/MySettingActivity;
    invoke-static {v8}, Lcom/lzx/iteam/MySettingActivity;->access$1(Lcom/lzx/iteam/MySettingActivity;)Lcom/lzx/iteam/MySettingActivity;

    move-result-object v8

    invoke-static {v8, v12, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    .line 97
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 99
    :cond_2
    iget-object v8, p0, Lcom/lzx/iteam/MySettingActivity$1;->this$0:Lcom/lzx/iteam/MySettingActivity;

    # getter for: Lcom/lzx/iteam/MySettingActivity;->mActivity:Lcom/lzx/iteam/MySettingActivity;
    invoke-static {v8}, Lcom/lzx/iteam/MySettingActivity;->access$1(Lcom/lzx/iteam/MySettingActivity;)Lcom/lzx/iteam/MySettingActivity;

    move-result-object v9

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-static {v9, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    .line 100
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 107
    :sswitch_1
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-nez v8, :cond_3

    .line 108
    iget-object v8, p0, Lcom/lzx/iteam/MySettingActivity$1;->this$0:Lcom/lzx/iteam/MySettingActivity;

    # getter for: Lcom/lzx/iteam/MySettingActivity;->mPhoto:Landroid/widget/ImageView;
    invoke-static {v8}, Lcom/lzx/iteam/MySettingActivity;->access$2(Lcom/lzx/iteam/MySettingActivity;)Landroid/widget/ImageView;

    move-result-object v8

    iget-object v9, p0, Lcom/lzx/iteam/MySettingActivity$1;->this$0:Lcom/lzx/iteam/MySettingActivity;

    # getter for: Lcom/lzx/iteam/MySettingActivity;->imageBitmap:Landroid/graphics/Bitmap;
    invoke-static {v9}, Lcom/lzx/iteam/MySettingActivity;->access$3(Lcom/lzx/iteam/MySettingActivity;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 109
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lorg/json/JSONObject;

    .line 111
    .local v6, "result":Lorg/json/JSONObject;
    :try_start_0
    iget-object v8, p0, Lcom/lzx/iteam/MySettingActivity$1;->this$0:Lcom/lzx/iteam/MySettingActivity;

    const-string v9, "image_path"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lzx/iteam/MySettingActivity;->access$4(Lcom/lzx/iteam/MySettingActivity;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_1
    iget-object v8, p0, Lcom/lzx/iteam/MySettingActivity$1;->this$0:Lcom/lzx/iteam/MySettingActivity;

    # getter for: Lcom/lzx/iteam/MySettingActivity;->mActivity:Lcom/lzx/iteam/MySettingActivity;
    invoke-static {v8}, Lcom/lzx/iteam/MySettingActivity;->access$1(Lcom/lzx/iteam/MySettingActivity;)Lcom/lzx/iteam/MySettingActivity;

    move-result-object v8

    const-string v9, "\u8bbe\u7f6e\u5934\u50cf\u6210\u529f"

    invoke-static {v8, v9, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 118
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v6    # "result":Lorg/json/JSONObject;
    :cond_3
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v9, :cond_4

    .line 119
    iget-object v8, p0, Lcom/lzx/iteam/MySettingActivity$1;->this$0:Lcom/lzx/iteam/MySettingActivity;

    # getter for: Lcom/lzx/iteam/MySettingActivity;->mActivity:Lcom/lzx/iteam/MySettingActivity;
    invoke-static {v8}, Lcom/lzx/iteam/MySettingActivity;->access$1(Lcom/lzx/iteam/MySettingActivity;)Lcom/lzx/iteam/MySettingActivity;

    move-result-object v8

    invoke-static {v8, v12, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    .line 120
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 122
    :cond_4
    iget-object v8, p0, Lcom/lzx/iteam/MySettingActivity$1;->this$0:Lcom/lzx/iteam/MySettingActivity;

    # getter for: Lcom/lzx/iteam/MySettingActivity;->mActivity:Lcom/lzx/iteam/MySettingActivity;
    invoke-static {v8}, Lcom/lzx/iteam/MySettingActivity;->access$1(Lcom/lzx/iteam/MySettingActivity;)Lcom/lzx/iteam/MySettingActivity;

    move-result-object v9

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-static {v9, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    .line 123
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 128
    :sswitch_2
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-nez v8, :cond_0

    .line 129
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/util/HashMap;

    .line 130
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, "token"

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 131
    .local v7, "token":Ljava/lang/String;
    const-string v8, "file"

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 132
    .local v2, "file":[B
    const-string v8, "fileName"

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 133
    .local v3, "fileName":Ljava/lang/String;
    iget-object v8, p0, Lcom/lzx/iteam/MySettingActivity$1;->this$0:Lcom/lzx/iteam/MySettingActivity;

    invoke-virtual {v8, v7, v2, v3}, Lcom/lzx/iteam/MySettingActivity;->setPhoto(Ljava/lang/String;[BLjava/lang/String;)V

    goto/16 :goto_0

    .line 138
    .end local v2    # "file":[B
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7    # "token":Ljava/lang/String;
    :sswitch_3
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-eqz v8, :cond_0

    .line 140
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v9, :cond_5

    .line 141
    iget-object v8, p0, Lcom/lzx/iteam/MySettingActivity$1;->this$0:Lcom/lzx/iteam/MySettingActivity;

    invoke-virtual {v8, v12}, Lcom/lzx/iteam/MySettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "error":Ljava/lang/String;
    iget-object v8, p0, Lcom/lzx/iteam/MySettingActivity$1;->this$0:Lcom/lzx/iteam/MySettingActivity;

    invoke-static {v8, v1, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 143
    .end local v1    # "error":Ljava/lang/String;
    :cond_5
    iget v8, p1, Landroid/os/Message;->arg1:I

    const/16 v9, 0x3ea

    if-eq v8, v9, :cond_0

    iget v8, p1, Landroid/os/Message;->arg1:I

    const/16 v9, 0x3eb

    if-eq v8, v9, :cond_0

    iget v8, p1, Landroid/os/Message;->arg1:I

    const/16 v9, 0x3ed

    if-eq v8, v9, :cond_0

    .line 145
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v8, :cond_6

    .line 146
    iget-object v9, p0, Lcom/lzx/iteam/MySettingActivity$1;->this$0:Lcom/lzx/iteam/MySettingActivity;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-static {v9, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    .line 147
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 149
    :cond_6
    iget-object v8, p0, Lcom/lzx/iteam/MySettingActivity$1;->this$0:Lcom/lzx/iteam/MySettingActivity;

    const v9, 0x7f080044

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    .line 150
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 84
    nop

    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_0
        0x67 -> :sswitch_1
        0x6fd -> :sswitch_3
        0xf2d -> :sswitch_2
    .end sparse-switch
.end method
