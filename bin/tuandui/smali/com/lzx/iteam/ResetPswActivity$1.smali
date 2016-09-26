.class Lcom/lzx/iteam/ResetPswActivity$1;
.super Landroid/os/Handler;
.source "ResetPswActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/ResetPswActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ResetPswActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ResetPswActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ResetPswActivity$1;->this$0:Lcom/lzx/iteam/ResetPswActivity;

    .line 43
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v6, 0x7f08002c

    .line 46
    iget v1, p1, Landroid/os/Message;->what:I

    .line 47
    .local v1, "what":I
    packed-switch v1, :pswitch_data_0

    .line 112
    :goto_0
    return-void

    .line 49
    :pswitch_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_0

    .line 50
    iget-object v2, p0, Lcom/lzx/iteam/ResetPswActivity$1;->this$0:Lcom/lzx/iteam/ResetPswActivity;

    # getter for: Lcom/lzx/iteam/ResetPswActivity;->dialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;
    invoke-static {v2}, Lcom/lzx/iteam/ResetPswActivity;->access$0(Lcom/lzx/iteam/ResetPswActivity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v2

    const-string v3, "\u63d0\u793a"

    iget-object v4, p0, Lcom/lzx/iteam/ResetPswActivity$1;->this$0:Lcom/lzx/iteam/ResetPswActivity;

    const v5, 0x7f08005c

    invoke-virtual {v4, v5}, Lcom/lzx/iteam/ResetPswActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/lzx/iteam/ResetPswActivity$1;->this$0:Lcom/lzx/iteam/ResetPswActivity;

    invoke-virtual {v5, v6}, Lcom/lzx/iteam/ResetPswActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/lzx/iteam/util/AllDialogUtil;->titleMsgBtnStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 51
    iget-object v2, p0, Lcom/lzx/iteam/ResetPswActivity$1;->this$0:Lcom/lzx/iteam/ResetPswActivity;

    # getter for: Lcom/lzx/iteam/ResetPswActivity;->dialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;
    invoke-static {v2}, Lcom/lzx/iteam/ResetPswActivity;->access$0(Lcom/lzx/iteam/ResetPswActivity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v2

    new-instance v3, Lcom/lzx/iteam/ResetPswActivity$1$1;

    invoke-direct {v3, p0}, Lcom/lzx/iteam/ResetPswActivity$1$1;-><init>(Lcom/lzx/iteam/ResetPswActivity$1;)V

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/util/AllDialogUtil;->setOnDialogListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;)V

    .line 108
    :goto_1
    iget-object v2, p0, Lcom/lzx/iteam/ResetPswActivity$1;->this$0:Lcom/lzx/iteam/ResetPswActivity;

    # invokes: Lcom/lzx/iteam/ResetPswActivity;->httpReqDlgDismiss()V
    invoke-static {v2}, Lcom/lzx/iteam/ResetPswActivity;->access$1(Lcom/lzx/iteam/ResetPswActivity;)V

    goto :goto_0

    .line 63
    :cond_0
    const-string v0, "\u4fee\u6539\u5931\u8d25"

    .line 64
    .local v0, "str":Ljava/lang/String;
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0x1f41

    if-ne v2, v3, :cond_1

    .line 66
    iget-object v2, p0, Lcom/lzx/iteam/ResetPswActivity$1;->this$0:Lcom/lzx/iteam/ResetPswActivity;

    const v3, 0x7f080042

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/ResetPswActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    :goto_2
    iget-object v2, p0, Lcom/lzx/iteam/ResetPswActivity$1;->this$0:Lcom/lzx/iteam/ResetPswActivity;

    # getter for: Lcom/lzx/iteam/ResetPswActivity;->dialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;
    invoke-static {v2}, Lcom/lzx/iteam/ResetPswActivity;->access$0(Lcom/lzx/iteam/ResetPswActivity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v2

    const-string v3, "\u4fee\u6539\u5931\u8d25"

    iget-object v4, p0, Lcom/lzx/iteam/ResetPswActivity$1;->this$0:Lcom/lzx/iteam/ResetPswActivity;

    invoke-virtual {v4, v6}, Lcom/lzx/iteam/ResetPswActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4}, Lcom/lzx/iteam/util/AllDialogUtil;->titleMsgBtnStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 73
    iget-object v2, p0, Lcom/lzx/iteam/ResetPswActivity$1;->this$0:Lcom/lzx/iteam/ResetPswActivity;

    # getter for: Lcom/lzx/iteam/ResetPswActivity;->dialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;
    invoke-static {v2}, Lcom/lzx/iteam/ResetPswActivity;->access$0(Lcom/lzx/iteam/ResetPswActivity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v2

    new-instance v3, Lcom/lzx/iteam/ResetPswActivity$1$2;

    invoke-direct {v3, p0}, Lcom/lzx/iteam/ResetPswActivity$1$2;-><init>(Lcom/lzx/iteam/ResetPswActivity$1;)V

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/util/AllDialogUtil;->setOnDialogListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;)V

    goto :goto_1

    .line 69
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "str":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "str":Ljava/lang/String;
    goto :goto_2

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x7d6
        :pswitch_0
    .end packed-switch
.end method
