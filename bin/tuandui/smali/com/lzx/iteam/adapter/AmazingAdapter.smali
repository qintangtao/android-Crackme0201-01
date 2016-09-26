.class public abstract Lcom/lzx/iteam/adapter/AmazingAdapter;
.super Landroid/widget/BaseAdapter;
.source "AmazingAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/adapter/AmazingAdapter$HasMorePagesListener;
    }
.end annotation


# static fields
.field public static final PINNED_HEADER_GONE:I = 0x0

.field public static final PINNED_HEADER_PUSHED_UP:I = 0x2

.field public static final PINNED_HEADER_VISIBLE:I = 0x1

.field public static final TAG:Ljava/lang/String;


# instance fields
.field automaticNextPageLoading:Z

.field hasMorePagesListener:Lcom/lzx/iteam/adapter/AmazingAdapter$HasMorePagesListener;

.field protected headerColor:I

.field protected headerTextColor:I

.field protected highLightColorBck:I

.field protected hightLightColor:I

.field initialPage:I

.field protected jobTitleColor:I

.field protected nameColor:I

.field page:I

.field protected phoneColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/lzx/iteam/adapter/AmazingAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lzx/iteam/adapter/AmazingAdapter;->TAG:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 11
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    iput v0, p0, Lcom/lzx/iteam/adapter/AmazingAdapter;->page:I

    .line 23
    iput v0, p0, Lcom/lzx/iteam/adapter/AmazingAdapter;->initialPage:I

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lzx/iteam/adapter/AmazingAdapter;->automaticNextPageLoading:Z

    .line 11
    return-void
.end method


# virtual methods
.method protected abstract bindSectionHeader(Landroid/view/View;IZ)V
.end method

.method public abstract configurePinnedHeader(Landroid/view/View;II)V
.end method

.method public abstract getAmazingView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getPinnedHeaderState(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x1

    .line 74
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/AmazingAdapter;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v2

    .line 81
    :cond_1
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/adapter/AmazingAdapter;->getSectionForPosition(I)I

    move-result v1

    .line 82
    .local v1, "section":I
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Lcom/lzx/iteam/adapter/AmazingAdapter;->getPositionForSection(I)I

    move-result v0

    .line 86
    .local v0, "nextSectionPosition":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    add-int/lit8 v3, v0, -0x1

    if-ne p1, v3, :cond_0

    .line 87
    const/4 v2, 0x2

    goto :goto_0
.end method

.method public abstract getPositionForSection(I)I
.end method

.method public abstract getSectionForPosition(I)I
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 134
    invoke-virtual {p0, p1, p2, p3}, Lcom/lzx/iteam/adapter/AmazingAdapter;->getAmazingView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 136
    .local v1, "res":Landroid/view/View;
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/AmazingAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_0

    iget-boolean v3, p0, Lcom/lzx/iteam/adapter/AmazingAdapter;->automaticNextPageLoading:Z

    if-eqz v3, :cond_0

    .line 137
    iget v3, p0, Lcom/lzx/iteam/adapter/AmazingAdapter;->page:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/lzx/iteam/adapter/AmazingAdapter;->onNextPageRequested(I)V

    .line 140
    :cond_0
    const/4 v0, 0x0

    .line 142
    .local v0, "displaySectionHeaders":Z
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/adapter/AmazingAdapter;->getSectionForPosition(I)I

    move-result v2

    .line 143
    .local v2, "section":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 144
    invoke-virtual {p0, v2}, Lcom/lzx/iteam/adapter/AmazingAdapter;->getPositionForSection(I)I

    move-result v3

    if-ne v3, p1, :cond_2

    const/4 v0, 0x1

    .line 147
    :cond_1
    :goto_0
    invoke-virtual {p0, v1, p1, v0}, Lcom/lzx/iteam/adapter/AmazingAdapter;->bindSectionHeader(Landroid/view/View;IZ)V

    .line 149
    return-object v1

    .line 144
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextPage()V
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/lzx/iteam/adapter/AmazingAdapter;->page:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lzx/iteam/adapter/AmazingAdapter;->page:I

    .line 113
    return-void
.end method

.method public notifyMayHaveMorePages()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lzx/iteam/adapter/AmazingAdapter;->automaticNextPageLoading:Z

    .line 159
    iget-object v0, p0, Lcom/lzx/iteam/adapter/AmazingAdapter;->hasMorePagesListener:Lcom/lzx/iteam/adapter/AmazingAdapter$HasMorePagesListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/adapter/AmazingAdapter;->hasMorePagesListener:Lcom/lzx/iteam/adapter/AmazingAdapter$HasMorePagesListener;

    invoke-interface {v0}, Lcom/lzx/iteam/adapter/AmazingAdapter$HasMorePagesListener;->mayHaveMorePages()V

    .line 160
    :cond_0
    return-void
.end method

.method public notifyNoMorePages()V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lzx/iteam/adapter/AmazingAdapter;->automaticNextPageLoading:Z

    .line 154
    iget-object v0, p0, Lcom/lzx/iteam/adapter/AmazingAdapter;->hasMorePagesListener:Lcom/lzx/iteam/adapter/AmazingAdapter$HasMorePagesListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/adapter/AmazingAdapter;->hasMorePagesListener:Lcom/lzx/iteam/adapter/AmazingAdapter$HasMorePagesListener;

    invoke-interface {v0}, Lcom/lzx/iteam/adapter/AmazingAdapter$HasMorePagesListener;->noMorePages()V

    .line 155
    :cond_0
    return-void
.end method

.method protected abstract onNextPageRequested(I)V
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 124
    instance-of v1, p1, Lcom/lzx/iteam/widget/AmazingListView;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 125
    check-cast v0, Lcom/lzx/iteam/widget/AmazingListView;

    .local v0, "lv":Lcom/lzx/iteam/widget/AmazingListView;
    move-object v1, p1

    .line 126
    check-cast v1, Lcom/lzx/iteam/widget/AmazingListView;

    iput p2, v1, Lcom/lzx/iteam/widget/AmazingListView;->firstItemIndex:I

    .line 127
    check-cast p1, Lcom/lzx/iteam/widget/AmazingListView;

    .end local p1    # "view":Landroid/widget/AbsListView;
    invoke-virtual {v0}, Lcom/lzx/iteam/widget/AmazingListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p1, v1}, Lcom/lzx/iteam/widget/AmazingListView;->configureHeaderView(I)V

    .line 129
    .end local v0    # "lv":Lcom/lzx/iteam/widget/AmazingListView;
    :cond_0
    return-void
