.class Lcom/lzx/iteam/EventsFragment$4;
.super Ljava/lang/Object;
.source "EventsFragment.java"

# interfaces
.implements Lcom/lzx/iteam/net/EventListCenter$EventDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/EventsFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/EventsFragment;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/EventsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/EventsFragment$4;->this$0:Lcom/lzx/iteam/EventsFragment;

    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddMore(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/EventListData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 617
    .local p1, "eventList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/EventListData;>;"
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment$4;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->eventsListDatas:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/EventsFragment;->access$5(Lcom/lzx/iteam/EventsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 618
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment$4;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->eventsListDatas:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/EventsFragment;->access$5(Lcom/lzx/iteam/EventsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 619
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment$4;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->mEventAdapter:Lcom/lzx/iteam/adapter/EventsListAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/EventsFragment;->access$7(Lcom/lzx/iteam/EventsFragment;)Lcom/lzx/iteam/adapter/EventsListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/EventsFragment$4;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->eventsListDatas:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lzx/iteam/EventsFragment;->access$5(Lcom/lzx/iteam/EventsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/adapter/EventsListAdapter;->setData(Ljava/util/ArrayList;)V

    .line 620
    const-string v0, "UpDate_event_list"

    const-string v1, " \u5475\u5475  \u52a0\u8f7d\u66f4\u591a"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    return-void
.end method

.method public onChange(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/EventListData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "eventList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/EventListData;>;"
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 588
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 589
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment$4;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->mEventNotice:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/lzx/iteam/EventsFragment;->access$9(Lcom/lzx/iteam/EventsFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 590
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment$4;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->mEventsList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/lzx/iteam/EventsFragment;->access$8(Lcom/lzx/iteam/EventsFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 595
    :goto_0
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment$4;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->eventsListDatas:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/EventsFragment;->access$5(Lcom/lzx/iteam/EventsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 596
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment$4;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->eventsListDatas:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/EventsFragment;->access$5(Lcom/lzx/iteam/EventsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 597
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment$4;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->mEventAdapter:Lcom/lzx/iteam/adapter/EventsListAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/EventsFragment;->access$7(Lcom/lzx/iteam/EventsFragment;)Lcom/lzx/iteam/adapter/EventsListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/EventsFragment$4;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->eventsListDatas:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lzx/iteam/EventsFragment;->access$5(Lcom/lzx/iteam/EventsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/adapter/EventsListAdapter;->setData(Ljava/util/ArrayList;)V

    .line 598
    const-string v0, "UpDate_event_list"

    const-string v1, " \u5475\u5475  \u66f4\u65b0\u4e86"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment$4;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->mEventAdapter:Lcom/lzx/iteam/adapter/EventsListAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/EventsFragment;->access$7(Lcom/lzx/iteam/EventsFragment;)Lcom/lzx/iteam/adapter/EventsListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzx/iteam/adapter/EventsListAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/lzx/iteam/EventsFragment$4;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;
    invoke-static {v1}, Lcom/lzx/iteam/EventsFragment;->access$19(Lcom/lzx/iteam/EventsFragment;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v1

    const-string v2, "event_count"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 600
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment$4;->this$0:Lcom/lzx/iteam/EventsFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/EventsFragment;->setFooterText(Z)V

    .line 602
    :cond_0
    return-void

    .line 592
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment$4;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->mEventNotice:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/lzx/iteam/EventsFragment;->access$9(Lcom/lzx/iteam/EventsFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 593
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment$4;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->mEventsList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/lzx/iteam/EventsFragment;->access$8(Lcom/lzx/iteam/EventsFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onError(ILjava/lang/String;)V
    .locals 2
    .param p1, "errNum"    # I
    .param p2, "obj"    # Ljava/lang/String;

    .prologue
    .line 625
    const-string v0, "UpDate_talk_list"

    const-string v1, " \u5475\u5475  \u51fa\u9519\u4e86 "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    return-void
.end method

.method public onNoChange(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/EventListData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 606
    .local p1, "eventList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/EventListData;>;"
    const-string v0, "UpDate_event_list"

    const-string v1, " \u5475\u5475  \u66f4\u65b0\u4e86\uff0c\u4f46\u662f\u6ca1\u53d8\u5316 "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    return-void
.end method
