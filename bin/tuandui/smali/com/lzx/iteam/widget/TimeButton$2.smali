.class Lcom/lzx/iteam/widget/TimeButton$2;
.super Ljava/util/TimerTask;
.source "TimeButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/widget/TimeButton;->initTimer()V
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
    iput-object p1, p0, Lcom/lzx/iteam/widget/TimeButton$2;->this$0:Lcom/lzx/iteam/widget/TimeButton;

    .line 68
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 72
    const-string v0, "yung"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lzx/iteam/widget/TimeButton$2;->this$0:Lcom/lzx/iteam/widget/TimeButton;

    # getter for: Lcom/lzx/iteam/widget/TimeButton;->time:J
    invoke-static {v2}, Lcom/lzx/iteam/widget/TimeButton;->access$0(Lcom/lzx/iteam/widget/TimeButton;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/lzx/iteam/widget/TimeButton$2;->this$0:Lcom/lzx/iteam/widget/TimeButton;

    iget-object v0, v0, Lcom/lzx/iteam/widget/TimeButton;->han:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 74
    return-void
.end method
