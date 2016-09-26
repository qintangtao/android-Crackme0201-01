.class Lcom/lzx/iteam/EventsFragment$5;
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
    iput-object p1, p0, Lcom/lzx/iteam/EventsFragment$5;->this$0:Lcom/lzx/iteam/EventsFragment;

    .line 641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "l"    # J
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
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/16 v2, 0x8

    .line 644
    packed-switch p3, :pswitch_data_0

    .line 664
    :goto_0
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment$5;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->mChooseAdapter:Lcom/lzx/iteam/adapter/EventChooseListAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/EventsFragment;->access$20(Lcom/lzx/iteam/EventsFragment;)Lcom/lzx/iteam/adapter/EventChooseListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/lzx/iteam/adapter/EventChooseListAdapter;->setSelectedPosition(I)V

    .line 665
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment$5;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->mLvChooseList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/lzx/iteam/EventsFragment;->access$21(Lcom/lzx/iteam/EventsFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 666
    return-void

    .line 646
    :pswitch_0
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment$5;->this$0:Lcom/lzx/iteam/EventsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/EventsFragment;->update(I)V

    goto :goto_0

    .line 649
    :pswitch_1
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment$5;->this$0:Lcom/lzx/iteam/EventsFragment;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/EventsFragment;->update(I)V

    goto :goto_0

    .line 652
    :pswitch_2
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment$5;->this$0:Lcom/lzx/iteam/EventsFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/EventsFragment;->update(I)V

    goto :goto_0

    .line 655
    :pswitch_3
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment$5;->this$0:Lcom/lzx/iteam/EventsFragment;

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/EventsFragment;->update(I)V

    goto :goto_0

    .line 658
    :pswitch_4
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment$5;->this$0:Lcom/lzx/iteam/EventsFragment;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/EventsFragment;->update(I)V

    goto :goto_0

    .line 661
    :pswitch_5
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment$5;->this$0:Lcom/lzx/iteam/EventsFragment;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/EventsFragment;->update(I)V

    goto :goto_0

    .line 644
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
