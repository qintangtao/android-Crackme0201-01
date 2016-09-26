.class public Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;
.super Landroid/widget/LinearLayout;
.source "ScrollableLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/schedulecalendar/ScrollableLayout$DIRECTION;,
        Lcom/lzx/iteam/schedulecalendar/ScrollableLayout$OnScrollListener;
    }
.end annotation


# instance fields
.field private childViewPager:Landroid/support/v4/view/ViewPager;

.field private isClickHead:Z

.field private isClickHeadExpand:Z

.field private mCurY:I

.field private mDirection:Lcom/lzx/iteam/schedulecalendar/ScrollableLayout$DIRECTION;

.field private mDisallowIntercept:Z

.field private mDownX:F

.field private mDownY:F

.field private mExpandHeight:I

.field private mHeadHeight:I

.field private mHeadView:Landroid/view/View;

.field private mHelper:Lcom/lzx/iteam/schedulecalendar/ScrollableHelper;

.field private mLastScrollerY:I

.field private mLastY:F

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mScroller:Landroid/widget/Scroller;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private maxY:I

.field private minY:I

.field private needCheckUpdown:Z

.field private onScrollListener:Lcom/lzx/iteam/schedulecalendar/ScrollableLayout$OnScrollListener;

.field private final tag:Ljava/lang/String;

