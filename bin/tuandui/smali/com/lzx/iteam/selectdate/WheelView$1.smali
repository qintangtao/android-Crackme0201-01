.class Lcom/lzx/iteam/selectdate/WheelView$1;
.super Ljava/lang/Object;
.source "WheelView.java"

# interfaces
.implements Lcom/lzx/iteam/selectdate/WheelScroller$ScrollingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/selectdate/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/selectdate/WheelView;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/selectdate/WheelView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/selectdate/WheelView$1;->this$0:Lcom/lzx/iteam/selectdate/WheelView;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 171
    iget-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView$1;->this$0:Lcom/lzx/iteam/selectdate/WheelView;

    # getter for: Lcom/lzx/iteam/selectdate/WheelView;->isScrollingPerformed:Z
    invoke-static {v0}, Lcom/lzx/iteam/selectdate/WheelView;->access$5(Lcom/lzx/iteam/selectdate/WheelView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView$1;->this$0:Lcom/lzx/iteam/selectdate/WheelView;

    invoke-virtual {v0}, Lcom/lzx/iteam/selectdate/WheelView;->notifyScrollingListenersAboutEnd()V

    .line 173
    iget-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView$1;->this$0:Lcom/lzx/iteam/selectdate/WheelView;

    invoke-static {v0, v1}, Lcom/lzx/iteam/selectdate/WheelView;->access$0(Lcom/lzx/iteam/selectdate/WheelView;Z)V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView$1;->this$0:Lcom/lzx/iteam/selectdate/WheelView;

    invoke-static {v0, v1}, Lcom/lzx/iteam/selectdate/WheelView;->access$3(Lcom/lzx/iteam/selectdate/WheelView;I)V

    .line 177
    iget-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView$1;->this$0:Lcom/lzx/iteam/selectdate/WheelView;

    invoke-virtual {v0}, Lcom/lzx/iteam/selectdate/WheelView;->invalidate()V

    .line 178
    return-void
.end method

.method public onJustify()V
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView$1;->this$0:Lcom/lzx/iteam/selectdate/WheelView;

    # getter for: Lcom/lzx/iteam/selectdate/WheelView;->scrollingOffset:I
    invoke-static {v0}, Lcom/lzx/iteam/selectdate/WheelView;->access$2(Lcom/lzx/iteam/selectdate/WheelView;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 183
    iget-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView$1;->this$0:Lcom/lzx/iteam/selectdate/WheelView;

    # getter for: Lcom/lzx/iteam/selectdate/WheelView;->scroller:Lcom/lzx/iteam/selectdate/WheelScroller;
    invoke-static {v0}, Lcom/lzx/iteam/selectdate/WheelView;->access$4(Lcom/lzx/iteam/selectdate/WheelView;)Lcom/lzx/iteam/selectdate/WheelScroller;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/selectdate/WheelView$1;->this$0:Lcom/lzx/iteam/selectdate/WheelView;

    # getter for: Lcom/lzx/iteam/selectdate/WheelView;->scrollingOffset:I
    invoke-static {v1}, Lcom/lzx/iteam/selectdate/WheelView;->access$2(Lcom/lzx/iteam/selectdate/WheelView;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/selectdate/WheelScroller;->scroll(II)V

    .line 185
    :cond_0
    return-void
.end method

.method public onScroll(I)V
    .locals 3
    .param p1, "distance"    # I

    .prologue
    .line 157
    iget-object v1, p0, Lcom/lzx/iteam/selectdate/WheelView$1;->this$0:Lcom/lzx/iteam/selectdate/WheelView;

    # invokes: Lcom/lzx/iteam/selectdate/WheelView;->doScroll(I)V
    invoke-static {v1, p1}, Lcom/lzx/iteam/selectdate/WheelView;->access$1(Lcom/lzx/iteam/selectdate/WheelView;I)V

    .line 159
    iget-object v1, p0, Lcom/lzx/iteam/selectdate/WheelView$1;->this$0:Lcom/lzx/iteam/selectdate/WheelView;

    invoke-virtual {v1}, Lcom/lzx/iteam/selectdate/WheelView;->getHeight()I

    move-result v0

    .line 160
    .local v0, "height":I
    iget-object v1, p0, Lcom/lzx/iteam/selectdate/WheelView$1;->this$0:Lcom/lzx/iteam/selectdate/WheelView;

    # getter for: Lcom/lzx/iteam/selectdate/WheelView;->scrollingOffset:I
    invoke-static {v1}, Lcom/lzx/iteam/selectdate/WheelView;->access$2(Lcom/lzx/iteam/selectdate/WheelView;)I

    move-result v1

    if-le v1, v0, :cond_1

    .line 161
    iget-object v1, p0, Lcom/lzx/iteam/selectdate/WheelView$1;->this$0:Lcom/lzx/iteam/selectdate/WheelView;

    invoke-static {v1, v0}, Lcom/lzx/iteam/selectdate/WheelView;->access$3(Lcom/lzx/iteam/selectdate/WheelView;I)V

    .line 162
    iget-object v1, p0, Lcom/lzx/iteam/selectdate/WheelView$1;->this$0:Lcom/lzx/iteam/selectdate/WheelView;

    # getter for: Lcom/lzx/iteam/selectdate/WheelView;->scroller:Lcom/lzx/iteam/selectdate/WheelScroller;
    invoke-static {v1}, Lcom/lzx/iteam/selectdate/WheelView;->access$4(Lcom/lzx/iteam/selectdate/WheelView;)Lcom/lzx/iteam/selectdate/WheelScroller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lzx/iteam/selectdate/WheelScroller;->stopScrolling()V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v1, p0, Lcom/lzx/iteam/selectdate/WheelView$1;->this$0:Lcom/lzx/iteam/selectdate/WheelView;

    # getter for: Lcom/lzx/iteam/selectdate/WheelView;->scrollingOffset:I
    invoke-static {v1}, Lcom/lzx/iteam/selectdate/WheelView;->access$2(Lcom/lzx/iteam/selectdate/WheelView;)I

    move-result v1

    neg-int v2, v0

    if-ge v1, v2, :cond_0

    .line 164
    iget-object v1, p0, Lcom/lzx/iteam/selectdate/WheelView$1;->this$0:Lcom/lzx/iteam/selectdate/WheelView;

    neg-int v2, v0

    invoke-static {v1, v2}, Lcom/lzx/iteam/selectdate/WheelView;->access$3(Lcom/lzx/iteam/selectdate/WheelView;I)V

    .line 165
    iget-object v1, p0, Lcom/lzx/iteam/selectdate/WheelView$1;->this$0:Lcom/lzx/iteam/selectdate/WheelView;

    # getter for: Lcom/lzx/iteam/selectdate/WheelView;->scroller:Lcom/lzx/iteam/selectdate/WheelScroller;
    invoke-static {v1}, Lcom/lzx/iteam/selectdate/WheelView;->access$4(Lcom/lzx/iteam/selectdate/WheelView;)Lcom/lzx/iteam/selectdate/WheelScroller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lzx/iteam/selectdate/WheelScroller;->stopScrolling()V

    goto :goto_0
.end method

.method public onStarted()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView$1;->this$0:Lcom/lzx/iteam/selectdate/WheelView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lzx/iteam/selectdate/WheelView;->access$0(Lcom/lzx/iteam/selectdate/WheelView;Z)V

    .line 152
    iget-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView$1;->this$0:Lcom/lzx/iteam/selectdate/WheelView;

    invoke-virtual {v0}, Lcom/lzx/iteam/selectdate/WheelView;->notifyScrollingListenersAboutStart()V

    .line 153
    return-void
.end method
