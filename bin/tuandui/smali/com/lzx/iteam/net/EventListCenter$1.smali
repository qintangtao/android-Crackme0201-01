.class Lcom/lzx/iteam/net/EventListCenter$1;
.super Landroid/os/Handler;
.source "EventListCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/net/EventListCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/net/EventListCenter;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/net/EventListCenter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/net/EventListCenter$1;->this$0:Lcom/lzx/iteam/net/EventListCenter;

    .line 46
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/net/EventListCenter$1;)Lcom/lzx/iteam/net/EventListCenter;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lzx/iteam/net/EventListCenter$1;->this$0:Lcom/lzx/iteam/net/EventListCenter;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 49
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 51
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_1

    .line 53
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 59
    iget-object v0, p0, Lcom/lzx/iteam/net/EventListCenter$1;->this$0:Lcom/lzx/iteam/net/EventListCenter;

    # invokes: Lcom/lzx/iteam/net/EventListCenter;->notifyEventList()V
    invoke-static {v0}, Lcom/lzx/iteam/net/EventListCenter;->access$0(Lcom/lzx/iteam/net/EventListCenter;)V

    goto :goto_0

    .line 80
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x1f41

    if-eq v0, v1, :cond_0

    .line 83
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x3ea

    if-eq v0, v1, :cond_2

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x3eb

    if-eq v0, v1, :cond_2

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x3ed

    if-ne v0, v1, :cond_3

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/lzx/iteam/net/EventListCenter$1;->this$0:Lcom/lzx/iteam/net/EventListCenter;

    # getter for: Lcom/lzx/iteam/net/EventListCenter;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;
    invoke-static {v0}, Lcom/lzx/iteam/net/EventListCenter;->access$1(Lcom/lzx/iteam/net/EventListCenter;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v1

    const-string v2, "\u63d0\u793a"

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/lzx/iteam/net/EventListCenter$1;->this$0:Lcom/lzx/iteam/net/EventListCenter;

    # getter for: Lcom/lzx/iteam/net/EventListCenter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/lzx/iteam/net/EventListCenter;->access$2(Lcom/lzx/iteam/net/EventListCenter;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f08002c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/lzx/iteam/util/AllDialogUtil;->titleMsgBtnStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 85
    iget-object v0, p0, Lcom/lzx/iteam/net/EventListCenter$1;->this$0:Lcom/lzx/iteam/net/EventListCenter;

    # getter for: Lcom/lzx/iteam/net/EventListCenter;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;
    invoke-static {v0}, Lcom/lzx/iteam/net/EventListCenter;->access$1(Lcom/lzx/iteam/net/EventListCenter;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v0

    new-instance v1, Lcom/lzx/iteam/net/EventListCenter$1$1;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/net/EventListCenter$1$1;-><init>(Lcom/lzx/iteam/net/EventListCenter$1;)V

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/util/AllDialogUtil;->setOnDialogListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;)V

    goto :goto_0

    .line 108
    :cond_3
    iget-object v0, p0, Lcom/lzx/iteam/net/EventListCenter$1;->this$0:Lcom/lzx/iteam/net/EventListCenter;

    # getter for: Lcom/lzx/iteam/net/EventListCenter;->mListener:Lcom/lzx/iteam/net/EventListCenter$EventDataListener;
    invoke-static {v0}, Lcom/lzx/iteam/net/EventListCenter;->access$3(Lcom/lzx/iteam/net/EventListCenter;)Lcom/lzx/iteam/net/EventListCenter$EventDataListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/net/EventListCenter$1;->this$0:Lcom/lzx/iteam/net/EventListCenter;

    # getter for: Lcom/lzx/iteam/net/EventListCenter;->mListener:Lcom/lzx/iteam/net/EventListCenter$EventDataListener;
    invoke-static {v0}, Lcom/lzx/iteam/net/EventListCenter;->access$3(Lcom/lzx/iteam/net/EventListCenter;)Lcom/lzx/iteam/net/EventListCenter$EventDataListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/lzx/iteam/net/EventListCenter$EventDataListener;->onError(ILjava/lang/String;)V

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
