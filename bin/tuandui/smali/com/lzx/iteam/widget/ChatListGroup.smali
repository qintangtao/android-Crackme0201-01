.class public Lcom/lzx/iteam/widget/ChatListGroup;
.super Landroid/widget/LinearLayout;
.source "ChatListGroup.java"


# instance fields
.field open:Z

.field scroller:Landroid/widget/Scroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/widget/ChatListGroup;->scroller:Landroid/widget/Scroller;

    .line 16
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .prologue
    .line 20
    invoke-super {p0}, Landroid/widget/LinearLayout;->computeScroll()V

    .line 21
    iget-object v0, p0, Lcom/lzx/iteam/widget/ChatListGroup;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/lzx/iteam/widget/ChatListGroup;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/lzx/iteam/widget/ChatListGroup;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/lzx/iteam/widget/ChatListGroup;->scrollTo(II)V

    .line 23
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/ChatListGroup;->postInvalidate()V

    .line 25
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 33
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 34
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/ChatListGroup;->getWidth()I

    move-result v0

    .line 35
    .local v0, "width":I
    iget-boolean v1, p0, Lcom/lzx/iteam/widget/ChatListGroup;->open:Z

    if-eqz v1, :cond_0

    .line 36
    div-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/lzx/iteam/widget/ChatListGroup;->scrollTo(II)V

    .line 39
    :cond_0
    return-void
.end method

.method public scrollToHide()V
    .locals 6

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/lzx/iteam/widget/ChatListGroup;->open:Z

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/lzx/iteam/widget/ChatListGroup;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/lzx/iteam/widget/ChatListGroup;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/lzx/iteam/widget/ChatListGroup;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lcom/lzx/iteam/widget/ChatListGroup;->getScrollX()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x0

    invoke-virtual {p0}, Lcom/lzx/iteam/widget/ChatListGroup;->getScrollY()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x0

    const/16 v5, 0x1f4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lzx/iteam/widget/ChatListGroup;->open:Z

    .line 54
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/ChatListGroup;->postInvalidate()V

    .line 56
    :cond_0
    return-void
.end method

.method public scrollToOpen()V
    .locals 7

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/lzx/iteam/widget/ChatListGroup;->open:Z

    if-nez v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/ChatListGroup;->getWidth()I

    move-result v6

    .line 44
    .local v6, "width":I
    iget-object v0, p0, Lcom/lzx/iteam/widget/ChatListGroup;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/lzx/iteam/widget/ChatListGroup;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/lzx/iteam/widget/ChatListGroup;->getScrollY()I

    move-result v2

    div-int/lit8 v3, v6, 0x2

    invoke-virtual {p0}, Lcom/lzx/iteam/widget/ChatListGroup;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/lzx/iteam/widget/ChatListGroup;->getScrollY()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x0

    const/16 v5, 0x1f4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lzx/iteam/widget/ChatListGroup;->open:Z

    .line 46
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/ChatListGroup;->postInvalidate()V

    .line 48
    .end local v6    # "width":I
    :cond_0
    return-void
.end method

.method public setOpen(Z)V
    .locals 0
    .param p1, "open"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/lzx/iteam/widget/ChatListGroup;->open:Z

    .line 29
    return-void
.end method
