.class Lcom/lzx/iteam/ChatActivity$9;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/ChatActivity;->playSound(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/lzx/iteam/ChatActivity$9;->this$0:Lcom/lzx/iteam/ChatActivity;

    .line 880
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/ChatActivity$9;)Lcom/lzx/iteam/ChatActivity;
    .locals 1

    .prologue
    .line 880
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$9;->this$0:Lcom/lzx/iteam/ChatActivity;

    return-object v0
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 883
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$9;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mIvPlay:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lzx/iteam/ChatActivity;->access$45(Lcom/lzx/iteam/ChatActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 884
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$9;->this$0:Lcom/lzx/iteam/ChatActivity;

    iget v0, v0, Lcom/lzx/iteam/ChatActivity;->maxDuation:I

    if-eqz v0, :cond_0

    .line 885
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$9;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mRpbPlaySound:Lcom/lzx/iteam/widget/RoundProgressBar;
    invoke-static {v0}, Lcom/lzx/iteam/ChatActivity;->access$12(Lcom/lzx/iteam/ChatActivity;)Lcom/lzx/iteam/widget/RoundProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity$9;->this$0:Lcom/lzx/iteam/ChatActivity;

    iget v1, v1, Lcom/lzx/iteam/ChatActivity;->maxDuation:I

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/RoundProgressBar;->setProgress(I)V

    .line 886
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$9;->this$0:Lcom/lzx/iteam/ChatActivity;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lzx/iteam/ChatActivity;->maxDuation:I

    .line 888
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$9;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mVoiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lzx/iteam/ChatActivity;->access$19(Lcom/lzx/iteam/ChatActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity$9;->this$0:Lcom/lzx/iteam/ChatActivity;

    iget-object v1, v1, Lcom/lzx/iteam/ChatActivity;->updateThread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 889
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/lzx/iteam/ChatActivity$9$1;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/ChatActivity$9$1;-><init>(Lcom/lzx/iteam/ChatActivity$9;)V

    .line 896
    const-wide/16 v2, 0x15e

    .line 889
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 898
    :cond_1
    return-void
.end method
