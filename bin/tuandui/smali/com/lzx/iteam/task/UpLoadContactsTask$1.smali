.class Lcom/lzx/iteam/task/UpLoadContactsTask$1;
.super Landroid/os/Handler;
.source "UpLoadContactsTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/task/UpLoadContactsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/task/UpLoadContactsTask;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/task/UpLoadContactsTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/task/UpLoadContactsTask$1;->this$0:Lcom/lzx/iteam/task/UpLoadContactsTask;

    .line 46
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 49
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 50
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 52
    :pswitch_0
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_0

    .line 54
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x1f41

    if-ne v3, v4, :cond_1

    .line 55
    iget-object v3, p0, Lcom/lzx/iteam/task/UpLoadContactsTask$1;->this$0:Lcom/lzx/iteam/task/UpLoadContactsTask;

    # getter for: Lcom/lzx/iteam/task/UpLoadContactsTask;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/lzx/iteam/task/UpLoadContactsTask;->access$2(Lcom/lzx/iteam/task/UpLoadContactsTask;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080042

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "error":Ljava/lang/String;
    iget-object v3, p0, Lcom/lzx/iteam/task/UpLoadContactsTask$1;->this$0:Lcom/lzx/iteam/task/UpLoadContactsTask;

    # getter for: Lcom/lzx/iteam/task/UpLoadContactsTask;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/lzx/iteam/task/UpLoadContactsTask;->access$2(Lcom/lzx/iteam/task/UpLoadContactsTask;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 57
    .end local v1    # "error":Ljava/lang/String;
    :cond_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 58
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/json/JSONObject;

    .line 60
    .local v2, "result":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "msg"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .restart local v1    # "error":Ljava/lang/String;
    iget-object v3, p0, Lcom/lzx/iteam/task/UpLoadContactsTask$1;->this$0:Lcom/lzx/iteam/task/UpLoadContactsTask;

    # getter for: Lcom/lzx/iteam/task/UpLoadContactsTask;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/lzx/iteam/task/UpLoadContactsTask;->access$2(Lcom/lzx/iteam/task/UpLoadContactsTask;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    .end local v1    # "error":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 66
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "result":Lorg/json/JSONObject;
    :cond_2
    iget-object v3, p0, Lcom/lzx/iteam/task/UpLoadContactsTask$1;->this$0:Lcom/lzx/iteam/task/UpLoadContactsTask;

    # getter for: Lcom/lzx/iteam/task/UpLoadContactsTask;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/lzx/iteam/task/UpLoadContactsTask;->access$2(Lcom/lzx/iteam/task/UpLoadContactsTask;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080044

    .line 67
    const/4 v5, 0x1

    .line 66
    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 67
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x2329
        :pswitch_0
    .end packed-switch
.end method
