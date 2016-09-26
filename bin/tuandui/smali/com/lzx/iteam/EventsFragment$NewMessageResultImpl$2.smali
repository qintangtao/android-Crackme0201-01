.class Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl$2;
.super Ljava/lang/Object;
.source "EventsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;->onNewEvent(Lcom/lzx/iteam/bean/aidl/EventReplyNewData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;

.field private final synthetic val$event:Lcom/lzx/iteam/bean/aidl/EventReplyNewData;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;Lcom/lzx/iteam/bean/aidl/EventReplyNewData;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl$2;->this$1:Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;

    iput-object p2, p0, Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl$2;->val$event:Lcom/lzx/iteam/bean/aidl/EventReplyNewData;

    .line 1121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1124
    iget-object v1, p0, Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl$2;->val$event:Lcom/lzx/iteam/bean/aidl/EventReplyNewData;

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->getEventId()Ljava/lang/String;

    move-result-object v0

    .line 1125
    .local v0, "eventId":Ljava/lang/String;
    iget-object v1, p0, Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl$2;->this$1:Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/EventsFragment;
    invoke-static {v1}, Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;)Lcom/lzx/iteam/EventsFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl$2;->this$1:Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/EventsFragment;
    invoke-static {v2}, Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;)Lcom/lzx/iteam/EventsFragment;

    move-result-object v2

    # getter for: Lcom/lzx/iteam/EventsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lzx/iteam/EventsFragment;->access$13(Lcom/lzx/iteam/EventsFragment;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x700

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/lzx/iteam/EventsFragment;->getNewEventsList(Ljava/lang/String;Landroid/os/Message;)V

    .line 1126
    return-void
.end method
