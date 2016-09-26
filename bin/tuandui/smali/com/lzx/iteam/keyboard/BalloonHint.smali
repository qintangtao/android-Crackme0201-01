.class public Lcom/lzx/iteam/keyboard/BalloonHint;
.super Landroid/widget/PopupWindow;
.source "BalloonHint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;,
        Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;
    }
.end annotation


# static fields
.field public static final TIME_DELAY_DISMISS:I = 0xc8

.field public static final TIME_DELAY_SHOW:I


# instance fields
.field private mBalloonTimer:Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;

.field mBalloonView:Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;

.field private mContext:Landroid/content/Context;

.field private mForceDismiss:Z

.field private mMeasureSpecMode:I

.field private mPaddingRect:Landroid/graphics/Rect;

.field private mParent:Landroid/view/View;

.field private mParentLocationInWindow:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/View;
    .param p3, "measureSpecMode"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 90
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint;->mPaddingRect:Landroid/graphics/Rect;

    .line 87
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint;->mParentLocationInWindow:[I

    .line 91
    iput-object p2, p0, Lcom/lzx/iteam/keyboard/BalloonHint;->mParent:Landroid/view/View;

    .line 92
    iput p3, p0, Lcom/lzx/iteam/keyboard/BalloonHint;->mMeasureSpecMode:I

    .line 94
    invoke-virtual {p0, v2}, Lcom/lzx/iteam/keyboard/BalloonHint;->setInputMethodMode(I)V

    .line 95
    invoke-virtual {p0, v1}, Lcom/lzx/iteam/keyboard/BalloonHint;->setTouchable(Z)V

    .line 96
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/keyboard/BalloonHint;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    new-instance v0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;

    invoke-direct {v0, p0, p1}, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;-><init>(Lcom/lzx/iteam/keyboard/BalloonHint;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint;->mBalloonView:Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;

    .line 99
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint;->mBalloonView:Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->setClickable(Z)V

    .line 100
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint;->mBalloonView:Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/keyboard/BalloonHint;->setContentView(Landroid/view/View;)V

    .line 102
    new-instance v0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;-><init>(Lcom/lzx/iteam/keyboard/BalloonHint;Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;)V

    iput-object v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint;->mBalloonTimer:Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;

    .line 103
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/keyboard/BalloonHint;)Landroid/view/View;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint;->mParent:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lzx/iteam/keyboard/BalloonHint;)[I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint;->mParentLocationInWindow:[I

    return-object v0
.end method

.method private setBalloonSize(II)V
    .locals 9
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 237
    .line 238
    iget v7, p0, Lcom/lzx/iteam/keyboard/BalloonHint;->mMeasureSpecMode:I

    .line 237
    invoke-static {p1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 240
    .local v4, "widthMeasureSpec":I
    iget v7, p0, Lcom/lzx/iteam/keyboard/BalloonHint;->mMeasureSpecMode:I

    .line 239
    invoke-static {p2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 241
    .local v0, "heightMeasureSpec":I
    iget-object v7, p0, Lcom/lzx/iteam/keyboard/BalloonHint;->mBalloonView:Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;

    invoke-virtual {v7, v4, v0}, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->measure(II)V

    .line 243
    invoke-virtual {p0}, Lcom/lzx/iteam/keyboard/BalloonHint;->getWidth()I

    move-result v3

    .line 245
    .local v3, "oldWidth":I
    iget-object v7, p0, Lcom/lzx/iteam/keyboard/BalloonHint;->mBalloonView:Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;

    invoke-virtual {v7}, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/lzx/iteam/keyboard/BalloonHint;->getPaddingLeft()I

    move-result v8

    add-int/2addr v7, v8

    .line 246
    invoke-virtual {p0}, Lcom/lzx/iteam/keyboard/BalloonHint;->getPaddingRight()I

    move-result v8

    .line 245
    add-int v2, v7, v8

    .line 247
    .local v2, "newWidth":I
    iget-object v7, p0, Lcom/lzx/iteam/keyboard/BalloonHint;->mBalloonView:Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;

    invoke-virtual {v7}, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {p0}, Lcom/lzx/iteam/keyboard/BalloonHint;->getPaddingTop()I

    move-result v8

    add-int/2addr v7, v8

    .line 248
    invoke-virtual {p0}, Lcom/lzx/iteam/keyboard/BalloonHint;->getPaddingBottom()I

    move-result v8

    .line 247
    add-int v1, v7, v8

    .line 249
    .local v1, "newHeight":I
    invoke-virtual {p0, v2}, Lcom/lzx/iteam/keyboard/BalloonHint;->setWidth(I)V

    .line 250
    invoke-virtual {p0, v1}, Lcom/lzx/iteam/keyboard/BalloonHint;->setHeight(I)V

    .line 262
    iput-boolean v5, p0, Lcom/lzx/iteam/keyboard/BalloonHint;->mForceDismiss:Z

    .line 263
    invoke-virtual {p0}, Lcom/lzx/iteam/keyboard/BalloonHint;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 264
    sub-int v7, v3, v2

    if-gt v7, v6, :cond_1

    sub-int v7, v2, v3

    if-gt v7, v6, :cond_1

    :goto_0
    iput-boolean v5, p0, Lcom/lzx/iteam/keyboard/BalloonHint;->mForceDismiss:Z

    .line 266
    :cond_0
    return-void

    :cond_1
    move v5, v6

    .line 264
    goto :goto_0
.end method


# virtual methods
.method public delayedDismiss(J)V
    .locals 9
    .param p1, "delay"    # J

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    const/4 v6, -0x1

    .line 215
    iget-object v1, p0, Lcom/lzx/iteam/keyboard/BalloonHint;->mBalloonTimer:Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;

    invoke-virtual {v1}, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;->isPending()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/lzx/iteam/keyboard/BalloonHint;->mBalloonTimer:Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;

    invoke-virtual {v1}, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;->removeTimer()Z

    .line 217
    iget-object v1, p0, Lcom/lzx/iteam/keyboard/BalloonHint;->mBalloonTimer:Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;

    invoke-virtual {v1}, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;->getAction()I

    move-result v0

    .line 218
    .local v0, "pendingAction":I
    cmp-long v1, v2, p1

    if-eqz v1, :cond_0

    if-eq v4, v0, :cond_0

    .line 219
    iget-object v1, p0, Lcom/lzx/iteam/keyboard/BalloonHint;->mBalloonTimer:Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;

    invoke-virtual {v1}, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;->run()V

    .line 222
    .end local v0    # "pendingAction":I
    :cond_0
    cmp-long v1, p1, v2

    if-gtz v1, :cond_1

    .line 223
    invoke-virtual {p0}, Lcom/lzx/iteam/keyboard/BalloonHint;->dismiss()V

    .line 228
    :goto_0
    return-void

    .line 225
    :cond_1
    iget-object v1, p0, Lcom/lzx/iteam/keyboard/BalloonHint;->mBalloonTimer:Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;

    const/4 v5, 0x0

    move-wide v2, p1

    move v7, v6

    invoke-virtual/range {v1 .. v7}, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;->startTimer(JI[III)V

    goto :goto_0
.end method

.method public delayedShow(J[I)V
    .locals 9
    .param p1, "delay"    # J
    .param p3, "locationInParent"    # [I

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x1

    .line 184
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint;->mBalloonTimer:Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;

    invoke-virtual {v0}, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;->isPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint;->mBalloonTimer:Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;

    invoke-virtual {v0}, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;->removeTimer()Z

    .line 187
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/lzx/iteam/keyboard/BalloonHint;->mParentLocationInWindow:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 189
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint;->mParent:Landroid/view/View;

    const/16 v1, 0x33

    .line 190
    const/4 v2, 0x0

    aget v2, p3, v2

    aget v3, p3, v4

    .line 191
    iget-object v5, p0, Lcom/lzx/iteam/keyboard/BalloonHint;->mParentLocationInWindow:[I

    aget v4, v5, v4

    add-int/2addr v3, v4

    .line 189
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lzx/iteam/keyboard/BalloonHint;->showAtLocation(Landroid/view/View;III)V

    .line 196
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v1, p0, Lcom/lzx/iteam/keyboard/BalloonHint;->mBalloonTimer:Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;

    move-wide v2, p1

    move-object v5, p3

    move v7, v6

    invoke-virtual/range {v1 .. v7}, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;->startTimer(JI[III)V

    goto :goto_0
.end method

.method public delayedUpdate(J[III)V
    .locals 9
    .param p1, "delay"    # J
    .param p3, "locationInParent"    # [I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/4 v3, 0x1

    .line 200
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint;->mBalloonView:Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;

    invoke-virtual {v0}, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->invalidate()V

    .line 201
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint;->mBalloonTimer:Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;

    invoke-virtual {v0}, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;->isPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint;->mBalloonTimer:Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;

    invoke-virtual {v0}, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;->removeTimer()Z

    .line 204
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/lzx/iteam/keyboard/BalloonHint;->mParentLocationInWindow:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 206
    const/4 v0, 0x0

    aget v0, p3, v0

    aget v1, p3, v3

    .line 207
    iget-object v2, p0, Lcom/lzx/iteam/keyboard/BalloonHint;->mParentLocationInWindow:[I

    aget v2, v2, v3

    add-int/2addr v1, v2

    .line 206
    invoke-virtual {p0, v0, v1, p4, p5}, Lcom/lzx/iteam/keyboard/BalloonHint;->update(IIII)V

    .line 212
    :goto_0
    return-void

    .line 209
    :cond_1
    iget-object v1, p0, Lcom/lzx/iteam/keyboard/BalloonHint;->mBalloonTimer:Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;

    const/4 v4, 0x3

    move-wide v2, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;->startTimer(JI[III)V

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getPadding()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint;->mPaddingRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getPaddingBottom()I
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint;->mPaddingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getPaddingLeft()I
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint;->mPaddingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint;->mPaddingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getPaddingTop()I
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint;->mPaddingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public needForceDismiss()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint;->mForceDismiss:Z

    return v0
.end method

.method public removeTimer()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint;->mBalloonTimer:Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;

    invoke-virtual {v0}, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;->isPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint;->mBalloonTimer:Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;

    invoke-virtual {v0}, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;->removeTimer()Z

    .line 234
    :cond_0
    return-void
.end method

.method public setBalloonBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 116
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint;->mBalloonView:Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;

    invoke-virtual {v0}, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 124
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint;->mBalloonView:Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;

    invoke-virtual {v0, p1}, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    if-eqz p1, :cond_1

    .line 120
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint;->mPaddingRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint;->mPaddingRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public setBalloonConfig(Landroid/graphics/drawable/Drawable;II)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 158
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint;->mBalloonView:Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;

    invoke-virtual {v0, p1}, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 159
    invoke-direct {p0, p2, p3}, Lcom/lzx/iteam/keyboard/BalloonHint;->setBalloonSize(II)V

    .line 160
    return-void
.end method

.method public setBalloonConfig(Ljava/lang/String;FZIII)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "textSize"    # F
    .param p3, "textBold"    # Z
    .param p4, "textColor"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I

    .prologue
    .line 142
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint;->mBalloonView:Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->setTextConfig(Ljava/lang/String;FZI)V

    .line 143
    invoke-direct {p0, p5, p6}, Lcom/lzx/iteam/keyboard/BalloonHint;->setBalloonSize(II)V

    .line 144
    return-void
.end method
