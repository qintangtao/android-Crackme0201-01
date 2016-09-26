.class Lcom/lzx/iteam/ForgetActivity$1;
.super Landroid/os/Handler;
.source "ForgetActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/ForgetActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ForgetActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ForgetActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ForgetActivity$1;->this$0:Lcom/lzx/iteam/ForgetActivity;

    .line 65
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v6, 0x7f080042

    const/16 v4, 0x1f41

    const/4 v5, 0x1

    .line 67
    iget v2, p1, Landroid/os/Message;->what:I

    .line 68
    .local v2, "what":I
    sparse-switch v2, :sswitch_data_0

    .line 126
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 70
    :sswitch_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_1

    .line 71
    iget-object v3, p0, Lcom/lzx/iteam/ForgetActivity$1;->this$0:Lcom/lzx/iteam/ForgetActivity;

    # invokes: Lcom/lzx/iteam/ForgetActivity;->showAlertDialog()V
    invoke-static {v3}, Lcom/lzx/iteam/ForgetActivity;->access$0(Lcom/lzx/iteam/ForgetActivity;)V

    goto :goto_0

    .line 73
    :cond_1
    iget-object v3, p0, Lcom/lzx/iteam/ForgetActivity$1;->this$0:Lcom/lzx/iteam/ForgetActivity;

    invoke-static {v3, v5}, Lcom/lzx/iteam/ForgetActivity;->access$1(Lcom/lzx/iteam/ForgetActivity;Z)V

    .line 74
    iget-object v3, p0, Lcom/lzx/iteam/ForgetActivity$1;->this$0:Lcom/lzx/iteam/ForgetActivity;

    # getter for: Lcom/lzx/iteam/ForgetActivity;->mRegTimeBtn:Lcom/lzx/iteam/widget/TimeButton;
    invoke-static {v3}, Lcom/lzx/iteam/ForgetActivity;->access$2(Lcom/lzx/iteam/ForgetActivity;)Lcom/lzx/iteam/widget/TimeButton;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lzx/iteam/widget/TimeButton;->onClearTask()V

    .line 75
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_2

    .line 76
    iget-object v3, p0, Lcom/lzx/iteam/ForgetActivity$1;->this$0:Lcom/lzx/iteam/ForgetActivity;

    invoke-static {v3, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 77
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 79
    :cond_2
    iget-object v4, p0, Lcom/lzx/iteam/ForgetActivity$1;->this$0:Lcom/lzx/iteam/ForgetActivity;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 80
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 85
    :sswitch_2
    iget-object v3, p0, Lcom/lzx/iteam/ForgetActivity$1;->this$0:Lcom/lzx/iteam/ForgetActivity;

    # getter for: Lcom/lzx/iteam/ForgetActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;
    invoke-static {v3}, Lcom/lzx/iteam/ForgetActivity;->access$3(Lcom/lzx/iteam/ForgetActivity;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v3

    const-string v4, "team_sid"

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 86
    iget-object v3, p0, Lcom/lzx/iteam/ForgetActivity$1;->this$0:Lcom/lzx/iteam/ForgetActivity;

    # getter for: Lcom/lzx/iteam/ForgetActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;
    invoke-static {v3}, Lcom/lzx/iteam/ForgetActivity;->access$3(Lcom/lzx/iteam/ForgetActivity;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v3

    const-string v4, "user_phone"

    iget-object v5, p0, Lcom/lzx/iteam/ForgetActivity$1;->this$0:Lcom/lzx/iteam/ForgetActivity;

    # getter for: Lcom/lzx/iteam/ForgetActivity;->mPhoneNum:Ljava/lang/String;
    invoke-static {v5}, Lcom/lzx/iteam/ForgetActivity;->access$4(Lcom/lzx/iteam/ForgetActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 87
    iget-object v3, p0, Lcom/lzx/iteam/ForgetActivity$1;->this$0:Lcom/lzx/iteam/ForgetActivity;

    # getter for: Lcom/lzx/iteam/ForgetActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;
    invoke-static {v3}, Lcom/lzx/iteam/ForgetActivity;->access$3(Lcom/lzx/iteam/ForgetActivity;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v3

    const-string v4, "user_pass"

    iget-object v5, p0, Lcom/lzx/iteam/ForgetActivity$1;->this$0:Lcom/lzx/iteam/ForgetActivity;

    # getter for: Lcom/lzx/iteam/ForgetActivity;->mPasswd:Ljava/lang/String;
    invoke-static {v5}, Lcom/lzx/iteam/ForgetActivity;->access$5(Lcom/lzx/iteam/ForgetActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 88
    iget-object v3, p0, Lcom/lzx/iteam/ForgetActivity$1;->this$0:Lcom/lzx/iteam/ForgetActivity;

    # invokes: Lcom/lzx/iteam/ForgetActivity;->handleActiveDone(Landroid/os/Message;)V
    invoke-static {v3, p1}, Lcom/lzx/iteam/ForgetActivity;->access$6(Lcom/lzx/iteam/ForgetActivity;Landroid/os/Message;)V

    goto :goto_0

    .line 91
    :sswitch_3
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 93
    iget-object v3, p0, Lcom/lzx/iteam/ForgetActivity$1;->this$0:Lcom/lzx/iteam/ForgetActivity;

    # invokes: Lcom/lzx/iteam/ForgetActivity;->httpReqDlgDismiss()V
    invoke-static {v3}, Lcom/lzx/iteam/ForgetActivity;->access$7(Lcom/lzx/iteam/ForgetActivity;)V

    .line 94
    iget-object v3, p0, Lcom/lzx/iteam/ForgetActivity$1;->this$0:Lcom/lzx/iteam/ForgetActivity;

    # getter for: Lcom/lzx/iteam/ForgetActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;
    invoke-static {v3}, Lcom/lzx/iteam/ForgetActivity;->access$3(Lcom/lzx/iteam/ForgetActivity;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v3

    const-string v4, "isLogin"

    const-string v5, "yes"

    invoke-virtual {v3, v4, v5}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 95
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 96
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/lzx/iteam/ForgetActivity$1;->this$0:Lcom/lzx/iteam/ForgetActivity;

    const-class v4, Lcom/lzx/iteam/MainActivity;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 97
    const/high16 v3, 0x24000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 98
    iget-object v3, p0, Lcom/lzx/iteam/ForgetActivity$1;->this$0:Lcom/lzx/iteam/ForgetActivity;

    invoke-virtual {v3, v1}, Lcom/lzx/iteam/ForgetActivity;->startActivity(Landroid/content/Intent;)V

    .line 99
    iget-object v3, p0, Lcom/lzx/iteam/ForgetActivity$1;->this$0:Lcom/lzx/iteam/ForgetActivity;

    invoke-virtual {v3}, Lcom/lzx/iteam/ForgetActivity;->finish()V

    .line 100
    sget-object v3, Lcom/lzx/iteam/LoginActivity;->instance:Lcom/lzx/iteam/LoginActivity;

    invoke-virtual {v3}, Lcom/lzx/iteam/LoginActivity;->finish()V

    goto/16 :goto_0

    .line 106
    .end local v1    # "intent":Landroid/content/Intent;
    :sswitch_4
    iget v3, p1, Landroid/os/Message;->arg1:I

    goto/16 :goto_0

    .line 110
    :sswitch_5
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_0

    .line 112
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_3

    .line 113
    iget-object v3, p0, Lcom/lzx/iteam/ForgetActivity$1;->this$0:Lcom/lzx/iteam/ForgetActivity;

    invoke-virtual {v3, v6}, Lcom/lzx/iteam/ForgetActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "error":Ljava/lang/String;
    iget-object v3, p0, Lcom/lzx/iteam/ForgetActivity$1;->this$0:Lcom/lzx/iteam/ForgetActivity;

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 115
    .end local v0    # "error":Ljava/lang/String;
    :cond_3
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x3ea

    if-eq v3, v4, :cond_0

    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x3eb

    if-eq v3, v4, :cond_0

    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x3ed

    if-eq v3, v4, :cond_0

    .line 117
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_4

    .line 118
    iget-object v4, p0, Lcom/lzx/iteam/ForgetActivity$1;->this$0:Lcom/lzx/iteam/ForgetActivity;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 119
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 121
    :cond_4
    iget-object v3, p0, Lcom/lzx/iteam/ForgetActivity$1;->this$0:Lcom/lzx/iteam/ForgetActivity;

    const v4, 0x7f080044

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 122
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 68
    :sswitch_data_0
    .sparse-switch
        0x6fd -> :sswitch_5
        0x7d0 -> :sswitch_1
        0x7d1 -> :sswitch_2
        0x7d7 -> :sswitch_3
        0x7d8 -> :sswitch_0
        0x7d9 -> :sswitch_4
    .end sparse-switch
.end method
