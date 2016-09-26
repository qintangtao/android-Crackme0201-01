.class Lcom/lzx/iteam/EventsFragment$3;
.super Ljava/lang/Object;
.source "EventsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/EventsFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/EventsFragment;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/EventsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/EventsFragment$3;->this$0:Lcom/lzx/iteam/EventsFragment;

    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x1

    .line 574
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment$3;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->mEventAdapter:Lcom/lzx/iteam/adapter/EventsListAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/EventsFragment;->access$7(Lcom/lzx/iteam/EventsFragment;)Lcom/lzx/iteam/adapter/EventsListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzx/iteam/adapter/EventsListAdapter;->getCount()I

    move-result v0

    if-ne p3, v0, :cond_0

    .line 580
    :goto_0
    return v2

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment$3;->this$0:Lcom/lzx/iteam/EventsFragment;

    invoke-static {v0, p3}, Lcom/lzx/iteam/EventsFragment;->access$17(Lcom/lzx/iteam/EventsFragment;I)V

    .line 578
    iget-object v1, p0, Lcom/lzx/iteam/EventsFragment$3;->this$0:Lcom/lzx/iteam/EventsFragment;

    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment$3;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->mEventAdapter:Lcom/lzx/iteam/adapter/EventsListAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/EventsFragment;->access$7(Lcom/lzx/iteam/EventsFragment;)Lcom/lzx/iteam/adapter/EventsListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/lzx/iteam/adapter/EventsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/EventListData;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/EventListData;->getEventId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/lzx/iteam/EventsFragment;->showDeleteEventDlg(Ljava/lang/String;)V

    .line 579
    iget-object v1, p0, Lcom/lzx/iteam/EventsFragment$3;->this$0:Lcom/lzx/iteam/EventsFragment;

    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment$3;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->mEventAdapter:Lcom/lzx/iteam/adapter/EventsListAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/EventsFragment;->access$7(Lcom/lzx/iteam/EventsFragment;)Lcom/lzx/iteam/adapter/EventsListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/lzx/iteam/adapter/EventsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/EventListData;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/EventListData;->getEventId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lzx/iteam/EventsFragment;->access$18(Lcom/lzx/iteam/EventsFragment;Ljava/lang/String;)V

    goto :goto_0
.end method
