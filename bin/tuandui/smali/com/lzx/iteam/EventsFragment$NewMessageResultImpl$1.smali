.class Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl$1;
.super Ljava/lang/Object;
.source "EventsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;->onNewEventReply(Lcom/lzx/iteam/bean/aidl/EventReplyNewData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;

    .line 1107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/EventsFragment;
    invoke-static {v0}, Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;)Lcom/lzx/iteam/EventsFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/EventsFragment;
    invoke-static {v1}, Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;)Lcom/lzx/iteam/EventsFragment;

    move-result-object v1

    # getter for: Lcom/lzx/iteam/EventsFragment;->mType:I
    invoke-static {v1}, Lcom/lzx/iteam/EventsFragment;->access$11(Lcom/lzx/iteam/EventsFragment;)I

    move-result v1

    # invokes: Lcom/lzx/iteam/EventsFragment;->initEventsListData(I)V
    invoke-static {v0, v1}, Lcom/lzx/iteam/EventsFragment;->access$12(Lcom/lzx/iteam/EventsFragment;I)V

    .line 1111
    const-string v0, "Event_UpDate"

    const-string v1, "onNewEventReply"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    return-void
.end method
