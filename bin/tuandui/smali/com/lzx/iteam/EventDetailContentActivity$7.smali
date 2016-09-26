.class Lcom/lzx/iteam/EventDetailContentActivity$7;
.super Ljava/lang/Object;
.source "EventDetailContentActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/EventDetailContentActivity;->initView()V
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
.field final synthetic this$0:Lcom/lzx/iteam/EventDetailContentActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/EventDetailContentActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/EventDetailContentActivity$7;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    .line 769
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
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
    .line 772
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    sget v0, Lcom/lzx/iteam/EventDetailContentActivity;->index:I

    if-ne v0, p3, :cond_0

    .line 773
    const/4 v0, -0x1

    sput v0, Lcom/lzx/iteam/EventDetailContentActivity;->index:I

    .line 777
    :goto_0
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity$7;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mVoteTopAdapter:Lcom/lzx/iteam/adapter/VoteTopAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/EventDetailContentActivity;->access$55(Lcom/lzx/iteam/EventDetailContentActivity;)Lcom/lzx/iteam/adapter/VoteTopAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzx/iteam/adapter/VoteTopAdapter;->notifyDataSetChanged()V

    .line 778
    return-void

    .line 775
    :cond_0
    sput p3, Lcom/lzx/iteam/EventDetailContentActivity;->index:I

    goto :goto_0
.end method
