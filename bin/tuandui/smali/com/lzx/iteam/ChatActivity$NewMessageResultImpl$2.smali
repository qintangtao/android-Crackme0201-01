.class Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl$2;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;->notifyPage(Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl$2;->this$1:Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;

    .line 1699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1702
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl$2;->this$1:Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/ChatActivity;
    invoke-static {v0}, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;)Lcom/lzx/iteam/ChatActivity;

    move-result-object v0

    # getter for: Lcom/lzx/iteam/ChatActivity;->mAdpter:Lcom/lzx/iteam/adapter/ChatMessageAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/ChatActivity;->access$58(Lcom/lzx/iteam/ChatActivity;)Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->setShowTextProgress(Z)V

    .line 1703
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl$2;->this$1:Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/ChatActivity;
    invoke-static {v0}, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;)Lcom/lzx/iteam/ChatActivity;

    move-result-object v0

    # getter for: Lcom/lzx/iteam/ChatActivity;->mAdpter:Lcom/lzx/iteam/adapter/ChatMessageAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/ChatActivity;->access$58(Lcom/lzx/iteam/ChatActivity;)Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->notifyDataSetChanged()V

    .line 1704
    return-void
.end method
