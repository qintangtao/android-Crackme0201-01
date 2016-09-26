.class Lcom/lzx/iteam/QrCodeAddActivity$1;
.super Landroid/os/Handler;
.source "QrCodeAddActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/QrCodeAddActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/QrCodeAddActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/QrCodeAddActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/QrCodeAddActivity$1;->this$0:Lcom/lzx/iteam/QrCodeAddActivity;

    .line 61
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 64
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 65
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 90
    :goto_0
    return-void

    .line 67
    :pswitch_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_0

    .line 68
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    .line 70
    .local v1, "result":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    iget-object v2, p0, Lcom/lzx/iteam/QrCodeAddActivity$1;->this$0:Lcom/lzx/iteam/QrCodeAddActivity;

    const-string v3, "\u6dfb\u52a0\u6210\u529f"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 73
    iget-object v2, p0, Lcom/lzx/iteam/QrCodeAddActivity$1;->this$0:Lcom/lzx/iteam/QrCodeAddActivity;

    invoke-virtual {v2}, Lcom/lzx/iteam/QrCodeAddActivity;->finish()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v1    # "result":Lorg/json/JSONObject;
    :goto_1
    iget-object v2, p0, Lcom/lzx/iteam/QrCodeAddActivity$1;->this$0:Lcom/lzx/iteam/QrCodeAddActivity;

    # getter for: Lcom/lzx/iteam/QrCodeAddActivity;->mDialog:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/lzx/iteam/QrCodeAddActivity;->access$0(Lcom/lzx/iteam/QrCodeAddActivity;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 74
    .restart local v1    # "result":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 78
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "result":Lorg/json/JSONObject;
    :cond_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0x1f41

    if-ne v2, v3, :cond_1

    .line 79
    iget-object v2, p0, Lcom/lzx/iteam/QrCodeAddActivity$1;->this$0:Lcom/lzx/iteam/QrCodeAddActivity;

    const v3, 0x7f080042

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 80
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 82
    :cond_1
    iget-object v3, p0, Lcom/lzx/iteam/QrCodeAddActivity$1;->this$0:Lcom/lzx/iteam/QrCodeAddActivity;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 83
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 65
    :pswitch_data_0
    .packed-switch 0x4e2
        :pswitch_0
    .end packed-switch
.end method
