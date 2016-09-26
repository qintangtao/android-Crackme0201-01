.class Lcom/lzx/iteam/EventDetailContentActivity$NewMessageResultImpl$1;
.super Ljava/lang/Object;
.source "EventDetailContentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/EventDetailContentActivity$NewMessageResultImpl;->onNewEventReply(Lcom/lzx/iteam/bean/aidl/EventReplyNewData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lzx/iteam/EventDetailContentActivity$NewMessageResultImpl;

.field private final synthetic val$reply:Lcom/lzx/iteam/bean/aidl/EventReplyNewData;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/EventDetailContentActivity$NewMessageResultImpl;Lcom/lzx/iteam/bean/aidl/EventReplyNewData;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/EventDetailContentActivity$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/EventDetailContentActivity$NewMessageResultImpl;

    iput-object p2, p0, Lcom/lzx/iteam/EventDetailContentActivity$NewMessageResultImpl$1;->val$reply:Lcom/lzx/iteam/bean/aidl/EventReplyNewData;

    .line 1708
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1711
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/EventDetailContentActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;
    invoke-static {v0}, Lcom/lzx/iteam/EventDetailContentActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/EventDetailContentActivity$NewMessageResultImpl;)Lcom/lzx/iteam/EventDetailContentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity$NewMessageResultImpl$1;->val$reply:Lcom/lzx/iteam/bean/aidl/EventReplyNewData;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->setReply(Lcom/lzx/iteam/bean/aidl/EventReplyNewData;)V

    .line 1712
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/EventDetailContentActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;
    invoke-static {v0}, Lcom/lzx/iteam/EventDetailContentActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/EventDetailContentActivity$NewMessageResultImpl;)Lcom/lzx/iteam/EventDetailContentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/EventDetailContentActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;
    invoke-static {v1}, Lcom/lzx/iteam/EventDetailContentActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/EventDetailContentActivity$NewMessageResultImpl;)Lcom/lzx/iteam/EventDetailContentActivity;

    move-result-object v1

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mLvReply:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/lzx/iteam/EventDetailContentActivity;->access$9(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->isListViewReachBottomEdge(Landroid/widget/ListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1713
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/EventDetailContentActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;
    invoke-static {v0}, Lcom/lzx/iteam/EventDetailContentActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/EventDetailContentActivity$NewMessageResultImpl;)Lcom/lzx/iteam/EventDetailContentActivity;

    move-result-object v0

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mLvReply:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/lzx/iteam/EventDetailContentActivity;->access$9(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/EventDetailContentActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;
    invoke-static {v1}, Lcom/lzx/iteam/EventDetailContentActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/EventDetailContentActivity$NewMessageResultImpl;)Lcom/lzx/iteam/EventDetailContentActivity;

    move-result-object v1

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mReplyDate:Ljava/util/List;
    invoke-static {v1}, Lcom/lzx/iteam/EventDetailContentActivity;->access$6(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 1715
    :cond_0
    return-void
.end method
