.class Lcom/lzx/iteam/widget/HorizontalListView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/widget/HorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/widget/HorizontalListView;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/widget/HorizontalListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/widget/HorizontalListView$2;->this$0:Lcom/lzx/iteam/widget/HorizontalListView;

    .line 320
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method private isEventWithinView(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 8
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 379
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 380
    .local v5, "viewRect":Landroid/graphics/Rect;
    const/4 v6, 0x2

    new-array v1, v6, [I

    .line 381
    .local v1, "childPosition":[I
    invoke-virtual {p2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 382
    const/4 v6, 0x0

    aget v2, v1, v6

    .line 383
    .local v2, "left":I
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int v3, v2, v6

    .line 384
    .local v3, "right":I
    const/4 v6, 0x1

    aget v4, v1, v6

    .line 385
    .local v4, "top":I
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int v0, v4, v6

    .line 386
    .local v0, "bottom":I
    invoke-virtual {v5, v2, v4, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 387
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    return v6
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 324
    iget-object v0, p0, Lcom/lzx/iteam/widget/HorizontalListView$2;->this$0:Lcom/lzx/iteam/widget/HorizontalListView;

    invoke-virtual {v0, p1}, Lcom/lzx/iteam/widget/HorizontalListView;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 330
    iget-object v0, p0, Lcom/lzx/iteam/widget/HorizontalListView$2;->this$0:Lcom/lzx/iteam/widget/HorizontalListView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lzx/iteam/widget/HorizontalListView;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 365
    iget-object v0, p0, Lcom/lzx/iteam/widget/HorizontalListView$2;->this$0:Lcom/lzx/iteam/widget/HorizontalListView;

    invoke-virtual {v0}, Lcom/lzx/iteam/widget/HorizontalListView;->getChildCount()I

    move-result v6

    .line 366
    .local v6, "childCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-lt v7, v6, :cond_1

    .line 376
    :cond_0
    :goto_1
    return-void

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/widget/HorizontalListView$2;->this$0:Lcom/lzx/iteam/widget/HorizontalListView;

    invoke-virtual {v0, v7}, Lcom/lzx/iteam/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 368
    .local v2, "child":Landroid/view/View;
    invoke-direct {p0, p1, v2}, Lcom/lzx/iteam/widget/HorizontalListView$2;->isEventWithinView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 369
    iget-object v0, p0, Lcom/lzx/iteam/widget/HorizontalListView$2;->this$0:Lcom/lzx/iteam/widget/HorizontalListView;

    # getter for: Lcom/lzx/iteam/widget/HorizontalListView;->mOnItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;
    invoke-static {v0}, Lcom/lzx/iteam/widget/HorizontalListView;->access$7(Lcom/lzx/iteam/widget/HorizontalListView;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/lzx/iteam/widget/HorizontalListView$2;->this$0:Lcom/lzx/iteam/widget/HorizontalListView;

    # getter for: Lcom/lzx/iteam/widget/HorizontalListView;->mOnItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;
    invoke-static {v0}, Lcom/lzx/iteam/widget/HorizontalListView;->access$7(Lcom/lzx/iteam/widget/HorizontalListView;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/widget/HorizontalListView$2;->this$0:Lcom/lzx/iteam/widget/HorizontalListView;

    iget-object v3, p0, Lcom/lzx/iteam/widget/HorizontalListView$2;->this$0:Lcom/lzx/iteam/widget/HorizontalListView;

    # getter for: Lcom/lzx/iteam/widget/HorizontalListView;->mLeftViewIndex:I
    invoke-static {v3}, Lcom/lzx/iteam/widget/HorizontalListView;->access$5(Lcom/lzx/iteam/widget/HorizontalListView;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v7

    iget-object v4, p0, Lcom/lzx/iteam/widget/HorizontalListView$2;->this$0:Lcom/lzx/iteam/widget/HorizontalListView;

    iget-object v4, v4, Lcom/lzx/iteam/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v5, p0, Lcom/lzx/iteam/widget/HorizontalListView$2;->this$0:Lcom/lzx/iteam/widget/HorizontalListView;

    # getter for: Lcom/lzx/iteam/widget/HorizontalListView;->mLeftViewIndex:I
    invoke-static {v5}, Lcom/lzx/iteam/widget/HorizontalListView;->access$5(Lcom/lzx/iteam/widget/HorizontalListView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v7

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    goto :goto_1

    .line 366
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 337
    iget-object v1, p0, Lcom/lzx/iteam/widget/HorizontalListView$2;->this$0:Lcom/lzx/iteam/widget/HorizontalListView;

    monitor-enter v1

    .line 338
    :try_start_0
    iget-object v0, p0, Lcom/lzx/iteam/widget/HorizontalListView$2;->this$0:Lcom/lzx/iteam/widget/HorizontalListView;

    iget v2, v0, Lcom/lzx/iteam/widget/HorizontalListView;->mNextX:I

    float-to-int v3, p3

    add-int/2addr v2, v3

    iput v2, v0, Lcom/lzx/iteam/widget/HorizontalListView;->mNextX:I

    .line 337
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    iget-object v0, p0, Lcom/lzx/iteam/widget/HorizontalListView$2;->this$0:Lcom/lzx/iteam/widget/HorizontalListView;

    invoke-virtual {v0}, Lcom/lzx/iteam/widget/HorizontalListView;->requestLayout()V

    .line 342
    const/4 v0, 0x1

    return v0

    .line 337
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 347
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Lcom/lzx/iteam/widget/HorizontalListView$2;->this$0:Lcom/lzx/iteam/widget/HorizontalListView;

    invoke-virtual {v0}, Lcom/lzx/iteam/widget/HorizontalListView;->getChildCount()I

    move-result v0

    if-lt v6, v0, :cond_1

    .line 360
    :cond_0
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/widget/HorizontalListView$2;->this$0:Lcom/lzx/iteam/widget/HorizontalListView;

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 349
    .local v2, "child":Landroid/view/View;
    invoke-direct {p0, p1, v2}, Lcom/lzx/iteam/widget/HorizontalListView$2;->isEventWithinView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 350
    iget-object v0, p0, Lcom/lzx/iteam/widget/HorizontalListView$2;->this$0:Lcom/lzx/iteam/widget/HorizontalListView;

    # getter for: Lcom/lzx/iteam/widget/HorizontalListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v0}, Lcom/lzx/iteam/widget/HorizontalListView;->access$4(Lcom/lzx/iteam/widget/HorizontalListView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 351
    iget-object v0, p0, Lcom/lzx/iteam/widget/HorizontalListView$2;->this$0:Lcom/lzx/iteam/widget/HorizontalListView;

    # getter for: Lcom/lzx/iteam/widget/HorizontalListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v0}, Lcom/lzx/iteam/widget/HorizontalListView;->access$4(Lcom/lzx/iteam/widget/HorizontalListView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/widget/HorizontalListView$2;->this$0:Lcom/lzx/iteam/widget/HorizontalListView;

    iget-object v3, p0, Lcom/lzx/iteam/widget/HorizontalListView$2;->this$0:Lcom/lzx/iteam/widget/HorizontalListView;

    # getter for: Lcom/lzx/iteam/widget/HorizontalListView;->mLeftViewIndex:I
    invoke-static {v3}, Lcom/lzx/iteam/widget/HorizontalListView;->access$5(Lcom/lzx/iteam/widget/HorizontalListView;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v6

    iget-object v4, p0, Lcom/lzx/iteam/widget/HorizontalListView$2;->this$0:Lcom/lzx/iteam/widget/HorizontalListView;

    iget-object v4, v4, Lcom/lzx/iteam/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v5, p0, Lcom/lzx/iteam/widget/HorizontalListView$2;->this$0:Lcom/lzx/iteam/widget/HorizontalListView;

    # getter for: Lcom/lzx/iteam/widget/HorizontalListView;->mLeftViewIndex:I
    invoke-static {v5}, Lcom/lzx/iteam/widget/HorizontalListView;->access$5(Lcom/lzx/iteam/widget/HorizontalListView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v6

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 353
    :cond_2
    iget-object v0, p0, Lcom/lzx/iteam/widget/HorizontalListView$2;->this$0:Lcom/lzx/iteam/widget/HorizontalListView;

    # getter for: Lcom/lzx/iteam/widget/HorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;
    invoke-static {v0}, Lcom/lzx/iteam/widget/HorizontalListView;->access$6(Lcom/lzx/iteam/widget/HorizontalListView;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/lzx/iteam/widget/HorizontalListView$2;->this$0:Lcom/lzx/iteam/widget/HorizontalListView;

    # getter for: Lcom/lzx/iteam/widget/HorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;
    invoke-static {v0}, Lcom/lzx/iteam/widget/HorizontalListView;->access$6(Lcom/lzx/iteam/widget/HorizontalListView;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/widget/HorizontalListView$2;->this$0:Lcom/lzx/iteam/widget/HorizontalListView;

    iget-object v3, p0, Lcom/lzx/iteam/widget/HorizontalListView$2;->this$0:Lcom/lzx/iteam/widget/HorizontalListView;

    # getter for: Lcom/lzx/iteam/widget/HorizontalListView;->mLeftViewIndex:I
    invoke-static {v3}, Lcom/lzx/iteam/widget/HorizontalListView;->access$5(Lcom/lzx/iteam/widget/HorizontalListView;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v6

    iget-object v4, p0, Lcom/lzx/iteam/widget/HorizontalListView$2;->this$0:Lcom/lzx/iteam/widget/HorizontalListView;

    iget-object v4, v4, Lcom/lzx/iteam/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v5, p0, Lcom/lzx/iteam/widget/HorizontalListView$2;->this$0:Lcom/lzx/iteam/widget/HorizontalListView;

    # getter for: Lcom/lzx/iteam/widget/HorizontalListView;->mLeftViewIndex:I
    invoke-static {v5}, Lcom/lzx/iteam/widget/HorizontalListView;->access$5(Lcom/lzx/iteam/widget/HorizontalListView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v6

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_1

    .line 347
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method