.field private updown:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44
    const-string v0, "cp:scrollableLayout"

    iput-object v0, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->tag:Ljava/lang/String;

    .line 49
    iput v1, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->minY:I

    .line 50
    iput v1, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->maxY:I

    .line 100
    invoke-direct {p0, p1}, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->init(Landroid/content/Context;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const-string v0, "cp:scrollableLayout"

    iput-object v0, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->tag:Ljava/lang/String;

    .line 49
    iput v1, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->minY:I

    .line 50
    iput v1, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->maxY:I

    .line 105
    invoke-direct {p0, p1}, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->init(Landroid/content/Context;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    const-string v0, "cp:scrollableLayout"

    iput-object v0, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->tag:Ljava/lang/String;

    .line 49
    iput v1, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->minY:I

    .line 50
    iput v1, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->maxY:I

    .line 111
    invoke-direct {p0, p1}, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->init(Landroid/content/Context;)V

    .line 112
    return-void
.end method

.method private calcDuration(II)I
    .locals 1
    .param p1, "duration"    # I
    .param p2, "timepass"    # I

    .prologue
    .line 342
    sub-int v0, p1, p2

    return v0
.end method

.method private checkIsClickHead(III)V
    .locals 1
    .param p1, "downY"    # I
    .param p2, "headHeight"    # I
    .param p3, "scrollY"    # I

    .prologue
    .line 331
    add-int v0, p1, p3

    if-gt v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->isClickHead:Z

    .line 332
    return-void

    .line 331
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkIsClickHeadExpand(III)V
    .locals 3
    .param p1, "downY"    # I
    .param p2, "headHeight"    # I
    .param p3, "scrollY"    # I

    .prologue
    const/4 v0, 0x0

    .line 335
    iget v1, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mExpandHeight:I

    if-gtz v1, :cond_0

    .line 336
    iput-boolean v0, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->isClickHeadExpand:Z

    .line 338
    :cond_0
    add-int v1, p1, p3

    iget v2, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mExpandHeight:I

    add-int/2addr v2, p2

    if-gt v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->isClickHeadExpand:Z

    .line 339
    return-void
.end method

.method private getScrollerVelocity(II)I
    .locals 2
    .param p1, "distance"    # I
    .param p2, "duration"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mScroller:Landroid/widget/Scroller;

    if-nez v0, :cond_0

    .line 242
    const/4 v0, 0x0

    .line 246
    :goto_0
    return v0

    .line 243
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 244
    iget-object v0, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    .line 246
    :cond_1
    div-int v0, p1, p2

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    new-instance v1, Lcom/lzx/iteam/schedulecalendar/ScrollableHelper;

    invoke-direct {v1}, Lcom/lzx/iteam/schedulecalendar/ScrollableHelper;-><init>()V

    iput-object v1, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mHelper:Lcom/lzx/iteam/schedulecalendar/ScrollableHelper;

    .line 122
    new-instance v1, Landroid/widget/Scroller;

    invoke-direct {v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mScroller:Landroid/widget/Scroller;

    .line 123
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 124
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mTouchSlop:I

    .line 125
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mMinimumVelocity:I

    .line 126
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mMaximumVelocity:I

    .line 127
    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 311
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 315
    :goto_0
    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 319
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 321
    :cond_0
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 326
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 328
    :cond_0
    return-void
.end method


# virtual methods
.method public canPtr()Z
    .locals 2

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->updown:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mCurY:I

    iget v1, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->minY:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mHelper:Lcom/lzx/iteam/schedulecalendar/ScrollableHelper;

    invoke-virtual {v0}, Lcom/lzx/iteam/schedulecalendar/ScrollableHelper;->isTop()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 252
    iget-object v5, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 253
    iget-object v5, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 254
    .local v0, "currY":I
    iget-object v5, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mDirection:Lcom/lzx/iteam/schedulecalendar/ScrollableLayout$DIRECTION;

    sget-object v6, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout$DIRECTION;->UP:Lcom/lzx/iteam/schedulecalendar/ScrollableLayout$DIRECTION;

    if-ne v5, v6, :cond_2

    .line 256
    invoke-virtual {p0}, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->isSticked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 257
    iget-object v5, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getFinalY()I

    move-result v5

    sub-int v2, v5, v0

    .line 258
    .local v2, "distance":I
    iget-object v5, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getDuration()I

    move-result v5

    iget-object v6, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->timePassed()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->calcDuration(II)I

    move-result v3

    .line 259
    .local v3, "duration":I
    iget-object v5, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mHelper:Lcom/lzx/iteam/schedulecalendar/ScrollableHelper;

    invoke-direct {p0, v2, v3}, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->getScrollerVelocity(II)I

    move-result v6

    invoke-virtual {v5, v6, v2, v3}, Lcom/lzx/iteam/schedulecalendar/ScrollableHelper;->smoothScrollBy(III)V

    .line 260
    iget-object v5, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5, v8}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 280
    .end local v0    # "currY":I
    .end local v2    # "distance":I
    .end local v3    # "duration":I
    :cond_0
    :goto_0
    return-void

    .line 263
    .restart local v0    # "currY":I
    :cond_1
    invoke-virtual {p0, v7, v0}, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->scrollTo(II)V

    .line 278
    :goto_1
    iput v0, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mLastScrollerY:I

    goto :goto_0

    .line 267
    :cond_2
    iget-object v5, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mHelper:Lcom/lzx/iteam/schedulecalendar/ScrollableHelper;

    invoke-virtual {v5}, Lcom/lzx/iteam/schedulecalendar/ScrollableHelper;->isTop()Z

    move-result v5

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->isClickHeadExpand:Z

    if-eqz v5, :cond_4

    .line 268
    :cond_3
    iget v5, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mLastScrollerY:I

    sub-int v1, v0, v5

    .line 269
    .local v1, "deltaY":I
    invoke-virtual {p0}, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->getScrollY()I

    move-result v5

    add-int v4, v5, v1

    .line 270
    .local v4, "toY":I
    invoke-virtual {p0, v7, v4}, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->scrollTo(II)V

    .line 271
    iget v5, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mCurY:I

    iget v6, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->minY:I

    if-gt v5, v6, :cond_4

    .line 272
    iget-object v5, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5, v8}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_0

    .line 276
    .end local v1    # "deltaY":I
    .end local v4    # "toY":I
    :cond_4
    invoke-virtual {p0}, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->invalidate()V

    goto :goto_1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 161
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    .line 162
    .local v12, "currentX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    .line 164
    .local v13, "currentY":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mDownX:F

    sub-float v2, v12, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v0, v2

    move/from16 v17, v0

    .line 165
    .local v17, "shiftX":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mDownY:F

    sub-float v2, v13, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v0, v2

    move/from16 v18, v0

    .line 166
    .local v18, "shiftY":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 235
    :cond_0
    :goto_0
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 236
    const/16 v16, 0x1

    :goto_1
    return v16

    .line 168
    :pswitch_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mDisallowIntercept:Z

    .line 169
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->needCheckUpdown:Z

    .line 170
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->updown:Z

    .line 171
    move-object/from16 v0, p0

    iput v12, v0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mDownX:F

    .line 172
    move-object/from16 v0, p0

    iput v13, v0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mDownY:F

    .line 173
    move-object/from16 v0, p0

    iput v13, v0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mLastY:F

    .line 174
    float-to-int v2, v13

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mHeadHeight:I

    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->getScrollY()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->checkIsClickHead(III)V

    .line 175
    float-to-int v2, v13

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mHeadHeight:I

    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->getScrollY()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->checkIsClickHeadExpand(III)V

    .line 176
    invoke-direct/range {p0 .. p0}, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->initOrResetVelocityTracker()V

    .line 177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mScroller:Landroid/widget/Scroller;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_0

    .line 181
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mDisallowIntercept:Z

    if-nez v2, :cond_0

    .line 184
    invoke-direct/range {p0 .. p0}, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->initVelocityTrackerIfNotExists()V

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 186
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mLastY:F

    sub-float v14, v2, v13

    .line 187
    .local v14, "deltaY":F
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->needCheckUpdown:Z

    if-eqz v2, :cond_1

    .line 188
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mTouchSlop:I

    move/from16 v0, v17

    if-le v0, v2, :cond_5

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_5

    .line 189
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->needCheckUpdown:Z

    .line 190
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->updown:Z

    .line 197
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->updown:Z

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mTouchSlop:I

    move/from16 v0, v18

    if-le v0, v2, :cond_4

    move/from16 v0, v18

    move/from16 v1, v17

    if-le v0, v1, :cond_4

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->isSticked()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mHelper:Lcom/lzx/iteam/schedulecalendar/ScrollableHelper;

    invoke-virtual {v2}, Lcom/lzx/iteam/schedulecalendar/ScrollableHelper;->isTop()Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->isClickHeadExpand:Z

    if-eqz v2, :cond_4

    .line 200
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->childViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_3

    .line 201
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->childViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->requestDisallowInterceptTouchEvent(Z)V

    .line 203
    :cond_3
    const/4 v2, 0x0

    float-to-double v4, v14

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    double-to-int v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->scrollBy(II)V

    .line 205
    :cond_4
    move-object/from16 v0, p0

    iput v13, v0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mLastY:F

    goto/16 :goto_0

    .line 191
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mTouchSlop:I

    move/from16 v0, v18

    if-le v0, v2, :cond_1

    move/from16 v0, v18

    move/from16 v1, v17

    if-le v0, v1, :cond_1

    .line 192
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->needCheckUpdown:Z

    .line 193
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->updown:Z

    goto :goto_2

    .line 208
    .end local v14    # "deltaY":F
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->updown:Z

    if-eqz v2, :cond_0

    move/from16 v0, v18

    move/from16 v1, v17

    if-le v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mTouchSlop:I

    move/from16 v0, v18

    if-le v0, v2, :cond_0

    .line 209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mMaximumVelocity:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 210
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    neg-float v0, v2

    move/from16 v19, v0

    .line 211
    .local v19, "yVelocity":F
    const/4 v15, 0x0

    .line 212
    .local v15, "dislowChild":Z
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mMinimumVelocity:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    .line 213
    const/4 v2, 0x0

    cmpl-float v2, v19, v2

    if-lez v2, :cond_a

    sget-object v2, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout$DIRECTION;->UP:Lcom/lzx/iteam/schedulecalendar/ScrollableLayout$DIRECTION;

    :goto_3
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mDirection:Lcom/lzx/iteam/schedulecalendar/ScrollableLayout$DIRECTION;

    .line 214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mDirection:Lcom/lzx/iteam/schedulecalendar/ScrollableLayout$DIRECTION;

    sget-object v3, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout$DIRECTION;->UP:Lcom/lzx/iteam/schedulecalendar/ScrollableLayout$DIRECTION;

    if-ne v2, v3, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->isSticked()Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->isSticked()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->getScrollY()I

    move-result v2

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mDirection:Lcom/lzx/iteam/schedulecalendar/ScrollableLayout$DIRECTION;

    sget-object v3, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout$DIRECTION;->DOWN:Lcom/lzx/iteam/schedulecalendar/ScrollableLayout$DIRECTION;

    if-ne v2, v3, :cond_b

    .line 215
    :cond_7
    const/4 v15, 0x1

    .line 223
    :cond_8
    :goto_4
    if-nez v15, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->isClickHead:Z

    if-nez v2, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->isSticked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 224
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    .line 225
    .local v11, "action":I
    const/4 v2, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 226
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v16

    .line 227
    .local v16, "dispathResult":Z
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->setAction(I)V

    goto/16 :goto_1

    .line 213
    .end local v11    # "action":I
    .end local v16    # "dispathResult":Z
    :cond_a
    sget-object v2, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout$DIRECTION;->DOWN:Lcom/lzx/iteam/schedulecalendar/ScrollableLayout$DIRECTION;

    goto :goto_3

    .line 217
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mScroller:Landroid/widget/Scroller;

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->getScrollY()I

    move-result v4

    const/4 v5, 0x0

    move/from16 v0, v19

    float-to-int v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, -0x7fffffff

    const v10, 0x7fffffff

    invoke-virtual/range {v2 .. v10}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->getScrollY()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mLastScrollerY:I

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->invalidate()V

    goto :goto_4

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getHelper()Lcom/lzx/iteam/schedulecalendar/ScrollableHelper;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mHelper:Lcom/lzx/iteam/schedulecalendar/ScrollableHelper;

    return-object v0
.end method

.method public getMaxY()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->maxY:I

    return v0
.end method

.method public isHeadTop()Z
    .locals 2

    .prologue
    .line 147
    iget v0, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mCurY:I

    iget v1, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->minY:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSticked()Z
    .locals 2

    .prologue
    .line 130
    iget v0, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mCurY:I

    iget v1, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->maxY:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    .line 356
    iget-object v3, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mHeadView:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mHeadView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 357
    iget-object v3, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mHeadView:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    .line 359
    :cond_0
    invoke-virtual {p0}, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->getChildCount()I

    move-result v1

    .line 360
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_1

    .line 366
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 367
    return-void

    .line 361
    :cond_1
    invoke-virtual {p0, v2}, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 362
    .local v0, "childAt":Landroid/view/View;
    if-eqz v0, :cond_2

    instance-of v3, v0, Landroid/support/v4/view/ViewPager;

    if-eqz v3, :cond_2

    .line 363
    check-cast v0, Landroid/support/v4/view/ViewPager;

    .end local v0    # "childAt":Landroid/view/View;
    iput-object v0, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->childViewPager:Landroid/support/v4/view/ViewPager;

    .line 360
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 347
    invoke-virtual {p0, v3}, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mHeadView:Landroid/view/View;

    .line 348
    iget-object v1, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mHeadView:Landroid/view/View;

    move-object v0, p0

    move v2, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 349
    iget-object v0, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mHeadView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42380000    # 46.0f

    invoke-static {v1, v2}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->maxY:I

    .line 350
    iget-object v0, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mHeadView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mHeadHeight:I

    .line 351
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->maxY:I

    add-int/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 352
    return-void
.end method

.method public requestScrollableLayoutDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 156
    iput-boolean p1, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mDisallowIntercept:Z

    .line 157
    return-void
.end method

.method public scrollBy(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->getScrollY()I

    move-result v0

    .line 285
    .local v0, "scrollY":I
    add-int v1, v0, p2

    .line 286
    .local v1, "toY":I
    iget v2, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->maxY:I

    if-lt v1, v2, :cond_1

    .line 287
    iget v1, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->maxY:I

    .line 291
    :cond_0
    :goto_0
    sub-int p2, v1, v0

    .line 292
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->scrollBy(II)V

    .line 293
    return-void

    .line 288
    :cond_1
    iget v2, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->minY:I

    if-gt v1, v2, :cond_0

    .line 289
    iget v1, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->minY:I

    goto :goto_0
.end method

.method public scrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 297
    iget v0, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->maxY:I

    if-lt p2, v0, :cond_2

    .line 298
    iget p2, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->maxY:I

    .line 302
    :cond_0
    :goto_0
    iput p2, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mCurY:I

    .line 303
    iget-object v0, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->onScrollListener:Lcom/lzx/iteam/schedulecalendar/ScrollableLayout$OnScrollListener;

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->onScrollListener:Lcom/lzx/iteam/schedulecalendar/ScrollableLayout$OnScrollListener;

    iget v1, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->maxY:I

    invoke-interface {v0, p2, v1}, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout$OnScrollListener;->onScroll(II)V

    .line 306
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->scrollTo(II)V

    .line 307
    return-void

    .line 299
    :cond_2
    iget v0, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->minY:I

    if-gt p2, v0, :cond_0

    .line 300
    iget p2, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->minY:I

    goto :goto_0
.end method

.method public setClickHeadExpand(I)V
    .locals 0
    .param p1, "expandHeight"    # I

    .prologue
    .line 139
    iput p1, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mExpandHeight:I

    .line 140
    return-void
.end method

.method public setOnScrollListener(Lcom/lzx/iteam/schedulecalendar/ScrollableLayout$OnScrollListener;)V
    .locals 0
    .param p1, "onScrollListener"    # Lcom/lzx/iteam/schedulecalendar/ScrollableLayout$OnScrollListener;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->onScrollListener:Lcom/lzx/iteam/schedulecalendar/ScrollableLayout$OnScrollListener;

    .line 90
    return-void
.end method

.method public stopSliding()V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 371
    return-void
.end method
