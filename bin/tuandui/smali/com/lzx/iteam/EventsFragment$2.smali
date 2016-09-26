.class Lcom/lzx/iteam/EventsFragment$2;
.super Ljava/lang/Object;
.source "EventsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/EventsFragment;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/EventsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/EventsFragment$2;->this$0:Lcom/lzx/iteam/EventsFragment;

    .line 554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 557
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-static {}, Lcom/lzx/iteam/util/Constants;->isFastClick()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 569
    :cond_0
    :goto_0
    return-void

    .line 560
    :cond_1
    iget-object v2, p0, Lcom/lzx/iteam/EventsFragment$2;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->mEventAdapter:Lcom/lzx/iteam/adapter/EventsListAdapter;
    invoke-static {v2}, Lcom/lzx/iteam/EventsFragment;->access$7(Lcom/lzx/iteam/EventsFragment;)Lcom/lzx/iteam/adapter/EventsListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lzx/iteam/adapter/EventsListAdapter;->getCount()I

    move-result v2

    if-eq p3, v2, :cond_0

    .line 563
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lzx/iteam/EventsFragment$2;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v2}, Lcom/lzx/iteam/EventsFragment;->access$10(Lcom/lzx/iteam/EventsFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v2

    const-class v3, Lcom/lzx/iteam/EventDetailContentActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 564
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/lzx/iteam/EventsFragment$2;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->mEventAdapter:Lcom/lzx/iteam/adapter/EventsListAdapter;
    invoke-static {v2}, Lcom/lzx/iteam/EventsFragment;->access$7(Lcom/lzx/iteam/EventsFragment;)Lcom/lzx/iteam/adapter/EventsListAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/lzx/iteam/adapter/EventsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/EventListData;

    .line 565
    .local v0, "eventListData":Lcom/lzx/iteam/bean/EventListData;
    const-string v2, "event_msg"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 566
    const/4 v2, -0x1

    sput v2, Lcom/lzx/iteam/EventDetailContentActivity;->index:I

    .line 567
    iget-object v2, p0, Lcom/lzx/iteam/EventsFragment$2;->this$0:Lcom/lzx/iteam/EventsFragment;

    invoke-virtual {v2, v1}, Lcom/lzx/iteam/EventsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
