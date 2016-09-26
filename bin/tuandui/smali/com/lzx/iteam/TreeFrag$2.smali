.class Lcom/lzx/iteam/TreeFrag$2;
.super Ljava/lang/Object;
.source "TreeFrag.java"

# interfaces
.implements Lcom/lzx/iteam/widget/PullListView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/TreeFrag;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/TreeFrag;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/TreeFrag;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/TreeFrag$2;->this$0:Lcom/lzx/iteam/TreeFrag;

    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Z)V
    .locals 2
    .param p1, "isTop"    # Z

    .prologue
    .line 495
    sget-object v1, Lcom/lzx/iteam/TreeFrag;->mHandler1:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 496
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x14

    iput v1, v0, Landroid/os/Message;->what:I

    .line 502
    sget-object v1, Lcom/lzx/iteam/TreeFrag;->mHandler1:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 506
    return-void
.end method
