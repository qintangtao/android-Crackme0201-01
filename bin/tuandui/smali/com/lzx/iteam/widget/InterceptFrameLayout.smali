.class public Lcom/lzx/iteam/widget/InterceptFrameLayout;
.super Landroid/widget/FrameLayout;
.source "InterceptFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/widget/InterceptFrameLayout$DoubleScrollListener;,
        Lcom/lzx/iteam/widget/InterceptFrameLayout$RotateAnimationListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InterceptFrameLayout"


# instance fields
.field final DOWN:I

.field final LEFT:I

.field final RIGHT:I

.field final UP:I

.field activity:Lcom/lzx/iteam/CloudDialerActivity;

.field context:Landroid/content/Context;

.field currentDir:I

.field currenttop:I

.field doubleFinger:Z

.field in:Lcom/lzx/iteam/widget/RotateAnimation;

.field last:Landroid/graphics/PointF;

.field listener:Lcom/lzx/iteam/widget/InterceptFrameLayout$RotateAnimationListener;

.field mDoubleScrollListener:Lcom/lzx/iteam/widget/InterceptFrameLayout$DoubleScrollListener;

.field out:Lcom/lzx/iteam/widget/RotateAnimation;

.field start:Landroid/graphics/PointF;

.field touchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->start:Landroid/graphics/PointF;

    .line 23
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->last:Landroid/graphics/PointF;

    .line 29
    iput-boolean v1, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->doubleFinger:Z

    .line 30
    iput v1, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->LEFT:I

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->RIGHT:I

    .line 32
    const/4 v0, 0x2

    iput v0, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->UP:I

    .line 33
    const/4 v0, 0x3

    iput v0, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->DOWN:I

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->currentDir:I

    .line 86
    iput v1, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->currenttop:I

    .line 40
    iput-object p1, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->context:Landroid/content/Context;

    .line 41
    new-instance v0, Lcom/lzx/iteam/widget/InterceptFrameLayout$RotateAnimationListener;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/widget/InterceptFrameLayout$RotateAnimationListener;-><init>(Lcom/lzx/iteam/widget/InterceptFrameLayout;)V

    iput-object v0, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->listener:Lcom/lzx/iteam/widget/InterceptFrameLayout$RotateAnimationListener;

    .line 42
    invoke-direct {p0}, Lcom/lzx/iteam/widget/InterceptFrameLayout;->initRotateAnimation()V

    .line 44
    return-void
.end method