.end method

.method public resetPage()V
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/lzx/iteam/adapter/AmazingAdapter;->initialPage:I

    iput v0, p0, Lcom/lzx/iteam/adapter/AmazingAdapter;->page:I

    .line 106
    return-void
.end method

.method public setColor(IIIIII)V
    .locals 0
    .param p1, "nameColor"    # I
    .param p2, "jobTitleColor"    # I
    .param p3, "phoneColor"    # I
    .param p4, "highLightColor"    # I
    .param p5, "headerColor"    # I
    .param p6, "headerTextColor"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/lzx/iteam/adapter/AmazingAdapter;->nameColor:I

    .line 37
    iput p2, p0, Lcom/lzx/iteam/adapter/AmazingAdapter;->jobTitleColor:I

    .line 38
    iput p3, p0, Lcom/lzx/iteam/adapter/AmazingAdapter;->phoneColor:I

    .line 39
    iput p4, p0, Lcom/lzx/iteam/adapter/AmazingAdapter;->hightLightColor:I

    .line 40
    iput p4, p0, Lcom/lzx/iteam/adapter/AmazingAdapter;->highLightColorBck:I

    .line 41
    iput p5, p0, Lcom/lzx/iteam/adapter/AmazingAdapter;->headerColor:I

    .line 42
    iput p6, p0, Lcom/lzx/iteam/adapter/AmazingAdapter;->headerTextColor:I

    .line 43
    return-void
.end method

.method setHasMorePagesListener(Lcom/lzx/iteam/adapter/AmazingAdapter$HasMorePagesListener;)V
    .locals 0
    .param p1, "hasMorePagesListener"    # Lcom/lzx/iteam/adapter/AmazingAdapter$HasMorePagesListener;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/lzx/iteam/adapter/AmazingAdapter;->hasMorePagesListener:Lcom/lzx/iteam/adapter/AmazingAdapter$HasMorePagesListener;

    .line 47
    return-void
.end method

.method public setInitialPage(I)V
    .locals 0
    .param p1, "initialPage"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/lzx/iteam/adapter/AmazingAdapter;->initialPage:I

    .line 99
    return-void
.end method
