.class Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl$3;
.super Ljava/lang/Object;
.source "EventsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;->onNewActivityApply(Lcom/lzx/iteam/bean/aidl/EventReplyNewData;)V
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
    iput-object p1, p0, Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl$3;->this$1:Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;

    .line 1132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl$3;->this$1:Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/EventsFragment;
    invoke-static {v0}, Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;)Lcom/lzx/iteam/EventsFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lzx/iteam/EventsFragment;->access$14(Lcom/lzx/iteam/EventsFragment;I)V

    .line 1137
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl$3;->this$1:Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/EventsFragment;
    invoke-static {v0}, Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;)Lcom/lzx/iteam/EventsFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl$3;->this$1:Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/EventsFragment;
    invoke-static {v1}, Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;)Lcom/lzx/iteam/EventsFragment;

    move-result-object v1

    # getter for: Lcom/lzx/iteam/EventsFragment;->pageIndex:I
    invoke-static {v1}, Lcom/lzx/iteam/EventsFragment;->access$15(Lcom/lzx/iteam/EventsFragment;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/lzx/iteam/EventsFragment;->access$14(Lcom/lzx/iteam/EventsFragment;I)V

    const/4 v1, 0x1

    # invokes: Lcom/lzx/iteam/EventsFragment;->initEventsListData(IZ)V
    invoke-static {v0, v2, v1}, Lcom/lzx/iteam/EventsFragment;->access$16(Lcom/lzx/iteam/EventsFragment;IZ)V

    .line 1138
    return-void
.end method
