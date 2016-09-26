.class public abstract Lcom/lzx/iteam/widget/MyFragment;
.super Landroid/support/v4/app/Fragment;
.source "MyFragment.java"


# instance fields
.field protected isVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract delayLoad()V
.end method

.method protected onVisible()V
    .locals 0

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/MyFragment;->delayLoad()V

    .line 33
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1
    .param p1, "isVisibleToUser"    # Z

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 23
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/MyFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lzx/iteam/widget/MyFragment;->isVisible:Z

    .line 25
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/MyFragment;->onVisible()V

    .line 30
    :goto_0
    return-void

    .line 27
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lzx/iteam/widget/MyFragment;->isVisible:Z

    goto :goto_0
.end method
