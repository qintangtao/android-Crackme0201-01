.class public Lcom/lzx/iteam/adapter/ApprovalFgAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "ApprovalFgAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFm:Landroid/support/v4/app/FragmentManager;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private tagList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "mContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p3, "mList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/adapter/ApprovalFgAdapter;->tagList:Ljava/util/List;

    .line 32
    iput-object p1, p0, Lcom/lzx/iteam/adapter/ApprovalFgAdapter;->mFm:Landroid/support/v4/app/FragmentManager;

    .line 33
    iput-object p2, p0, Lcom/lzx/iteam/adapter/ApprovalFgAdapter;->mContext:Landroid/content/Context;

    .line 34
    iput-object p3, p0, Lcom/lzx/iteam/adapter/ApprovalFgAdapter;->mList:Ljava/util/List;

    .line 35
    return-void
.end method

.method public static makeFragmentName(II)Ljava/lang/String;
    .locals 2
    .param p0, "viewId"    # I
    .param p1, "index"    # I

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android:switcher:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 55
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 56
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ApprovalFgAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ApprovalFgAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ApprovalFgAdapter;->tagList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-virtual {p0, p2}, Lcom/lzx/iteam/adapter/ApprovalFgAdapter;->getItemId(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v1, v2}, Lcom/lzx/iteam/adapter/ApprovalFgAdapter;->makeFragmentName(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public update(ILjava/lang/String;)V
    .locals 3
    .param p1, "item"    # I
    .param p2, "groupId"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v1, p0, Lcom/lzx/iteam/adapter/ApprovalFgAdapter;->tagList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 64
    iget-object v2, p0, Lcom/lzx/iteam/adapter/ApprovalFgAdapter;->mFm:Landroid/support/v4/app/FragmentManager;

    iget-object v1, p0, Lcom/lzx/iteam/adapter/ApprovalFgAdapter;->tagList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 65
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 66
    packed-switch p1, :pswitch_data_0

    .line 78
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_0
    :goto_0
    return-void

    .line 68
    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :pswitch_0
    check-cast v0, Lcom/lzx/iteam/ApprovalFragment;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0, p2}, Lcom/lzx/iteam/ApprovalFragment;->update(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :pswitch_1
    check-cast v0, Lcom/lzx/iteam/ApprovalFragment;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0, p2}, Lcom/lzx/iteam/ApprovalFragment;->update(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
