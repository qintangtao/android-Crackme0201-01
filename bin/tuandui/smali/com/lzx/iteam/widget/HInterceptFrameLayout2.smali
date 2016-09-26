.class public Lcom/lzx/iteam/widget/HInterceptFrameLayout2;
.super Landroid/widget/LinearLayout;
.source "HInterceptFrameLayout2.java"


# instance fields
.field activity:Lcom/lzx/iteam/CloudDialerActivity;

.field context:Landroid/content/Context;

.field doubleFinger:Z

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
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout2;->start:Landroid/graphics/PointF;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout2;->doubleFinger:Z

    .line 31
    iput-object p1, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout2;->context:Landroid/content/Context;

    .line 32
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout2;->touchSlop:I

    .line 33
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 42
    iget-object v2, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout2;->vt:Landroid/view/VelocityTracker;

    if-nez v2, :cond_0

    .line 43
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout2;->vt:Landroid/view/VelocityTracker;

    .line 45
    :cond_0
    iget-object v2, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout2;->vt:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 47
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 66
    :cond_1
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_1
    return v2

    .line 49
    :pswitch_1
    iget-object v2, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout2;->start:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 52
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout2;->start:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v1, v2, v3

    .line 53
    .local v1, "disy":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 54
    const/4 v2, 0x1

    goto :goto_1

    .line 56
    :cond_2
    iget-object v2, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout2;->vt:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_1

    .line 57
    iget-object v2, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout2;->vt:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    .line 58
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout2;->vt:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 71
    iget-object v2, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout2;->vt:Landroid/view/VelocityTracker;

    if-nez v2, :cond_0

    .line 72
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout2;->vt:Landroid/view/VelocityTracker;

    .line 74
    :cond_0
    iget-object v2, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout2;->vt:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 76
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 109
    :goto_0
    :pswitch_0
    return v5

    .line 78
    :pswitch_1
    iget-object v2, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout2;->start:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 84
    :pswitch_2
    iget-object v2, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout2;->vt:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_2

    .line 85
    iget-object v2, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout2;->vt:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 86
    iget-object v2, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout2;->vt:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    .line 87
    .local v1, "yvt":F
    cmpg-float v2, v1, v4

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout2;->activity:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v2}, Lcom/lzx/iteam/CloudDialerActivity;->getIsDisplayUnderPanel()Z

    move-result v2

    if-nez v2, :cond_1

    .line 88
    iget-object v2, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout2;->activity:Lcom/lzx/iteam/CloudDialerActivity;

    const v3, 0x7f0e0488

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/CloudDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 91
    :cond_1
    cmpl-float v2, v1, v4

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout2;->activity:Lcom/lzx/iteam/CloudDialerActivity;

    const v3, 0x7f0e0605

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/CloudDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 92
    iget-object v2, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout2;->activity:Lcom/lzx/iteam/CloudDialerActivity;

    const v3, 0x7f0e048b

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/CloudDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 105
    .end local v1    # "yvt":F
    :cond_2
    iget-object v2, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout2;->vt:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    .line 106
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout2;->vt:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setListener(Lcom/lzx/iteam/CloudDialerActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/lzx/iteam/CloudDialerActivity;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/lzx/iteam/widget/HInterceptFrameLayout2;->activity:Lcom/lzx/iteam/CloudDialerActivity;

    .line 37
    return-void
.end method
