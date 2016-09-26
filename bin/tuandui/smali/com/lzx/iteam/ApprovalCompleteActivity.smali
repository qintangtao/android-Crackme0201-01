.class public Lcom/lzx/iteam/ApprovalCompleteActivity;
.super Lcom/lzx/iteam/base/MyBaseActivity;
.source "ApprovalCompleteActivity.java"


# instance fields
.field private mLayoutNull:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e0055
    .end annotation
.end field

.field private mList:Landroid/widget/ListView;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e004d
    .end annotation
.end field

.field private mTitleLayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e0052
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/lzx/iteam/base/MyBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public initData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 42
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalCompleteActivity;->mTitleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 43
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalCompleteActivity;->mList:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 44
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalCompleteActivity;->mLayoutNull:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 45
    return-void
.end method

.method public initListener()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    const v0, 0x7f03000e

    invoke-super {p0, p1, v0}, Lcom/lzx/iteam/base/MyBaseActivity;->onCreate(Landroid/os/Bundle;I)V

    .line 33
    return-void
.end method
