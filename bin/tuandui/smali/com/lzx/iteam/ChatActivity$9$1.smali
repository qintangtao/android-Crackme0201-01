.class Lcom/lzx/iteam/ChatActivity$9$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/ChatActivity$9;->onCompletion(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lzx/iteam/ChatActivity$9;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ChatActivity$9;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ChatActivity$9$1;->this$1:Lcom/lzx/iteam/ChatActivity$9;

    .line 889
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 892
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 893
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x4d2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 894
    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity$9$1;->this$1:Lcom/lzx/iteam/ChatActivity$9;

    # getter for: Lcom/lzx/iteam/ChatActivity$9;->this$0:Lcom/lzx/iteam/ChatActivity;
    invoke-static {v1}, Lcom/lzx/iteam/ChatActivity$9;->access$0(Lcom/lzx/iteam/ChatActivity$9;)Lcom/lzx/iteam/ChatActivity;

    move-result-object v1

    # getter for: Lcom/lzx/iteam/ChatActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lzx/iteam/ChatActivity;->access$24(Lcom/lzx/iteam/ChatActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 895
    return-void
.end method
