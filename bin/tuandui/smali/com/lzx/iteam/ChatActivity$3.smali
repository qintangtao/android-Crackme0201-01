.class Lcom/lzx/iteam/ChatActivity$3;
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
    iput-object p1, p0, Lcom/lzx/iteam/ChatActivity$3;->this$0:Lcom/lzx/iteam/ChatActivity;

    .line 908
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 911
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$3;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mMediaPlayUtil:Lcom/lzx/iteam/util/MediaPlayUtil;
    invoke-static {v0}, Lcom/lzx/iteam/ChatActivity;->access$18(Lcom/lzx/iteam/ChatActivity;)Lcom/lzx/iteam/util/MediaPlayUtil;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$3;->this$0:Lcom/lzx/iteam/ChatActivity;

    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity$3;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mMediaPlayUtil:Lcom/lzx/iteam/util/MediaPlayUtil;
    invoke-static {v1}, Lcom/lzx/iteam/ChatActivity;->access$18(Lcom/lzx/iteam/ChatActivity;)Lcom/lzx/iteam/util/MediaPlayUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lzx/iteam/util/MediaPlayUtil;->getDutation()I

    move-result v1

    iput v1, v0, Lcom/lzx/iteam/ChatActivity;->maxDuation:I

    .line 913
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$3;->this$0:Lcom/lzx/iteam/ChatActivity;

    iget v0, v0, Lcom/lzx/iteam/ChatActivity;->maxDuation:I

    if-eqz v0, :cond_0

    .line 914
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$3;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mRpbPlaySound:Lcom/lzx/iteam/widget/RoundProgressBar;
    invoke-static {v0}, Lcom/lzx/iteam/ChatActivity;->access$12(Lcom/lzx/iteam/ChatActivity;)Lcom/lzx/iteam/widget/RoundProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/RoundProgressBar;->setVisibility(I)V

    .line 915
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$3;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mRpbPlaySound:Lcom/lzx/iteam/widget/RoundProgressBar;
    invoke-static {v0}, Lcom/lzx/iteam/ChatActivity;->access$12(Lcom/lzx/iteam/ChatActivity;)Lcom/lzx/iteam/widget/RoundProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity$3;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mMediaPlayUtil:Lcom/lzx/iteam/util/MediaPlayUtil;
    invoke-static {v1}, Lcom/lzx/iteam/ChatActivity;->access$18(Lcom/lzx/iteam/ChatActivity;)Lcom/lzx/iteam/util/MediaPlayUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lzx/iteam/util/MediaPlayUtil;->getDutation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/RoundProgressBar;->setMax(I)V

    .line 916
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$3;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mRpbPlaySound:Lcom/lzx/iteam/widget/RoundProgressBar;
    invoke-static {v0}, Lcom/lzx/iteam/ChatActivity;->access$12(Lcom/lzx/iteam/ChatActivity;)Lcom/lzx/iteam/widget/RoundProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity$3;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mMediaPlayUtil:Lcom/lzx/iteam/util/MediaPlayUtil;
    invoke-static {v1}, Lcom/lzx/iteam/ChatActivity;->access$18(Lcom/lzx/iteam/ChatActivity;)Lcom/lzx/iteam/util/MediaPlayUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lzx/iteam/util/MediaPlayUtil;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/RoundProgressBar;->setProgress(I)V

    .line 918
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$3;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mVoiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lzx/iteam/ChatActivity;->access$19(Lcom/lzx/iteam/ChatActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity$3;->this$0:Lcom/lzx/iteam/ChatActivity;

    iget-object v1, v1, Lcom/lzx/iteam/ChatActivity;->updateThread:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 921
    :cond_0
    return-void
.end method
