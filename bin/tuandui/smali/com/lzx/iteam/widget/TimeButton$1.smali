.class Lcom/lzx/iteam/widget/TimeButton$1;
.super Landroid/os/Handler;
.source "TimeButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/widget/TimeButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/widget/TimeButton;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/widget/TimeButton;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/widget/TimeButton$1;->this$0:Lcom/lzx/iteam/widget/TimeButton;

    .line 55
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v4, 0x3e8

    .line 57
    iget-object v0, p0, Lcom/lzx/iteam/widget/TimeButton$1;->this$0:Lcom/lzx/iteam/widget/TimeButton;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lzx/iteam/widget/TimeButton$1;->this$0:Lcom/lzx/iteam/widget/TimeButton;

    # getter for: Lcom/lzx/iteam/widget/TimeButton;->time:J
    invoke-static {v2}, Lcom/lzx/iteam/widget/TimeButton;->access$0(Lcom/lzx/iteam/widget/TimeButton;)J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lzx/iteam/widget/TimeButton$1;->this$0:Lcom/lzx/iteam/widget/TimeButton;

    # getter for: Lcom/lzx/iteam/widget/TimeButton;->textafter:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/widget/TimeButton;->access$1(Lcom/lzx/iteam/widget/TimeButton;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TimeButton;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lcom/lzx/iteam/widget/TimeButton$1;->this$0:Lcom/lzx/iteam/widget/TimeButton;

    # getter for: Lcom/lzx/iteam/widget/TimeButton;->time:J
    invoke-static {v0}, Lcom/lzx/iteam/widget/TimeButton;->access$0(Lcom/lzx/iteam/widget/TimeButton;)J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/lzx/iteam/widget/TimeButton;->access$2(Lcom/lzx/iteam/widget/TimeButton;J)V

    .line 59
    iget-object v0, p0, Lcom/lzx/iteam/widget/TimeButton$1;->this$0:Lcom/lzx/iteam/widget/TimeButton;

    # getter for: Lcom/lzx/iteam/widget/TimeButton;->time:J
    invoke-static {v0}, Lcom/lzx/iteam/widget/TimeButton;->access$0(Lcom/lzx/iteam/widget/TimeButton;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/lzx/iteam/widget/TimeButton$1;->this$0:Lcom/lzx/iteam/widget/TimeButton;

    invoke-virtual {v0}, Lcom/lzx/iteam/widget/TimeButton;->onClearTask()V

    .line 62
    :cond_0
    return-void
.end method
