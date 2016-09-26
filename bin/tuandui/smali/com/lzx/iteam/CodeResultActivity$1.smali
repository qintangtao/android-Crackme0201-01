.class Lcom/lzx/iteam/CodeResultActivity$1;
.super Landroid/os/Handler;
.source "CodeResultActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/CodeResultActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/CodeResultActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/CodeResultActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/CodeResultActivity$1;->this$0:Lcom/lzx/iteam/CodeResultActivity;

    .line 45
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 48
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 49
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 91
    :goto_0
    return-void

    .line 51
    :pswitch_0
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_6

    .line 52
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/json/JSONObject;

    .line 54
    .local v2, "result":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "late"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "code":Ljava/lang/String;
    const-string v3, "0"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 56
    iget-object v3, p0, Lcom/lzx/iteam/CodeResultActivity$1;->this$0:Lcom/lzx/iteam/CodeResultActivity;

    const-string v4, "\u60a8\u4e0d\u662f\u53c2\u4f1a\u4eba\u5458,\u4e0d\u80fd\u7b7e\u5230"

    .line 57
    const/4 v5, 0x1

    .line 56
    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 57
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 74
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/lzx/iteam/CodeResultActivity$1;->this$0:Lcom/lzx/iteam/CodeResultActivity;

    # getter for: Lcom/lzx/iteam/CodeResultActivity;->mTvReg:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/lzx/iteam/CodeResultActivity;->access$0(Lcom/lzx/iteam/CodeResultActivity;)Landroid/widget/TextView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    .end local v0    # "code":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 58
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v0    # "code":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 59
    iget-object v3, p0, Lcom/lzx/iteam/CodeResultActivity$1;->this$0:Lcom/lzx/iteam/CodeResultActivity;

    const-string v4, "\u60a8\u5df2\u7ecf\u7b7e\u8fc7\u5230\u4e86"

    .line 60
    const/4 v5, 0x1

    .line 59
    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 60
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 61
    :cond_2
    const-string v3, "2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 62
    iget-object v3, p0, Lcom/lzx/iteam/CodeResultActivity$1;->this$0:Lcom/lzx/iteam/CodeResultActivity;

    const-string v4, "\u7b7e\u5230\u6210\u529f"

    .line 63
    const/4 v5, 0x1

    .line 62
    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 63
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 64
    :cond_3
    const-string v3, "3"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 65
    iget-object v3, p0, Lcom/lzx/iteam/CodeResultActivity$1;->this$0:Lcom/lzx/iteam/CodeResultActivity;

    const-string v4, "\u7b7e\u5230\u6210\u529f"

    .line 66
    const/4 v5, 0x1

    .line 65
    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 66
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 67
    :cond_4
    const-string v3, "4"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 68
    iget-object v3, p0, Lcom/lzx/iteam/CodeResultActivity$1;->this$0:Lcom/lzx/iteam/CodeResultActivity;

    const-string v4, "\u4f1a\u8bae\u7b7e\u5230\u5c1a\u672a\u5f00\u59cb,\u8bf7\u7a0d\u540e\u7b7e\u5230"

    .line 69
    const/4 v5, 0x1

    .line 68
    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 69
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 70
    :cond_5
    const-string v3, "5"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 71
    iget-object v3, p0, Lcom/lzx/iteam/CodeResultActivity$1;->this$0:Lcom/lzx/iteam/CodeResultActivity;

    const-string v4, "\u62b1\u6b49\uff0c\u8be5\u4f1a\u8bae\u7b7e\u5230\u5df2\u7ecf\u7ed3\u675f"

    .line 72
    const/4 v5, 0x1

    .line 71
    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 72
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 80
    .end local v0    # "code":Ljava/lang/String;
    .end local v2    # "result":Lorg/json/JSONObject;
    :cond_6
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x1f41

    if-ne v3, v4, :cond_7

    .line 81
    iget-object v3, p0, Lcom/lzx/iteam/CodeResultActivity$1;->this$0:Lcom/lzx/iteam/CodeResultActivity;

    const v4, 0x7f080042

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 82
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 84
    :cond_7
    iget-object v4, p0, Lcom/lzx/iteam/CodeResultActivity$1;->this$0:Lcom/lzx/iteam/CodeResultActivity;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 85
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method
