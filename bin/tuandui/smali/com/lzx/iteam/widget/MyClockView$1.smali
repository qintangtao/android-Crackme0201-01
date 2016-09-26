.class Lcom/lzx/iteam/widget/MyClockView$1;
.super Landroid/os/Handler;
.source "MyClockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/widget/MyClockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/widget/MyClockView;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/widget/MyClockView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/widget/MyClockView$1;->this$0:Lcom/lzx/iteam/widget/MyClockView;

    .line 33
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 36
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 46
    :goto_0
    return-void

    .line 38
    :pswitch_0
    iget-object v0, p0, Lcom/lzx/iteam/widget/MyClockView$1;->this$0:Lcom/lzx/iteam/widget/MyClockView;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lzx/iteam/widget/MyClockView;->access$0(Lcom/lzx/iteam/widget/MyClockView;Ljava/util/Calendar;)V

    .line 39
    iget-object v0, p0, Lcom/lzx/iteam/widget/MyClockView$1;->this$0:Lcom/lzx/iteam/widget/MyClockView;

    invoke-virtual {v0}, Lcom/lzx/iteam/widget/MyClockView;->invalidate()V

    .line 40
    iget-object v0, p0, Lcom/lzx/iteam/widget/MyClockView$1;->this$0:Lcom/lzx/iteam/widget/MyClockView;

    # getter for: Lcom/lzx/iteam/widget/MyClockView;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lzx/iteam/widget/MyClockView;->access$1(Lcom/lzx/iteam/widget/MyClockView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x23

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 36
    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_0
    .end packed-switch
.end method
