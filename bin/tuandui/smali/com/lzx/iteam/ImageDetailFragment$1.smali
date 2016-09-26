.class Lcom/lzx/iteam/ImageDetailFragment$1;
.super Ljava/lang/Object;
.source "ImageDetailFragment.java"

# interfaces
.implements Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;


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
    iput-object p1, p0, Lcom/lzx/iteam/ImageDetailFragment$1;->this$0:Lcom/lzx/iteam/ImageDetailFragment;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhotoTap(Landroid/view/View;FF)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # F
    .param p3, "arg2"    # F

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lzx/iteam/ImageDetailFragment$1;->this$0:Lcom/lzx/iteam/ImageDetailFragment;

    invoke-virtual {v0}, Lcom/lzx/iteam/ImageDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 87
    iget-object v0, p0, Lcom/lzx/iteam/ImageDetailFragment$1;->this$0:Lcom/lzx/iteam/ImageDetailFragment;

    invoke-virtual {v0}, Lcom/lzx/iteam/ImageDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f040013

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 88
    return-void
.end method
