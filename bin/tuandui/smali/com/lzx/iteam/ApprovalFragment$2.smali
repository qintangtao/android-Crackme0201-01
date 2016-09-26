.class Lcom/lzx/iteam/ApprovalFragment$2;
.super Ljava/lang/Object;
.source "ApprovalFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/ApprovalFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ApprovalFragment;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ApprovalFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ApprovalFragment$2;->this$0:Lcom/lzx/iteam/ApprovalFragment;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalFragment$2;->this$0:Lcom/lzx/iteam/ApprovalFragment;

    # getter for: Lcom/lzx/iteam/ApprovalFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/lzx/iteam/ApprovalFragment;->access$5(Lcom/lzx/iteam/ApprovalFragment;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/ApprovalActivity;

    invoke-virtual {v0}, Lcom/lzx/iteam/ApprovalActivity;->removeFragment()V

    .line 164
    return-void
.end method
