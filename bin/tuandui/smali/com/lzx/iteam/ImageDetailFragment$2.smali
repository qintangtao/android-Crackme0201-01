.class Lcom/lzx/iteam/ImageDetailFragment$2;
.super Ljava/lang/Object;
.source "ImageDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/ImageDetailFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ImageDetailFragment;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ImageDetailFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ImageDetailFragment$2;->this$0:Lcom/lzx/iteam/ImageDetailFragment;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/lzx/iteam/ImageDetailFragment$2;->this$0:Lcom/lzx/iteam/ImageDetailFragment;

    invoke-virtual {v0}, Lcom/lzx/iteam/ImageDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 95
    iget-object v0, p0, Lcom/lzx/iteam/ImageDetailFragment$2;->this$0:Lcom/lzx/iteam/ImageDetailFragment;

    invoke-virtual {v0}, Lcom/lzx/iteam/ImageDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f040013

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 96
    return-void
.end method
