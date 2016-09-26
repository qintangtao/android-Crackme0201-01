.class Lcom/lzx/iteam/ApprovalCreateActivity$1;
.super Landroid/os/Handler;
.source "ApprovalCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/ApprovalCreateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ApprovalCreateActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ApprovalCreateActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ApprovalCreateActivity$1;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    .line 125
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 129
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 140
    :goto_0
    return-void

    .line 131
    :pswitch_0
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalCreateActivity$1;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    # invokes: Lcom/lzx/iteam/ApprovalCreateActivity;->httpReqDlgDismiss()V
    invoke-static {v0}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$0(Lcom/lzx/iteam/ApprovalCreateActivity;)V

    .line 132
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalCreateActivity$1;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    const-string v1, "\u521b\u5efa\u6210\u529f"

    # invokes: Lcom/lzx/iteam/ApprovalCreateActivity;->showShortToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$1(Lcom/lzx/iteam/ApprovalCreateActivity;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalCreateActivity$1;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    invoke-virtual {v0}, Lcom/lzx/iteam/ApprovalCreateActivity;->finish()V

    goto :goto_0

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/ApprovalCreateActivity$1;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    # invokes: Lcom/lzx/iteam/ApprovalCreateActivity;->showShortToast(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$1(Lcom/lzx/iteam/ApprovalCreateActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x7532
        :pswitch_0
    .end packed-switch
.end method
