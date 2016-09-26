.class public Lcom/lzx/iteam/TreeFrag$BackgroundHandler;
.super Landroid/os/Handler;
.source "TreeFrag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/TreeFrag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BackgroundHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/TreeFrag;


# direct methods
.method public constructor <init>(Lcom/lzx/iteam/TreeFrag;)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lcom/lzx/iteam/TreeFrag$BackgroundHandler;->this$0:Lcom/lzx/iteam/TreeFrag;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 397
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 398
    iget v0, p1, Landroid/os/Message;->what:I

    .line 399
    .local v0, "msgId":I
    packed-switch v0, :pswitch_data_0

    .line 412
    :goto_0
    :pswitch_0
    return-void

    .line 401
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_0

    .line 402
    iget-object v1, p0, Lcom/lzx/iteam/TreeFrag$BackgroundHandler;->this$0:Lcom/lzx/iteam/TreeFrag;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, v1, Lcom/lzx/iteam/TreeFrag;->currentPosition:I

    .line 404
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/TreeFrag$BackgroundHandler;->this$0:Lcom/lzx/iteam/TreeFrag;

    iget-object v2, p0, Lcom/lzx/iteam/TreeFrag$BackgroundHandler;->this$0:Lcom/lzx/iteam/TreeFrag;

    # getter for: Lcom/lzx/iteam/TreeFrag;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lzx/iteam/TreeFrag;->access$12(Lcom/lzx/iteam/TreeFrag;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    # invokes: Lcom/lzx/iteam/TreeFrag;->getGroupStructure(Landroid/os/Message;)V
    invoke-static {v1, v2}, Lcom/lzx/iteam/TreeFrag;->access$13(Lcom/lzx/iteam/TreeFrag;Landroid/os/Message;)V

    goto :goto_0

    .line 408
    :pswitch_2
    iget-object v1, p0, Lcom/lzx/iteam/TreeFrag$BackgroundHandler;->this$0:Lcom/lzx/iteam/TreeFrag;

    # invokes: Lcom/lzx/iteam/TreeFrag;->setContact()V
    invoke-static {v1}, Lcom/lzx/iteam/TreeFrag;->access$14(Lcom/lzx/iteam/TreeFrag;)V

    goto :goto_0

    .line 399
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
