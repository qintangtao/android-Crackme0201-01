.class Lcom/lzx/iteam/ChatActivity$4;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ChatActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ChatActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ChatActivity$4;->this$0:Lcom/lzx/iteam/ChatActivity;

    .line 1288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1294
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1295
    .local v2, "endTime":J
    iget-object v4, p0, Lcom/lzx/iteam/ChatActivity$4;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mStartTime:J
    invoke-static {v4}, Lcom/lzx/iteam/ChatActivity;->access$20(Lcom/lzx/iteam/ChatActivity;)J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v1, v4

    .line 1297
    .local v1, "time":I
    iget-object v4, p0, Lcom/lzx/iteam/ChatActivity$4;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mTvSoundLength:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/lzx/iteam/ChatActivity;->access$21(Lcom/lzx/iteam/ChatActivity;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x22

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1299
    const/16 v4, 0x77

    if-le v1, v4, :cond_0

    .line 1300
    iget-object v4, p0, Lcom/lzx/iteam/ChatActivity$4;->this$0:Lcom/lzx/iteam/ChatActivity;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/lzx/iteam/ChatActivity;->access$22(Lcom/lzx/iteam/ChatActivity;Z)V

    .line 1301
    iget-object v4, p0, Lcom/lzx/iteam/ChatActivity$4;->this$0:Lcom/lzx/iteam/ChatActivity;

    invoke-static {v4, v1}, Lcom/lzx/iteam/ChatActivity;->access$23(Lcom/lzx/iteam/ChatActivity;I)V

    .line 1302
    iget-object v4, p0, Lcom/lzx/iteam/ChatActivity$4;->this$0:Lcom/lzx/iteam/ChatActivity;

    invoke-virtual {v4}, Lcom/lzx/iteam/ChatActivity;->stopRecord()V

    .line 1303
    iget-object v4, p0, Lcom/lzx/iteam/ChatActivity$4;->this$0:Lcom/lzx/iteam/ChatActivity;

    const-string v5, "\u65f6\u95f4\u8fc7\u957f"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1312
    .end local v1    # "time":I
    .end local v2    # "endTime":J
    :goto_0
    return-void

    .line 1305
    .restart local v1    # "time":I
    .restart local v2    # "endTime":J
    :cond_0
    iget-object v4, p0, Lcom/lzx/iteam/ChatActivity$4;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/lzx/iteam/ChatActivity;->access$24(Lcom/lzx/iteam/ChatActivity;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, p0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1306
    iget-object v4, p0, Lcom/lzx/iteam/ChatActivity$4;->this$0:Lcom/lzx/iteam/ChatActivity;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/lzx/iteam/ChatActivity;->access$22(Lcom/lzx/iteam/ChatActivity;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1308
    .end local v1    # "time":I
    .end local v2    # "endTime":J
    :catch_0
    move-exception v0

    .line 1310
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
