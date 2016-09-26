.class public Lcom/lzx/iteam/BaseActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BaseActivity.java"


# static fields
.field protected static final STATE_PAUSE_ON_FLING:Ljava/lang/String; = "STATE_PAUSE_ON_FLING"

.field protected static final STATE_PAUSE_ON_SCROLL:Ljava/lang/String; = "STATE_PAUSE_ON_SCROLL"


# instance fields
.field protected imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field protected listView:Landroid/widget/AbsListView;

.field protected pauseOnFling:Z

.field protected pauseOnScroll:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lzx/iteam/BaseActivity;->pauseOnScroll:Z

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lzx/iteam/BaseActivity;->pauseOnFling:Z

    .line 22
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/BaseActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 13
    return-void
.end method


# virtual methods
.method protected onDestroy()V
    .locals 0

    .prologue
    .line 38
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 39
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    const-string v0, "STATE_PAUSE_ON_SCROLL"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lzx/iteam/BaseActivity;->pauseOnScroll:Z

    .line 27
    const-string v0, "STATE_PAUSE_ON_FLING"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lzx/iteam/BaseActivity;->pauseOnFling:Z

    .line 28
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    const-string v0, "STATE_PAUSE_ON_SCROLL"

    iget-boolean v1, p0, Lcom/lzx/iteam/BaseActivity;->pauseOnScroll:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 33
    const-string v0, "STATE_PAUSE_ON_FLING"

    iget-boolean v1, p0, Lcom/lzx/iteam/BaseActivity;->pauseOnFling:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 34
    return-void
.end method
