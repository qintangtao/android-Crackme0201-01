.class public Lcom/lzx/iteam/schedulecalendar/ScrollableHelper;
.super Ljava/lang/Object;
.source "ScrollableHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/schedulecalendar/ScrollableHelper$ScrollableContainer;
    }
.end annotation


# instance fields
.field private mCurrentScrollableCainer:Lcom/lzx/iteam/schedulecalendar/ScrollableHelper$ScrollableContainer;

.field private mCurrentView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getScrollableView()Landroid/view/View;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableHelper;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method private static isAdapterViewTop(Landroid/widget/AdapterView;)Z
    .locals 4
    .param p0, "adapterView"    # Landroid/widget/AdapterView;

    .prologue
    const/4 v2, 0x0

    .line 124
    if-eqz p0, :cond_1

    .line 125
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    .line 126
    .local v1, "firstVisiblePosition":I
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 127
    .local v0, "childAt":Landroid/view/View;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    if-nez v3, :cond_1

    .line 128
    :cond_0
    const/4 v2, 0x1

    .line 131
    .end local v0    # "childAt":Landroid/view/View;
    .end local v1    # "firstVisiblePosition":I
    :cond_1
    return v2
.end method

.method private static isRecyclerViewTop(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 5
    .param p0, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    const/4 v3, 0x0

    .line 110
    if-eqz p0, :cond_1

    .line 111
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    .line 112
    .local v2, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    instance-of v4, v2, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v4, :cond_1

    .line 113
    check-cast v2, Landroid/support/v7/widget/LinearLayoutManager;

    .end local v2    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 114
    .local v1, "firstVisibleItemPosition":I
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 115
    .local v0, "childAt":Landroid/view/View;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    if-nez v4, :cond_1

    .line 116
    :cond_0
    const/4 v3, 0x1

    .line 120
    .end local v0    # "childAt":Landroid/view/View;
    .end local v1    # "firstVisibleItemPosition":I
    :cond_1
    return v3
.end method

.method private static isScrollViewTop(Landroid/widget/ScrollView;)Z
    .locals 2
    .param p0, "scrollView"    # Landroid/widget/ScrollView;

    .prologue
    const/4 v1, 0x0

    .line 135
    if-eqz p0, :cond_0

    .line 136
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    .line 137
    .local v0, "scrollViewY":I
    if-gtz v0, :cond_0

    const/4 v1, 0x1

    .line 139
    .end local v0    # "scrollViewY":I
    :cond_0
    return v1
.end method

.method private static isWebViewTop(Landroid/webkit/WebView;)Z
    .locals 2
    .param p0, "scrollView"    # Landroid/webkit/WebView;

    .prologue
    const/4 v1, 0x0

    .line 143
    if-eqz p0, :cond_0

    .line 144
    invoke-virtual {p0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    .line 145
    .local v0, "scrollViewY":I
    if-gtz v0, :cond_0

    const/4 v1, 0x1

    .line 147
    .end local v0    # "scrollViewY":I
    :cond_0
    return v1
.end method


# virtual methods
.method public isTop()Z
    .locals 3

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/lzx/iteam/schedulecalendar/ScrollableHelper;->getScrollableView()Landroid/view/View;

    move-result-object v0

    .line 89
    .local v0, "scrollableView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 91
    const/4 v1, 0x1

    .line 103
    .end local v0    # "scrollableView":Landroid/view/View;
    :goto_0
    return v1

    .line 93
    .restart local v0    # "scrollableView":Landroid/view/View;
    :cond_0
    instance-of v1, v0, Landroid/widget/AdapterView;

    if-eqz v1, :cond_1

    .line 94
    check-cast v0, Landroid/widget/AdapterView;

    .end local v0    # "scrollableView":Landroid/view/View;
    invoke-static {v0}, Lcom/lzx/iteam/schedulecalendar/ScrollableHelper;->isAdapterViewTop(Landroid/widget/AdapterView;)Z

    move-result v1

    goto :goto_0

    .line 96
    .restart local v0    # "scrollableView":Landroid/view/View;
    :cond_1
    instance-of v1, v0, Landroid/widget/ScrollView;

    if-eqz v1, :cond_2

    .line 97
    check-cast v0, Landroid/widget/ScrollView;

    .end local v0    # "scrollableView":Landroid/view/View;
    invoke-static {v0}, Lcom/lzx/iteam/schedulecalendar/ScrollableHelper;->isScrollViewTop(Landroid/widget/ScrollView;)Z

    move-result v1

    goto :goto_0

    .line 99
    .restart local v0    # "scrollableView":Landroid/view/View;
    :cond_2
    instance-of v1, v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_3

    .line 100
    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .end local v0    # "scrollableView":Landroid/view/View;
    invoke-static {v0}, Lcom/lzx/iteam/schedulecalendar/ScrollableHelper;->isRecyclerViewTop(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v1

    goto :goto_0

    .line 102
    .restart local v0    # "scrollableView":Landroid/view/View;
    :cond_3
    instance-of v1, v0, Landroid/webkit/WebView;

    if-eqz v1, :cond_4

    .line 103
    check-cast v0, Landroid/webkit/WebView;

    .end local v0    # "scrollableView":Landroid/view/View;
    invoke-static {v0}, Lcom/lzx/iteam/schedulecalendar/ScrollableHelper;->isWebViewTop(Landroid/webkit/WebView;)Z

    move-result v1

    goto :goto_0

    .line 105
    .restart local v0    # "scrollableView":Landroid/view/View;
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "scrollableView must be a instance of AdapterView|ScrollView|RecyclerView"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setCurrentContainer(Landroid/view/View;)V
    .locals 0
    .param p1, "scrollableContainer"    # Landroid/view/View;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableHelper;->mCurrentView:Landroid/view/View;

    .line 70
    return-void
.end method

.method public setCurrentScrollableContainer(Lcom/lzx/iteam/schedulecalendar/ScrollableHelper$ScrollableContainer;)V
    .locals 0
    .param p1, "scrollableContainer"    # Lcom/lzx/iteam/schedulecalendar/ScrollableHelper$ScrollableContainer;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableHelper;->mCurrentScrollableCainer:Lcom/lzx/iteam/schedulecalendar/ScrollableHelper$ScrollableContainer;

    .line 61
    return-void
.end method

.method public smoothScrollBy(III)V
    .locals 4
    .param p1, "velocityY"    # I
    .param p2, "distance"    # I
    .param p3, "duration"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 152
    invoke-direct {p0}, Lcom/lzx/iteam/schedulecalendar/ScrollableHelper;->getScrollableView()Landroid/view/View;

    move-result-object v1

    .line 153
    .local v1, "scrollableView":Landroid/view/View;
    instance-of v2, v1, Landroid/widget/AbsListView;

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 154
    check-cast v0, Landroid/widget/AbsListView;

    .line 155
    .local v0, "absListView":Landroid/widget/AbsListView;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 156
    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->fling(I)V

    .line 167
    .end local v0    # "absListView":Landroid/widget/AbsListView;
    .end local v1    # "scrollableView":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 158
    .restart local v0    # "absListView":Landroid/widget/AbsListView;
    .restart local v1    # "scrollableView":Landroid/view/View;
    :cond_1
    invoke-virtual {v0, p2, p3}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto :goto_0

    .line 160
    .end local v0    # "absListView":Landroid/widget/AbsListView;
    :cond_2
    instance-of v2, v1, Landroid/widget/ScrollView;

    if-eqz v2, :cond_3

    .line 161
    check-cast v1, Landroid/widget/ScrollView;

    .end local v1    # "scrollableView":Landroid/view/View;
    invoke-virtual {v1, p1}, Landroid/widget/ScrollView;->fling(I)V

    goto :goto_0

    .line 162
    .restart local v1    # "scrollableView":Landroid/view/View;
    :cond_3
    instance-of v2, v1, Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_4

    .line 163
    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    .end local v1    # "scrollableView":Landroid/view/View;
    invoke-virtual {v1, v3, p1}, Landroid/support/v7/widget/RecyclerView;->fling(II)Z

    goto :goto_0

    .line 164
    .restart local v1    # "scrollableView":Landroid/view/View;
    :cond_4
    instance-of v2, v1, Landroid/webkit/WebView;

    if-eqz v2, :cond_0

    .line 165
    check-cast v1, Landroid/webkit/WebView;

    .end local v1    # "scrollableView":Landroid/view/View;
    invoke-virtual {v1, v3, p1}, Landroid/webkit/WebView;->flingScroll(II)V

    goto :goto_0
.end method
