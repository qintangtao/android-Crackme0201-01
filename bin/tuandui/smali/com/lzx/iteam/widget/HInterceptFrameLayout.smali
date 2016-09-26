.class public Lcom/lzx/iteam/widget/HInterceptFrameLayout;
.super Landroid/widget/FrameLayout;
.source "HInterceptFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/widget/HInterceptFrameLayout$DoubleScrollListener;
    }
.end annotation


# instance fields
.field TAG:Ljava/lang/String;

.field activity:Lcom/lzx/iteam/CloudDialerActivity;

.field context:Landroid/content/Context;

.field doubleFinger:Z

.field last:Landroid/graphics/PointF;

.field mDoubleScrollListener:Lcom/lzx/iteam/widget/HInterceptFrameLayout$DoubleScrollListener;

.field start:Landroid/graphics/PointF;

.field touchSlop:I

.field vt:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout;->start:Landroid/graphics/PointF;

    .line 23
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout;->last:Landroid/graphics/PointF;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout;->doubleFinger:Z

    .line 28
    const-string v0, "HInterceptFrameLayout"

    iput-object v0, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout;->TAG:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout;->context:Landroid/content/Context;

    .line 32
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout;->touchSlop:I

    .line 33
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 42
    iget-object v5, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout;->vt:Landroid/view/VelocityTracker;

    if-nez v5, :cond_0

    .line 43
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout;->vt:Landroid/view/VelocityTracker;

    .line 45
    :cond_0
    const/4 v3, 0x0

    .line 46
    .local v3, "result":Z
    iget-object v5, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout;->vt:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 48
    .local v0, "action":I
    and-int/lit16 v5, v0, 0xff

    packed-switch v5, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    move v4, v3

    .line 77
    :goto_1
    return v4

    .line 50
    :pswitch_1
    iget-object v4, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout;->start:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 51
    iget-object v4, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout;->last:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 54
    :pswitch_2
    const/4 v3, 0x1

    .line 55
    iput-boolean v4, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout;->doubleFinger:Z

    .line 56
    iget-boolean v5, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout;->doubleFinger:Z

    if-eqz v5, :cond_1

    goto :goto_1

    .line 60
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout;->start:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float v2, v4, v5

    .line 61
    .local v2, "disy":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iget-object v5, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout;->last:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float v1, v4, v5

    .line 62
    .local v1, "disx":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout;->touchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_2

    iget-boolean v4, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout;->doubleFinger:Z

    if-nez v4, :cond_2

    const/high16 v4, 0x40a00000    # 5.0f

    cmpl-float v4, v1, v4

    if-lez v4, :cond_3

    .line 63
    :cond_2
    const/4 v3, 0x1

    .line 65
    goto :goto_0

    .line 66
    :cond_3
    iget-object v4, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout;->vt:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_1

    .line 67
    iget-object v4, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout;->vt:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->recycle()V

    .line 68
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout;->vt:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    const v8, 0x7f0e048b

    const/4 v9, 0x1

    .line 82
    iget-object v6, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout;->vt:Landroid/view/VelocityTracker;

    if-nez v6, :cond_0

    .line 83
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v6

    iput-object v6, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout;->vt:Landroid/view/VelocityTracker;

    .line 85
    :cond_0
    iget-object v6, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout;->vt:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 87
    .local v0, "action":I
    and-int/lit16 v6, v0, 0xff

    packed-switch v6, :pswitch_data_0

    .line 136
    :cond_1
    :goto_0
    return v9

    .line 89
    :pswitch_0
    iget-object v6, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout;->start:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 92
    :pswitch_1
    iget-boolean v6, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout;->doubleFinger:Z

    if-eqz v6, :cond_1

    .line 93
    iget-object v6, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout;->mDoubleScrollListener:Lcom/lzx/iteam/widget/HInterceptFrameLayout$DoubleScrollListener;

    if-eqz v6, :cond_1

    .line 94
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iget-object v7, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout;->last:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    sub-float v1, v6, v7

    .line 95
    .local v1, "disx":F
    iget-object v6, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout;->mDoubleScrollListener:Lcom/lzx/iteam/widget/HInterceptFrameLayout$DoubleScrollListener;

    invoke-interface {v6, v1}, Lcom/lzx/iteam/widget/HInterceptFrameLayout$DoubleScrollListener;->onDoubleScroll(F)V

    .line 96
    iget-object v6, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout;->last:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 101
    .end local v1    # "disx":F
    :pswitch_2
    iget-boolean v6, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout;->doubleFinger:Z

    if-eqz v6, :cond_2

    .line 102
    iput-boolean v10, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout;->doubleFinger:Z

    .line 103
    iget-object v6, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout;->mDoubleScrollListener:Lcom/lzx/iteam/widget/HInterceptFrameLayout$DoubleScrollListener;

    if-eqz v6, :cond_1

    .line 104
    iget-object v6, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout;->mDoubleScrollListener:Lcom/lzx/iteam/widget/HInterceptFrameLayout$DoubleScrollListener;

    invoke-interface {v6}, Lcom/lzx/iteam/widget/HInterceptFrameLayout$DoubleScrollListener;->onDobleScrollUp()V

    goto :goto_0

    .line 108
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout;->start:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float v2, v6, v7

    .line 109
    .local v2, "disy":F
    invoke-virtual {p0, v10}, Lcom/lzx/iteam/widget/HInterceptFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 110
    .local v3, "first":Landroid/view/View;
    invoke-virtual {p0, v9}, Lcom/lzx/iteam/widget/HInterceptFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 111
    .local v4, "second":Landroid/view/View;
    iget-object v6, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout;->vt:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_3

    .line 112
    iget-object v6, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout;->vt:Landroid/view/VelocityTracker;

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 113
    iget-object v6, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout;->vt:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    .line 114
    .local v5, "yvt":F
    const/high16 v6, -0x3d380000    # -100.0f

    cmpg-float v6, v5, v6

    if-gez v6, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-ne v6, v11, :cond_3

    .line 115
    iget-object v6, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout;->activity:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v6, v8}, Lcom/lzx/iteam/CloudDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->performClick()Z

    goto/16 :goto_0

    .line 123
    .end local v5    # "yvt":F
    :cond_3
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/HInterceptFrameLayout;->getWidth()I

    move-result v6

    neg-int v6, v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    cmpg-float v6, v2, v6

    if-gez v6, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-ne v6, v11, :cond_4

    .line 124
    iget-object v6, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout;->activity:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v6, v8}, Lcom/lzx/iteam/CloudDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->performClick()Z

    goto/16 :goto_0

    .line 127
    :cond_4
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/HInterceptFrameLayout;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    cmpl-float v6, v2, v6

    if-lez v6, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_5

    .line 128
    iget-object v6, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout;->activity:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v6, v8}, Lcom/lzx/iteam/CloudDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->performClick()Z

    goto/16 :goto_0

    .line 132
    :cond_5
    iget-object v6, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout;->vt:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->recycle()V

    .line 133
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout;->vt:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setListener(Lcom/lzx/iteam/CloudDialerActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/lzx/iteam/CloudDialerActivity;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout;->activity:Lcom/lzx/iteam/CloudDialerActivity;

    .line 37
    return-void
.end method

.method public setOnDoubleScrollListener(Lcom/lzx/iteam/widget/HInterceptFrameLayout$DoubleScrollListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lzx/iteam/widget/HInterceptFrameLayout$DoubleScrollListener;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout;->mDoubleScrollListener:Lcom/lzx/iteam/widget/HInterceptFrameLayout$DoubleScrollListener;

    .line 147
    return-void
.end method