.method private initRotateAnimation()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lcom/lzx/iteam/widget/RotateAnimation;

    iget-object v1, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lzx/iteam/widget/RotateAnimation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->in:Lcom/lzx/iteam/widget/RotateAnimation;

    .line 47
    new-instance v0, Lcom/lzx/iteam/widget/RotateAnimation;

    iget-object v1, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lzx/iteam/widget/RotateAnimation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->out:Lcom/lzx/iteam/widget/RotateAnimation;

    .line 48
    iget-object v0, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->out:Lcom/lzx/iteam/widget/RotateAnimation;

    iget-object v1, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->listener:Lcom/lzx/iteam/widget/InterceptFrameLayout$RotateAnimationListener;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/RotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 49
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 58
    const/4 v2, 0x0

    .line 59
    .local v2, "result":Z
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/InterceptFrameLayout;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->touchSlop:I

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 61
    .local v0, "action":I
    and-int/lit16 v4, v0, 0xff

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    move v3, v2

    .line 84
    :goto_1
    return v3

    .line 63
    :pswitch_1
    const/4 v3, -0x1

    iput v3, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->currentDir:I

    .line 64
    iget-object v3, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->start:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 65
    iget-object v3, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->last:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 68
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 69
    iput-boolean v3, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->doubleFinger:Z

    .line 70
    const/4 v2, 0x1

    .line 72
    :cond_1
    iget-boolean v4, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->doubleFinger:Z

    if-eqz v4, :cond_0

    goto :goto_1

    .line 76
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->start:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float v1, v3, v4

    .line 77
    .local v1, "disy":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->touchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_2

    iget-boolean v3, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->doubleFinger:Z

    if-eqz v3, :cond_0

    .line 78
    :cond_2
    const/4 v2, 0x1

    .line 79
    goto :goto_0

    .line 61
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
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 92
    .local v6, "action":I
    and-int/lit16 v0, v6, 0xff

    packed-switch v0, :pswitch_data_0

    .line 166
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 94
    :pswitch_1
    const-string v0, "finger1"

    const-string v1, "222"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v0, -0x1

    iput v0, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->currentDir:I

    .line 96
    iget-object v0, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->start:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 99
    :pswitch_2
    const-string v0, "double finger"

    const-string v1, "point"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 102
    :pswitch_3
    const-string v0, "double finger"

    const-string v1, "movie"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget v0, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->currenttop:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->currenttop:I

    .line 104
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->mDoubleScrollListener:Lcom/lzx/iteam/widget/InterceptFrameLayout$DoubleScrollListener;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget-object v1, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->last:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float v8, v0, v1

    .line 107
    .local v8, "disy":F
    iget-object v0, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->mDoubleScrollListener:Lcom/lzx/iteam/widget/InterceptFrameLayout$DoubleScrollListener;

    invoke-interface {v0, v8}, Lcom/lzx/iteam/widget/InterceptFrameLayout$DoubleScrollListener;->onDoubleScroll(F)V

    .line 108
    iget-object v0, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->last:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 113
    .end local v8    # "disy":F
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->start:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float v7, v0, v1

    .line 114
    .local v7, "disx":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->start:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float v8, v0, v1

    .line 115
    .restart local v8    # "disy":F
    iget-boolean v0, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->doubleFinger:Z

    if-eqz v0, :cond_2

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->doubleFinger:Z

    .line 117
    iget-object v0, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->mDoubleScrollListener:Lcom/lzx/iteam/widget/InterceptFrameLayout$DoubleScrollListener;

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->mDoubleScrollListener:Lcom/lzx/iteam/widget/InterceptFrameLayout$DoubleScrollListener;

    invoke-interface {v0}, Lcom/lzx/iteam/widget/InterceptFrameLayout$DoubleScrollListener;->onDobleScrollUp()V

    .line 120
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 125
    :cond_2
    const/4 v0, 0x0

    cmpl-float v0, v7, v0

    if-eqz v0, :cond_3

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/lzx/iteam/widget/InterceptFrameLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 126
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-lez v0, :cond_4

    .line 127
    const/4 v0, 0x3

    iput v0, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->currentDir:I

    .line 132
    :cond_3
    :goto_2
    iget v0, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->currentDir:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    .line 133
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 129
    :cond_4
    const/4 v0, 0x2

    iput v0, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->currentDir:I

    goto :goto_2

    .line 136
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/widget/InterceptFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 137
    .local v9, "first":Landroid/view/View;
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/widget/InterceptFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 138
    .local v10, "second":Landroid/view/View;
    iget v0, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->currentDir:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 139
    iget-object v0, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->in:Lcom/lzx/iteam/widget/RotateAnimation;

    invoke-virtual {p0}, Lcom/lzx/iteam/widget/InterceptFrameLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/lzx/iteam/widget/InterceptFrameLayout;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    const/high16 v3, -0x3d4c0000    # -90.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/widget/RotateAnimation;->setConfig(IIFFZ)V

    .line 140
    iget-object v0, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->out:Lcom/lzx/iteam/widget/RotateAnimation;

    invoke-virtual {p0}, Lcom/lzx/iteam/widget/InterceptFrameLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/lzx/iteam/widget/InterceptFrameLayout;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    const/high16 v4, 0x42b40000    # 90.0f

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/widget/RotateAnimation;->setConfig(IIFFZ)V

    .line 145
    :goto_3
    iget-object v0, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->in:Lcom/lzx/iteam/widget/RotateAnimation;

    invoke-virtual {v0}, Lcom/lzx/iteam/widget/RotateAnimation;->reset()V

    .line 146
    iget-object v0, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->out:Lcom/lzx/iteam/widget/RotateAnimation;

    invoke-virtual {v0}, Lcom/lzx/iteam/widget/RotateAnimation;->reset()V

    .line 147
    iget-object v0, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->in:Lcom/lzx/iteam/widget/RotateAnimation;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Lcom/lzx/iteam/widget/RotateAnimation;->setDuration(J)V

    .line 148
    iget-object v0, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->out:Lcom/lzx/iteam/widget/RotateAnimation;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Lcom/lzx/iteam/widget/RotateAnimation;->setDuration(J)V

    .line 149
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    .line 150
    iget-object v0, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->out:Lcom/lzx/iteam/widget/RotateAnimation;

    invoke-virtual {v10, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 151
    const/16 v0, 0x8

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    .line 152
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->in:Lcom/lzx/iteam/widget/RotateAnimation;

    invoke-virtual {v9, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 142
    :cond_6
    iget-object v0, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->out:Lcom/lzx/iteam/widget/RotateAnimation;

    invoke-virtual {p0}, Lcom/lzx/iteam/widget/InterceptFrameLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/lzx/iteam/widget/InterceptFrameLayout;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    const/high16 v4, -0x3d4c0000    # -90.0f

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/widget/RotateAnimation;->setConfig(IIFFZ)V

    .line 143
    iget-object v0, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->in:Lcom/lzx/iteam/widget/RotateAnimation;

    invoke-virtual {p0}, Lcom/lzx/iteam/widget/InterceptFrameLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/lzx/iteam/widget/InterceptFrameLayout;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    const/high16 v3, 0x42b40000    # 90.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/widget/RotateAnimation;->setConfig(IIFFZ)V

    goto :goto_3

    .line 155
    :cond_7
    iget-object v0, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->out:Lcom/lzx/iteam/widget/RotateAnimation;

    invoke-virtual {v9, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 156
    const/16 v0, 0x8

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 157
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->in:Lcom/lzx/iteam/widget/RotateAnimation;

    invoke-virtual {v10, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setListener(Lcom/lzx/iteam/CloudDialerActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/lzx/iteam/CloudDialerActivity;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->activity:Lcom/lzx/iteam/CloudDialerActivity;

    .line 53
    return-void
.end method

.method public setOnDoubleScrollListener(Lcom/lzx/iteam/widget/InterceptFrameLayout$DoubleScrollListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lzx/iteam/widget/InterceptFrameLayout$DoubleScrollListener;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout;->mDoubleScrollListener:Lcom/lzx/iteam/widget/InterceptFrameLayout$DoubleScrollListener;

    .line 254
    return-void
.end method
