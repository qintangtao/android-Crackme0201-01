.class Lcom/lzx/iteam/RegisterActivity$1;
.super Landroid/os/Handler;
.source "RegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/RegisterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/RegisterActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/RegisterActivity$1;->this$0:Lcom/lzx/iteam/RegisterActivity;

    .line 63
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 65
    iget v1, p1, Landroid/os/Message;->what:I

    .line 66
    .local v1, "what":I
    packed-switch v1, :pswitch_data_0

    .line 107
    :goto_0
    :pswitch_0
    return-void

    .line 68
    :pswitch_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_0

    .line 69
    iget-object v2, p0, Lcom/lzx/iteam/RegisterActivity$1;->this$0:Lcom/lzx/iteam/RegisterActivity;

    # invokes: Lcom/lzx/iteam/RegisterActivity;->showAlertDialog()V
    invoke-static {v2}, Lcom/lzx/iteam/RegisterActivity;->access$0(Lcom/lzx/iteam/RegisterActivity;)V

    goto :goto_0

    .line 71
    :cond_0
    iget-object v2, p0, Lcom/lzx/iteam/RegisterActivity$1;->this$0:Lcom/lzx/iteam/RegisterActivity;

    # getter for: Lcom/lzx/iteam/RegisterActivity;->mRegTimeBtn:Lcom/lzx/iteam/widget/TimeButton;
    invoke-static {v2}, Lcom/lzx/iteam/RegisterActivity;->access$1(Lcom/lzx/iteam/RegisterActivity;)Lcom/lzx/iteam/widget/TimeButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lzx/iteam/widget/TimeButton;->onClearTask()V

    .line 72
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0x1f41

    if-ne v2, v3, :cond_1

    .line 73
    iget-object v2, p0, Lcom/lzx/iteam/RegisterActivity$1;->this$0:Lcom/lzx/iteam/RegisterActivity;

    const v3, 0x7f080042

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 74
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 76
    :cond_1
    iget-object v3, p0, Lcom/lzx/iteam/RegisterActivity$1;->this$0:Lcom/lzx/iteam/RegisterActivity;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 77
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 82
    :pswitch_2
    iget-object v2, p0, Lcom/lzx/iteam/RegisterActivity$1;->this$0:Lcom/lzx/iteam/RegisterActivity;

    # getter for: Lcom/lzx/iteam/RegisterActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;
    invoke-static {v2}, Lcom/lzx/iteam/RegisterActivity;->access$2(Lcom/lzx/iteam/RegisterActivity;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v2

    const-string v3, "team_sid"

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 83
    iget-object v2, p0, Lcom/lzx/iteam/RegisterActivity$1;->this$0:Lcom/lzx/iteam/RegisterActivity;

    # getter for: Lcom/lzx/iteam/RegisterActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;
    invoke-static {v2}, Lcom/lzx/iteam/RegisterActivity;->access$2(Lcom/lzx/iteam/RegisterActivity;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v2

    const-string v3, "user_phone"

    iget-object v4, p0, Lcom/lzx/iteam/RegisterActivity$1;->this$0:Lcom/lzx/iteam/RegisterActivity;

    # getter for: Lcom/lzx/iteam/RegisterActivity;->mPhoneNum:Ljava/lang/String;
    invoke-static {v4}, Lcom/lzx/iteam/RegisterActivity;->access$3(Lcom/lzx/iteam/RegisterActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 84
    iget-object v2, p0, Lcom/lzx/iteam/RegisterActivity$1;->this$0:Lcom/lzx/iteam/RegisterActivity;

    # getter for: Lcom/lzx/iteam/RegisterActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;
    invoke-static {v2}, Lcom/lzx/iteam/RegisterActivity;->access$2(Lcom/lzx/iteam/RegisterActivity;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v2

    const-string v3, "user_pass"

    iget-object v4, p0, Lcom/lzx/iteam/RegisterActivity$1;->this$0:Lcom/lzx/iteam/RegisterActivity;

    # getter for: Lcom/lzx/iteam/RegisterActivity;->mPasswd:Ljava/lang/String;
    invoke-static {v4}, Lcom/lzx/iteam/RegisterActivity;->access$4(Lcom/lzx/iteam/RegisterActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 85
    iget-object v2, p0, Lcom/lzx/iteam/RegisterActivity$1;->this$0:Lcom/lzx/iteam/RegisterActivity;

    # invokes: Lcom/lzx/iteam/RegisterActivity;->handleActiveDone(Landroid/os/Message;)V
    invoke-static {v2, p1}, Lcom/lzx/iteam/RegisterActivity;->access$5(Lcom/lzx/iteam/RegisterActivity;Landroid/os/Message;)V

    goto :goto_0

    .line 88
    :pswitch_3
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 90
    iget-object v2, p0, Lcom/lzx/iteam/RegisterActivity$1;->this$0:Lcom/lzx/iteam/RegisterActivity;

    # invokes: Lcom/lzx/iteam/RegisterActivity;->httpReqDlgDismiss()V
    invoke-static {v2}, Lcom/lzx/iteam/RegisterActivity;->access$6(Lcom/lzx/iteam/RegisterActivity;)V

    .line 91
    iget-object v2, p0, Lcom/lzx/iteam/RegisterActivity$1;->this$0:Lcom/lzx/iteam/RegisterActivity;

    # getter for: Lcom/lzx/iteam/RegisterActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;
    invoke-static {v2}, Lcom/lzx/iteam/RegisterActivity;->access$2(Lcom/lzx/iteam/RegisterActivity;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v2

    const-string v3, "isLogin"

    const-string v4, "yes"

    invoke-virtual {v2, v3, v4}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 92
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 93
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/lzx/iteam/RegisterActivity$1;->this$0:Lcom/lzx/iteam/RegisterActivity;

    const-class v3, Lcom/lzx/iteam/MySettingActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 94
    const/high16 v2, 0x24000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 95
    iget-object v2, p0, Lcom/lzx/iteam/RegisterActivity$1;->this$0:Lcom/lzx/iteam/RegisterActivity;

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/RegisterActivity;->startActivity(Landroid/content/Intent;)V

    .line 96
    iget-object v2, p0, Lcom/lzx/iteam/RegisterActivity$1;->this$0:Lcom/lzx/iteam/RegisterActivity;

    invoke-virtual {v2}, Lcom/lzx/iteam/RegisterActivity;->finish()V

    goto/16 :goto_0

    .line 103
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_4
    iget v2, p1, Landroid/os/Message;->arg1:I

    goto/16 :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
