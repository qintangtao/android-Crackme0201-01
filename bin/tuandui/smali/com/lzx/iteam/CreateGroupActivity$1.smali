.class Lcom/lzx/iteam/CreateGroupActivity$1;
.super Landroid/os/Handler;
.source "CreateGroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/CreateGroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/CreateGroupActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/CreateGroupActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/CreateGroupActivity$1;->this$0:Lcom/lzx/iteam/CreateGroupActivity;

    .line 58
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    .line 63
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 65
    :pswitch_0
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-nez v4, :cond_1

    .line 66
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    .line 67
    .local v1, "js":Lorg/json/JSONObject;
    const-wide/16 v2, -0x1

    .line 70
    .local v2, "id":J
    :try_start_0
    const-string v4, "data"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "group_id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 75
    :goto_1
    iget-object v4, p0, Lcom/lzx/iteam/CreateGroupActivity$1;->this$0:Lcom/lzx/iteam/CreateGroupActivity;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    # invokes: Lcom/lzx/iteam/CreateGroupActivity;->saveCloudGroup(Ljava/lang/Long;)V
    invoke-static {v4, v5}, Lcom/lzx/iteam/CreateGroupActivity;->access$0(Lcom/lzx/iteam/CreateGroupActivity;Ljava/lang/Long;)V

    .line 76
    iget-object v4, p0, Lcom/lzx/iteam/CreateGroupActivity$1;->this$0:Lcom/lzx/iteam/CreateGroupActivity;

    # getter for: Lcom/lzx/iteam/CreateGroupActivity;->listCenter:Lcom/lzx/iteam/net/CloudGroupListCenter;
    invoke-static {v4}, Lcom/lzx/iteam/CreateGroupActivity;->access$1(Lcom/lzx/iteam/CreateGroupActivity;)Lcom/lzx/iteam/net/CloudGroupListCenter;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 78
    iget-object v4, p0, Lcom/lzx/iteam/CreateGroupActivity$1;->this$0:Lcom/lzx/iteam/CreateGroupActivity;

    # getter for: Lcom/lzx/iteam/CreateGroupActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/lzx/iteam/CreateGroupActivity;->access$2(Lcom/lzx/iteam/CreateGroupActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 79
    iget-object v4, p0, Lcom/lzx/iteam/CreateGroupActivity$1;->this$0:Lcom/lzx/iteam/CreateGroupActivity;

    const/16 v5, 0x66

    invoke-virtual {v4, v5}, Lcom/lzx/iteam/CreateGroupActivity;->setResult(I)V

    .line 104
    iget-object v4, p0, Lcom/lzx/iteam/CreateGroupActivity$1;->this$0:Lcom/lzx/iteam/CreateGroupActivity;

    # invokes: Lcom/lzx/iteam/CreateGroupActivity;->showSuccessLayout()V
    invoke-static {v4}, Lcom/lzx/iteam/CreateGroupActivity;->access$3(Lcom/lzx/iteam/CreateGroupActivity;)V

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 107
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "js":Lorg/json/JSONObject;
    .end local v2    # "id":J
    :cond_1
    iget-object v4, p0, Lcom/lzx/iteam/CreateGroupActivity$1;->this$0:Lcom/lzx/iteam/CreateGroupActivity;

    # getter for: Lcom/lzx/iteam/CreateGroupActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/lzx/iteam/CreateGroupActivity;->access$2(Lcom/lzx/iteam/CreateGroupActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 108
    iget v4, p1, Landroid/os/Message;->arg1:I

    const/16 v5, 0x1f41

    if-ne v4, v5, :cond_2

    .line 109
    iget-object v4, p0, Lcom/lzx/iteam/CreateGroupActivity$1;->this$0:Lcom/lzx/iteam/CreateGroupActivity;

    const v5, 0x7f080042

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    .line 110
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 112
    :cond_2
    iget-object v5, p0, Lcom/lzx/iteam/CreateGroupActivity$1;->this$0:Lcom/lzx/iteam/CreateGroupActivity;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v5, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 113
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
