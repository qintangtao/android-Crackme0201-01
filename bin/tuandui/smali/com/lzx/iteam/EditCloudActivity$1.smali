.class Lcom/lzx/iteam/EditCloudActivity$1;
.super Landroid/os/Handler;
.source "EditCloudActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/EditCloudActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/EditCloudActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/EditCloudActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/EditCloudActivity$1;->this$0:Lcom/lzx/iteam/EditCloudActivity;

    .line 123
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 126
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 146
    :goto_0
    return-void

    .line 128
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/lzx/iteam/EditCloudActivity$1;->this$0:Lcom/lzx/iteam/EditCloudActivity;

    const-string v1, "\u4fee\u6539\u6210\u529f"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 130
    iget-object v0, p0, Lcom/lzx/iteam/EditCloudActivity$1;->this$0:Lcom/lzx/iteam/EditCloudActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/EditCloudActivity;->setResult(I)V

    .line 131
    iget-object v0, p0, Lcom/lzx/iteam/EditCloudActivity$1;->this$0:Lcom/lzx/iteam/EditCloudActivity;

    invoke-virtual {v0}, Lcom/lzx/iteam/EditCloudActivity;->finish()V

    goto :goto_0

    .line 134
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x1f41

    if-ne v0, v1, :cond_1

    .line 135
    iget-object v0, p0, Lcom/lzx/iteam/EditCloudActivity$1;->this$0:Lcom/lzx/iteam/EditCloudActivity;

    const v1, 0x7f080042

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 138
    :cond_1
    iget-object v1, p0, Lcom/lzx/iteam/EditCloudActivity$1;->this$0:Lcom/lzx/iteam/EditCloudActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x2766
        :pswitch_0
    .end packed-switch
.end method
