.class public Lcom/lzx/iteam/widget/ChatGroupLayout;
.super Landroid/widget/FrameLayout;
.source "ChatGroupLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/widget/ChatGroupLayout$OnChangeListener;
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field currentPage:I

.field dis:I

.field listener:Lcom/lzx/iteam/widget/ChatGroupLayout$OnChangeListener;

.field start:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/widget/ChatGroupLayout;->start:Landroid/graphics/Point;

    .line 26
    iput-object p1, p0, Lcom/lzx/iteam/widget/ChatGroupLayout;->context:Landroid/content/Context;

    .line 27
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/ChatGroupLayout;->init()V

    .line 28
    return-void
.end method


# virtual methods
.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/lzx/iteam/widget/ChatGroupLayout;->currentPage:I

    return v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/lzx/iteam/widget/ChatGroupLayout;->currentPage:I

    .line 32
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 65
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "move"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 67
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 95
    :cond_0
    :goto_0
    :pswitch_0
    return v5

    .line 69
    :pswitch_1
    iget-object v6, p0, Lcom/lzx/iteam/widget/ChatGroupLayout;->start:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 72
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget-object v8, p0, Lcom/lzx/iteam/widget/ChatGroupLayout;->start:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    sub-float v1, v7, v8

    .line 73
    .local v1, "disx":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget-object v8, p0, Lcom/lzx/iteam/widget/ChatGroupLayout;->start:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    sub-float v2, v7, v8

    .line 74
    .local v2, "disy":F
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "currentpage:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcom/lzx/iteam/widget/ChatGroupLayout;->currentPage:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 75
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/high16 v8, 0x41800000    # 16.0f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    div-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_0

    .line 77
    iget v7, p0, Lcom/lzx/iteam/widget/ChatGroupLayout;->currentPage:I

    if-ne v7, v6, :cond_1

    move v5, v6

    .line 78
    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p0, v5}, Lcom/lzx/iteam/widget/ChatGroupLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 81
    .local v4, "view":Landroid/view/View;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 82
    .local v3, "rect":Landroid/graphics/Rect;
    invoke-virtual {v4, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 83
    iget-object v7, p0, Lcom/lzx/iteam/widget/ChatGroupLayout;->start:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    iget-object v8, p0, Lcom/lzx/iteam/widget/ChatGroupLayout;->start:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 84
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "false"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_2
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "true"

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v5, v6

    .line 88
    goto/16 :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x0

    .line 38
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/ChatGroupLayout;->getHeight()I

    move-result v1

    .line 39
    .local v1, "height":I
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/ChatGroupLayout;->getWidth()I

    move-result v4

    .line 40
    .local v4, "width":I
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/ChatGroupLayout;->getChildCount()I

    move-result v0

    .line 41
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v0, :cond_0

    .line 52
    return-void

    .line 42
    :cond_0
    invoke-virtual {p0, v2}, Lcom/lzx/iteam/widget/ChatGroupLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 43
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    .line 44
    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    .line 45
    invoke-virtual {v3, v7, v7, v4, v1}, Landroid/view/View;->layout(IIII)V

    .line 41
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46
    :cond_2
    if-nez v2, :cond_1

    .line 47
    div-int/lit8 v5, v4, 0x2

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/view/View;->measure(II)V

    .line 48
    div-int/lit8 v5, v4, 0x2

    invoke-virtual {v3, v5, v7, v4, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 101
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 112
    :cond_0
    :goto_0
    return v5

    .line 103
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/lzx/iteam/widget/ChatGroupLayout;->start:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v1, v3

    .line 104
    .local v1, "scrollx":I
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/ChatGroupLayout;->getWidth()I

    move-result v2

    .line 105
    .local v2, "width":I
    if-gez v1, :cond_1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    div-int/lit8 v4, v2, 0x3

    if-lt v3, v4, :cond_1

    iget v3, p0, Lcom/lzx/iteam/widget/ChatGroupLayout;->currentPage:I

    if-ne v3, v5, :cond_1

    .line 106
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/lzx/iteam/widget/ChatGroupLayout;->setSelect(I)V

    goto :goto_0

    .line 107
    :cond_1
    if-lez v1, :cond_0

    iget v3, p0, Lcom/lzx/iteam/widget/ChatGroupLayout;->currentPage:I

    if-nez v3, :cond_0

    .line 108
    invoke-virtual {p0, v5}, Lcom/lzx/iteam/widget/ChatGroupLayout;->setSelect(I)V

    goto :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setCurrentPage(I)V
    .locals 2
    .param p1, "page"    # I

    .prologue
    const/4 v1, 0x1

    .line 55
    iput p1, p0, Lcom/lzx/iteam/widget/ChatGroupLayout;->currentPage:I

    .line 56
    if-nez p1, :cond_0

    .line 57
    invoke-virtual {p0, v1}, Lcom/lzx/iteam/widget/ChatGroupLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/widget/ChatListGroup;

    .line 58
    .local v0, "clg":Lcom/lzx/iteam/widget/ChatListGroup;
    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/ChatListGroup;->setOpen(Z)V

    .line 60
    .end local v0    # "clg":Lcom/lzx/iteam/widget/ChatListGroup;
    :cond_0
    return-void
.end method

.method public setListener(Lcom/lzx/iteam/widget/ChatGroupLayout$OnChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lzx/iteam/widget/ChatGroupLayout$OnChangeListener;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/lzx/iteam/widget/ChatGroupLayout;->listener:Lcom/lzx/iteam/widget/ChatGroupLayout$OnChangeListener;

    .line 117
    return-void
.end method

.method public setSelect(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x1

    .line 124
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/ChatGroupLayout;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    if-gez p1, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/ChatGroupLayout;->getWidth()I

    .line 126
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 128
    :pswitch_0
    iget v1, p0, Lcom/lzx/iteam/widget/ChatGroupLayout;->currentPage:I

    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {p0, v2}, Lcom/lzx/iteam/widget/ChatGroupLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/widget/ChatListGroup;

    .line 130
    .local v0, "clg":Lcom/lzx/iteam/widget/ChatListGroup;
    invoke-virtual {v0}, Lcom/lzx/iteam/widget/ChatListGroup;->scrollToOpen()V

    .line 131
    const/4 v1, 0x0

    iput v1, p0, Lcom/lzx/iteam/widget/ChatGroupLayout;->currentPage:I

    .line 132
    iget-object v1, p0, Lcom/lzx/iteam/widget/ChatGroupLayout;->listener:Lcom/lzx/iteam/widget/ChatGroupLayout$OnChangeListener;

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/lzx/iteam/widget/ChatGroupLayout;->listener:Lcom/lzx/iteam/widget/ChatGroupLayout$OnChangeListener;

    iget v2, p0, Lcom/lzx/iteam/widget/ChatGroupLayout;->currentPage:I

    invoke-interface {v1, v2}, Lcom/lzx/iteam/widget/ChatGroupLayout$OnChangeListener;->onChange(I)V

    goto :goto_0

    .line 146
    .end local v0    # "clg":Lcom/lzx/iteam/widget/ChatListGroup;
    :pswitch_1
    iget v1, p0, Lcom/lzx/iteam/widget/ChatGroupLayout;->currentPage:I

    if-eq v1, v2, :cond_0

    .line 147
    invoke-virtual {p0, v2}, Lcom/lzx/iteam/widget/ChatGroupLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/widget/ChatListGroup;

    .line 148
    .restart local v0    # "clg":Lcom/lzx/iteam/widget/ChatListGroup;
    invoke-virtual {v0}, Lcom/lzx/iteam/widget/ChatListGroup;->scrollToHide()V

    .line 149
    iput v2, p0, Lcom/lzx/iteam/widget/ChatGroupLayout;->currentPage:I

    .line 150
    iget-object v1, p0, Lcom/lzx/iteam/widget/ChatGroupLayout;->listener:Lcom/lzx/iteam/widget/ChatGroupLayout$OnChangeListener;

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/lzx/iteam/widget/ChatGroupLayout;->listener:Lcom/lzx/iteam/widget/ChatGroupLayout$OnChangeListener;

    iget v2, p0, Lcom/lzx/iteam/widget/ChatGroupLayout;->currentPage:I

    invoke-interface {v1, v2}, Lcom/lzx/iteam/widget/ChatGroupLayout$OnChangeListener;->onChange(I)V

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
