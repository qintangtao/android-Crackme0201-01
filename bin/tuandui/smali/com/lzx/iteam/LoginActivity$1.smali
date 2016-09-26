.class Lcom/lzx/iteam/LoginActivity$1;
.super Landroid/os/Handler;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/LoginActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/LoginActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/LoginActivity$1;->this$0:Lcom/lzx/iteam/LoginActivity;

    .line 77
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/LoginActivity$1;)Lcom/lzx/iteam/LoginActivity;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lzx/iteam/LoginActivity$1;->this$0:Lcom/lzx/iteam/LoginActivity;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 80
    iget v2, p1, Landroid/os/Message;->what:I

    .line 81
    .local v2, "what":I
    sparse-switch v2, :sswitch_data_0

    .line 153
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 83
    :sswitch_1
    iget-object v3, p0, Lcom/lzx/iteam/LoginActivity$1;->this$0:Lcom/lzx/iteam/LoginActivity;

    # invokes: Lcom/lzx/iteam/LoginActivity;->handleLoginDone(Landroid/os/Message;)V
    invoke-static {v3, p1}, Lcom/lzx/iteam/LoginActivity;->access$0(Lcom/lzx/iteam/LoginActivity;Landroid/os/Message;)V

    .line 84
    iget-object v3, p0, Lcom/lzx/iteam/LoginActivity$1;->this$0:Lcom/lzx/iteam/LoginActivity;

    # getter for: Lcom/lzx/iteam/LoginActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;
    invoke-static {v3}, Lcom/lzx/iteam/LoginActivity;->access$1(Lcom/lzx/iteam/LoginActivity;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v3

    const-string v4, "team_sid"

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 85
    iget-object v3, p0, Lcom/lzx/iteam/LoginActivity$1;->this$0:Lcom/lzx/iteam/LoginActivity;

    # getter for: Lcom/lzx/iteam/LoginActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;
    invoke-static {v3}, Lcom/lzx/iteam/LoginActivity;->access$1(Lcom/lzx/iteam/LoginActivity;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v3

    const-string v4, "user_phone"

    iget-object v5, p0, Lcom/lzx/iteam/LoginActivity$1;->this$0:Lcom/lzx/iteam/LoginActivity;

    # getter for: Lcom/lzx/iteam/LoginActivity;->mPhoneNum:Ljava/lang/String;
    invoke-static {v5}, Lcom/lzx/iteam/LoginActivity;->access$2(Lcom/lzx/iteam/LoginActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 86
    iget-object v3, p0, Lcom/lzx/iteam/LoginActivity$1;->this$0:Lcom/lzx/iteam/LoginActivity;

    # getter for: Lcom/lzx/iteam/LoginActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;
    invoke-static {v3}, Lcom/lzx/iteam/LoginActivity;->access$1(Lcom/lzx/iteam/LoginActivity;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v3

    const-string v4, "user_pass"

    iget-object v5, p0, Lcom/lzx/iteam/LoginActivity$1;->this$0:Lcom/lzx/iteam/LoginActivity;

    # getter for: Lcom/lzx/iteam/LoginActivity;->mPasswd:Ljava/lang/String;
    invoke-static {v5}, Lcom/lzx/iteam/LoginActivity;->access$3(Lcom/lzx/iteam/LoginActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    .line 100
    :sswitch_2
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 102
    iget-object v3, p0, Lcom/lzx/iteam/LoginActivity$1;->this$0:Lcom/lzx/iteam/LoginActivity;

    # invokes: Lcom/lzx/iteam/LoginActivity;->httpReqDlgDismiss()V
    invoke-static {v3}, Lcom/lzx/iteam/LoginActivity;->access$4(Lcom/lzx/iteam/LoginActivity;)V

    .line 103
    iget-object v3, p0, Lcom/lzx/iteam/LoginActivity$1;->this$0:Lcom/lzx/iteam/LoginActivity;

    # getter for: Lcom/lzx/iteam/LoginActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;
    invoke-static {v3}, Lcom/lzx/iteam/LoginActivity;->access$1(Lcom/lzx/iteam/LoginActivity;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v3

    const-string v4, "isLogin"

    const-string v5, "yes"

    invoke-virtual {v3, v4, v5}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 104
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/lzx/iteam/LoginActivity$1;->this$0:Lcom/lzx/iteam/LoginActivity;

    const-class v4, Lcom/lzx/iteam/MainActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x24000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 106
    iget-object v3, p0, Lcom/lzx/iteam/LoginActivity$1;->this$0:Lcom/lzx/iteam/LoginActivity;

    invoke-virtual {v3, v1}, Lcom/lzx/iteam/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 107
    iget-object v3, p0, Lcom/lzx/iteam/LoginActivity$1;->this$0:Lcom/lzx/iteam/LoginActivity;

    invoke-virtual {v3}, Lcom/lzx/iteam/LoginActivity;->finish()V

    .line 108
    iget-object v3, p0, Lcom/lzx/iteam/LoginActivity$1;->this$0:Lcom/lzx/iteam/LoginActivity;

    # getter for: Lcom/lzx/iteam/LoginActivity;->isRegist:Z
    invoke-static {v3}, Lcom/lzx/iteam/LoginActivity;->access$5(Lcom/lzx/iteam/LoginActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 109
    sget-object v3, Lcom/lzx/iteam/RegisterActivity;->instance:Lcom/lzx/iteam/RegisterActivity;

    invoke-virtual {v3}, Lcom/lzx/iteam/RegisterActivity;->finish()V

    goto :goto_0

    .line 113
    .end local v1    # "intent":Landroid/content/Intent;
    :sswitch_3
    new-instance v3, Lcom/lzx/iteam/LoginActivity$1$1;

    invoke-direct {v3, p0}, Lcom/lzx/iteam/LoginActivity$1$1;-><init>(Lcom/lzx/iteam/LoginActivity$1;)V

    new-array v4, v5, [Ljava/lang/String;

    .line 129
    invoke-virtual {v3, v4}, Lcom/lzx/iteam/LoginActivity$1$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 133
    :sswitch_4
    iget v3, p1, Landroid/os/Message;->arg1:I

    goto/16 :goto_0

    .line 137
    :sswitch_5
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_0

    .line 139
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x1f41

    if-ne v3, v4, :cond_1

    .line 140
    iget-object v3, p0, Lcom/lzx/iteam/LoginActivity$1;->this$0:Lcom/lzx/iteam/LoginActivity;

    const v4, 0x7f080042

    invoke-virtual {v3, v4}, Lcom/lzx/iteam/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "error":Ljava/lang/String;
    iget-object v3, p0, Lcom/lzx/iteam/LoginActivity$1;->this$0:Lcom/lzx/iteam/LoginActivity;

    # getter for: Lcom/lzx/iteam/LoginActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/lzx/iteam/LoginActivity;->access$7(Lcom/lzx/iteam/LoginActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 142
    .end local v0    # "error":Ljava/lang/String;
    :cond_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x3ea

    if-eq v3, v4, :cond_0

    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x3eb

    if-eq v3, v4, :cond_0

    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x3ed

    if-eq v3, v4, :cond_0

    .line 144
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 145
    iget-object v3, p0, Lcom/lzx/iteam/LoginActivity$1;->this$0:Lcom/lzx/iteam/LoginActivity;

    # getter for: Lcom/lzx/iteam/LoginActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/lzx/iteam/LoginActivity;->access$7(Lcom/lzx/iteam/LoginActivity;)Landroid/content/Context;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 146
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 148
    :cond_2
    iget-object v3, p0, Lcom/lzx/iteam/LoginActivity$1;->this$0:Lcom/lzx/iteam/LoginActivity;

    # getter for: Lcom/lzx/iteam/LoginActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/lzx/iteam/LoginActivity;->access$7(Lcom/lzx/iteam/LoginActivity;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080044

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 149
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 81
    nop

    :sswitch_data_0
    .sparse-switch
        0x6fd -> :sswitch_5
        0x7d3 -> :sswitch_1
        0x7d6 -> :sswitch_0
        0x7d7 -> :sswitch_2
        0x7d8 -> :sswitch_3
        0x7d9 -> :sswitch_4
    .end sparse-switch
.end method
