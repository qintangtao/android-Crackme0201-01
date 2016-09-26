.class Lcom/lzx/iteam/TalkListActivity$3;
.super Ljava/lang/Object;
.source "TalkListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/TalkListActivity;->initView()V
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
.field final synthetic this$0:Lcom/lzx/iteam/TalkListActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/TalkListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/TalkListActivity$3;->this$0:Lcom/lzx/iteam/TalkListActivity;

    .line 241
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
    .line 244
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity$3;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->mTalkListAdapter:Lcom/lzx/iteam/adapter/TalkListAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/TalkListActivity;->access$5(Lcom/lzx/iteam/TalkListActivity;)Lcom/lzx/iteam/adapter/TalkListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzx/iteam/adapter/TalkListAdapter;->getCount()I

    move-result v0

    if-ne p3, v0, :cond_0

    .line 252
    :cond_0
    return-void
.end method
