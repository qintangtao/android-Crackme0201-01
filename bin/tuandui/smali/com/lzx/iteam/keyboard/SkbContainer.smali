.class public Lcom/lzx/iteam/keyboard/SkbContainer;
.super Landroid/widget/RelativeLayout;
.source "SkbContainer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/keyboard/SkbContainer$InputConnection;,
        Lcom/lzx/iteam/keyboard/SkbContainer$LongPressTimer;
    }
.end annotation


# static fields
.field private static final MOVE_TOLERANCE:I = 0x6

.field private static POPUPWINDOW_FOR_PRESSED_UI:Z = false

.field private static final Y_BIAS_CORRECTION:I = -0xa


# instance fields
.field private mBalloonOnKey:Lcom/lzx/iteam/keyboard/BalloonHint;

.field private mBalloonPopup:Lcom/lzx/iteam/keyboard/BalloonHint;

.field private mConn:Lcom/lzx/iteam/keyboard/SkbContainer$InputConnection;

.field private mContext:Landroid/content/Context;

.field private volatile mDiscardEvent:Z

.field private mEnvironment:Lcom/lzx/iteam/keyboard/Environment;

.field private mInputModeSwitcher:Lcom/lzx/iteam/keyboard/InputModeSwitcher;

.field private mLastCandidatesShowing:Z

.field private mLongPressTimer:Lcom/lzx/iteam/keyboard/SkbContainer$LongPressTimer;

.field private mMajorView:Lcom/lzx/iteam/keyboard/SoftKeyboardView;

.field private mPopupSkb:Landroid/widget/PopupWindow;

.field private mPopupSkbNoResponse:Z

.field private mPopupSkbShow:Z

.field private mPopupSkbView:Lcom/lzx/iteam/keyboard/SoftKeyboardView;

.field private mPopupX:I

.field private mPopupY:I

.field private mSkbLayout:I

.field private mSkv:Lcom/lzx/iteam/keyboard/SoftKeyboardView;

.field private mSkvPosInContainer:[I

.field private mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

.field private volatile mWaitForTouchUp:Z

.field private mXLast:I

.field private mXyPosTmp:[I

.field private mYBiasCorrection:I

.field private mYLast:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lzx/iteam/keyboard/SkbContainer;->POPUPWINDOW_FOR_PRESSED_UI:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x2

    const/high16 v3, -0x80000000

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 190
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    iput v1, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mSkbLayout:I

    .line 99
    iput-object v2, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mBalloonOnKey:Lcom/lzx/iteam/keyboard/BalloonHint;

    .line 111
    iput-boolean v1, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mPopupSkbShow:Z

    .line 118
    iput-boolean v1, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mPopupSkbNoResponse:Z

    .line 134
    iput-boolean v1, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mWaitForTouchUp:Z

    .line 141
    iput-boolean v1, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mDiscardEvent:Z

    .line 148
    iput v1, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mYBiasCorrection:I

    .line 168
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mSkvPosInContainer:[I

    .line 173
    iput-object v2, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    .line 183
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mXyPosTmp:[I

    .line 192
    iput-object p1, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mContext:Landroid/content/Context;

    .line 194
    invoke-static {}, Lcom/lzx/iteam/keyboard/Environment;->getInstance()Lcom/lzx/iteam/keyboard/Environment;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mEnvironment:Lcom/lzx/iteam/keyboard/Environment;

    .line 196
    new-instance v0, Lcom/lzx/iteam/keyboard/SkbContainer$LongPressTimer;

    invoke-direct {v0, p0, p0}, Lcom/lzx/iteam/keyboard/SkbContainer$LongPressTimer;-><init>(Lcom/lzx/iteam/keyboard/SkbContainer;Lcom/lzx/iteam/keyboard/SkbContainer;)V

    iput-object v0, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mLongPressTimer:Lcom/lzx/iteam/keyboard/SkbContainer$LongPressTimer;

    .line 201
    const/16 v0, -0xa

    iput v0, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mYBiasCorrection:I

    .line 203
    new-instance v0, Lcom/lzx/iteam/keyboard/BalloonHint;

    invoke-direct {v0, p1, p0, v3}, Lcom/lzx/iteam/keyboard/BalloonHint;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mBalloonPopup:Lcom/lzx/iteam/keyboard/BalloonHint;

    .line 204
    sget-boolean v0, Lcom/lzx/iteam/keyboard/SkbContainer;->POPUPWINDOW_FOR_PRESSED_UI:Z

    if-eqz v0, :cond_0

    .line 205
    new-instance v0, Lcom/lzx/iteam/keyboard/BalloonHint;

    invoke-direct {v0, p1, p0, v3}, Lcom/lzx/iteam/keyboard/BalloonHint;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mBalloonOnKey:Lcom/lzx/iteam/keyboard/BalloonHint;

    .line 208
    :cond_0
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    .line 209
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 210
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 211
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/keyboard/SkbContainer;)Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mWaitForTouchUp:Z

    return v0
.end method

.method static synthetic access$1(Lcom/lzx/iteam/keyboard/SkbContainer;)Lcom/lzx/iteam/keyboard/SoftKey;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/keyboard/SkbContainer;)Lcom/lzx/iteam/keyboard/InputModeSwitcher;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mInputModeSwitcher:Lcom/lzx/iteam/keyboard/InputModeSwitcher;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lzx/iteam/keyboard/SkbContainer;Z)V
    .locals 0

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mDiscardEvent:Z

    return-void
.end method

.method static synthetic access$4(Lcom/lzx/iteam/keyboard/SkbContainer;J)V
    .locals 1

    .prologue
    .line 409
    invoke-direct {p0, p1, p2}, Lcom/lzx/iteam/keyboard/SkbContainer;->resetKeyPress(J)V

    return-void
.end method

.method static synthetic access$5(Lcom/lzx/iteam/keyboard/SkbContainer;Lcom/lzx/iteam/keyboard/SoftKey;)V
    .locals 0

    .prologue
    .line 332
    invoke-direct {p0, p1}, Lcom/lzx/iteam/keyboard/SkbContainer;->responseSoftKeyLongclick(Lcom/lzx/iteam/keyboard/SoftKey;)V

    return-void
.end method

.method static synthetic access$6(Lcom/lzx/iteam/keyboard/SkbContainer;)V
    .locals 0

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/lzx/iteam/keyboard/SkbContainer;->popupSymbols()V

    return-void
.end method

.method private dimSoftKeyboard(Z)V
    .locals 1
    .param p1, "dimSkb"    # Z

    .prologue
    .line 399
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mMajorView:Lcom/lzx/iteam/keyboard/SoftKeyboardView;

    invoke-virtual {v0, p1}, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->dimSoftKeyboard(Z)V

    .line 400
    return-void
.end method

.method private dismissPopupSkb()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 403
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 404
    iput-boolean v1, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mPopupSkbShow:Z

    .line 405
    invoke-direct {p0, v1}, Lcom/lzx/iteam/keyboard/SkbContainer;->dimSoftKeyboard(Z)V

    .line 406
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/lzx/iteam/keyboard/SkbContainer;->resetKeyPress(J)V

    .line 407
    return-void
.end method

.method private inKeyboardView(II[I)Lcom/lzx/iteam/keyboard/SoftKeyboardView;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "positionInParent"    # [I

    .prologue
    .line 339
    iget-boolean v0, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mPopupSkbShow:Z

    if-eqz v0, :cond_1

    .line 340
    iget v0, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mPopupX:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mPopupX:I

    iget-object v1, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    if-le v0, p1, :cond_0

    .line 341
    iget v0, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mPopupY:I

    if-gt v0, p2, :cond_0

    iget v0, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mPopupY:I

    iget-object v1, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    if-le v0, p2, :cond_0

    .line 342
    const/4 v0, 0x0

    iget v1, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mPopupX:I

    aput v1, p3, v0

    .line 343
    const/4 v0, 0x1

    iget v1, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mPopupY:I

    aput v1, p3, v0

    .line 344
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mPopupSkbView:Lcom/lzx/iteam/keyboard/SoftKeyboardView;

    invoke-virtual {v0, p3}, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->setOffsetToSkbContainer([I)V

    .line 345
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mPopupSkbView:Lcom/lzx/iteam/keyboard/SoftKeyboardView;

    .line 350
    :goto_0
    return-object v0

    .line 347
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mMajorView:Lcom/lzx/iteam/keyboard/SoftKeyboardView;

    goto :goto_0
.end method

.method private popupSymbols()V
    .locals 14

    .prologue
    .line 354
    iget-object v2, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    invoke-virtual {v2}, Lcom/lzx/iteam/keyboard/SoftKey;->getPopupResId()I

    move-result v1

    .line 355
    .local v1, "popupResId":I
    if-lez v1, :cond_0

    .line 356
    invoke-virtual {p0}, Lcom/lzx/iteam/keyboard/SkbContainer;->getWidth()I

    move-result v8

    .line 357
    .local v8, "skbContainerWidth":I
    invoke-virtual {p0}, Lcom/lzx/iteam/keyboard/SkbContainer;->getHeight()I

    move-result v7

    .line 359
    .local v7, "skbContainerHeight":I
    int-to-double v10, v8

    const-wide v12, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v10, v12

    double-to-int v3, v10

    .line 360
    .local v3, "miniSkbWidth":I
    int-to-double v10, v7

    const-wide v12, 0x3fcd70a3d70a3d71L    # 0.23

    mul-double/2addr v10, v12

    double-to-int v4, v10

    .line 362
    .local v4, "miniSkbHeight":I
    invoke-static {}, Lcom/lzx/iteam/keyboard/SkbPool;->getInstance()Lcom/lzx/iteam/keyboard/SkbPool;

    move-result-object v0

    .line 364
    .local v0, "skbPool":Lcom/lzx/iteam/keyboard/SkbPool;
    iget-object v5, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mContext:Landroid/content/Context;

    move v2, v1

    .line 363
    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/keyboard/SkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/lzx/iteam/keyboard/SoftKeyboard;

    move-result-object v6

    .line 365
    .local v6, "skb":Lcom/lzx/iteam/keyboard/SoftKeyboard;
    if-nez v6, :cond_1

    .line 396
    .end local v0    # "skbPool":Lcom/lzx/iteam/keyboard/SkbPool;
    .end local v3    # "miniSkbWidth":I
    .end local v4    # "miniSkbHeight":I
    .end local v6    # "skb":Lcom/lzx/iteam/keyboard/SoftKeyboard;
    .end local v7    # "skbContainerHeight":I
    .end local v8    # "skbContainerWidth":I
    :cond_0
    :goto_0
    return-void

    .line 367
    .restart local v0    # "skbPool":Lcom/lzx/iteam/keyboard/SkbPool;
    .restart local v3    # "miniSkbWidth":I
    .restart local v4    # "miniSkbHeight":I
    .restart local v6    # "skb":Lcom/lzx/iteam/keyboard/SoftKeyboard;
    .restart local v7    # "skbContainerHeight":I
    .restart local v8    # "skbContainerWidth":I
    :cond_1
    invoke-virtual {v6}, Lcom/lzx/iteam/keyboard/SoftKeyboard;->getSkbTotalWidth()I

    move-result v2

    sub-int v2, v8, v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mPopupX:I

    .line 368
    invoke-virtual {v6}, Lcom/lzx/iteam/keyboard/SoftKeyboard;->getSkbTotalHeight()I

    move-result v2

    sub-int v2, v7, v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mPopupY:I

    .line 370
    iget-object v2, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mPopupSkbView:Lcom/lzx/iteam/keyboard/SoftKeyboardView;

    if-nez v2, :cond_2

    .line 371
    new-instance v2, Lcom/lzx/iteam/keyboard/SoftKeyboardView;

    iget-object v5, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-direct {v2, v5, v9}, Lcom/lzx/iteam/keyboard/SoftKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mPopupSkbView:Lcom/lzx/iteam/keyboard/SoftKeyboardView;

    .line 372
    iget-object v2, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mPopupSkbView:Lcom/lzx/iteam/keyboard/SoftKeyboardView;

    const/4 v5, -0x2

    .line 373
    const/4 v9, -0x2

    .line 372
    invoke-virtual {v2, v5, v9}, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->onMeasure(II)V

    .line 375
    :cond_2
    iget-object v2, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mPopupSkbView:Lcom/lzx/iteam/keyboard/SoftKeyboardView;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 376
    iget-object v2, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mPopupSkbView:Lcom/lzx/iteam/keyboard/SoftKeyboardView;

    invoke-virtual {v2, v6}, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->setSoftKeyboard(Lcom/lzx/iteam/keyboard/SoftKeyboard;)Z

    .line 377
    iget-object v2, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mPopupSkbView:Lcom/lzx/iteam/keyboard/SoftKeyboardView;

    iget-object v5, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mBalloonOnKey:Lcom/lzx/iteam/keyboard/BalloonHint;

    iget-object v9, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mBalloonPopup:Lcom/lzx/iteam/keyboard/BalloonHint;

    const/4 v10, 0x1

    invoke-virtual {v2, v5, v9, v10}, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->setBalloonHint(Lcom/lzx/iteam/keyboard/BalloonHint;Lcom/lzx/iteam/keyboard/BalloonHint;Z)V

    .line 379
    iget-object v2, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mPopupSkbView:Lcom/lzx/iteam/keyboard/SoftKeyboardView;

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 380
    iget-object v2, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Lcom/lzx/iteam/keyboard/SoftKeyboard;->getSkbCoreWidth()I

    move-result v5

    .line 381
    iget-object v9, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mPopupSkbView:Lcom/lzx/iteam/keyboard/SoftKeyboardView;

    invoke-virtual {v9}, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->getPaddingLeft()I

    move-result v9

    add-int/2addr v5, v9

    .line 382
    iget-object v9, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mPopupSkbView:Lcom/lzx/iteam/keyboard/SoftKeyboardView;

    invoke-virtual {v9}, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->getPaddingRight()I

    move-result v9

    add-int/2addr v5, v9

    .line 380
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 383
    iget-object v2, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Lcom/lzx/iteam/keyboard/SoftKeyboard;->getSkbCoreHeight()I

    move-result v5

    .line 384
    iget-object v9, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mPopupSkbView:Lcom/lzx/iteam/keyboard/SoftKeyboardView;

    invoke-virtual {v9}, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->getPaddingTop()I

    move-result v9

    add-int/2addr v5, v9

    .line 385
    iget-object v9, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mPopupSkbView:Lcom/lzx/iteam/keyboard/SoftKeyboardView;

    invoke-virtual {v9}, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->getPaddingBottom()I

    move-result v9

    add-int/2addr v5, v9

    .line 383
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 387
    iget-object v2, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mXyPosTmp:[I

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/keyboard/SkbContainer;->getLocationInWindow([I)V

    .line 388
    iget-object v2, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    const/4 v5, 0x0

    iget v9, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mPopupX:I

    iget v10, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mPopupY:I

    .line 389
    iget-object v11, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mXyPosTmp:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    add-int/2addr v10, v11

    .line 388
    invoke-virtual {v2, p0, v5, v9, v10}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 390
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mPopupSkbShow:Z

    .line 391
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mPopupSkbNoResponse:Z

    .line 393
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/lzx/iteam/keyboard/SkbContainer;->dimSoftKeyboard(Z)V

    .line 394
    const-wide/16 v10, 0x0

    invoke-direct {p0, v10, v11}, Lcom/lzx/iteam/keyboard/SkbContainer;->resetKeyPress(J)V

    goto/16 :goto_0
.end method

.method private resetKeyPress(J)V
    .locals 1
    .param p1, "delay"    # J

    .prologue
    .line 410
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mLongPressTimer:Lcom/lzx/iteam/keyboard/SkbContainer$LongPressTimer;

    invoke-virtual {v0}, Lcom/lzx/iteam/keyboard/SkbContainer$LongPressTimer;->removeTimer()Z

    .line 412
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mSkv:Lcom/lzx/iteam/keyboard/SoftKeyboardView;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mSkv:Lcom/lzx/iteam/keyboard/SoftKeyboardView;

    invoke-virtual {v0, p1, p2}, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->resetKeyPress(J)V

    .line 415
    :cond_0
    return-void
.end method

.method private responseKeyEvent(Lcom/lzx/iteam/keyboard/SoftKey;)V
    .locals 1
    .param p1, "sKey"    # Lcom/lzx/iteam/keyboard/SoftKey;

    .prologue
    .line 328
    if-nez p1, :cond_0

    .line 330
    :goto_0
    return-void

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mConn:Lcom/lzx/iteam/keyboard/SkbContainer$InputConnection;

    invoke-interface {v0, p1}, Lcom/lzx/iteam/keyboard/SkbContainer$InputConnection;->responseSoftKeyEvent(Lcom/lzx/iteam/keyboard/SoftKey;)V

    goto :goto_0
.end method

.method private responseSoftKeyLongclick(Lcom/lzx/iteam/keyboard/SoftKey;)V
    .locals 1
    .param p1, "sKey"    # Lcom/lzx/iteam/keyboard/SoftKey;

    .prologue
    .line 333
    if-nez p1, :cond_0

    .line 335
    :goto_0
    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mConn:Lcom/lzx/iteam/keyboard/SkbContainer$InputConnection;

    invoke-interface {v0, p1}, Lcom/lzx/iteam/keyboard/SkbContainer$InputConnection;->responseSoftKeyLongclick(Lcom/lzx/iteam/keyboard/SoftKey;)V

    goto :goto_0
.end method

.method private updateSkbLayout()V
    .locals 9

    .prologue
    const v1, 0x7f050002

    const/4 v8, 0x0

    .line 272
    iget-object v2, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mEnvironment:Lcom/lzx/iteam/keyboard/Environment;

    invoke-virtual {v2}, Lcom/lzx/iteam/keyboard/Environment;->getScreenWidth()I

    .line 274
    iget-object v2, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mEnvironment:Lcom/lzx/iteam/keyboard/Environment;

    invoke-virtual {v2}, Lcom/lzx/iteam/keyboard/Environment;->getSkbHeight()I

    .line 280
    invoke-virtual {p0, v8}, Lcom/lzx/iteam/keyboard/SkbContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/keyboard/SoftKeyboardView;

    iput-object v2, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mMajorView:Lcom/lzx/iteam/keyboard/SoftKeyboardView;

    .line 282
    const/4 v6, 0x0

    .line 283
    .local v6, "majorSkb":Lcom/lzx/iteam/keyboard/SoftKeyboard;
    invoke-static {}, Lcom/lzx/iteam/keyboard/SkbPool;->getInstance()Lcom/lzx/iteam/keyboard/SkbPool;

    move-result-object v0

    .line 285
    .local v0, "skbPool":Lcom/lzx/iteam/keyboard/SkbPool;
    iget v2, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mSkbLayout:I

    packed-switch v2, :pswitch_data_0

    .line 320
    :goto_0
    if-eqz v6, :cond_0

    iget-object v1, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mMajorView:Lcom/lzx/iteam/keyboard/SoftKeyboardView;

    invoke-virtual {v1, v6}, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->setSoftKeyboard(Lcom/lzx/iteam/keyboard/SoftKeyboard;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 325
    :cond_0
    :goto_1
    return-void

    .line 291
    :pswitch_0
    iget-object v2, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mContext:Landroid/content/Context;

    const/high16 v5, 0x43a00000    # 320.0f

    invoke-static {v2, v5}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v3

    .line 292
    .local v3, "h":I
    iget-object v2, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mContext:Landroid/content/Context;

    const/high16 v5, 0x434f0000    # 207.0f

    invoke-static {v2, v5}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v4

    .line 293
    .local v4, "w":I
    const-string v2, "ppi"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "hhhhhhh===="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "wwwwww===="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v5, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mContext:Landroid/content/Context;

    move v2, v1

    .line 294
    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/keyboard/SkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/lzx/iteam/keyboard/SoftKeyboard;

    move-result-object v6

    goto :goto_0

    .line 323
    .end local v3    # "h":I
    .end local v4    # "w":I
    :cond_1
    iget-object v1, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mMajorView:Lcom/lzx/iteam/keyboard/SoftKeyboardView;

    iget-object v2, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mBalloonOnKey:Lcom/lzx/iteam/keyboard/BalloonHint;

    iget-object v5, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mBalloonPopup:Lcom/lzx/iteam/keyboard/BalloonHint;

    invoke-virtual {v1, v2, v5, v8}, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->setBalloonHint(Lcom/lzx/iteam/keyboard/BalloonHint;Lcom/lzx/iteam/keyboard/BalloonHint;Z)V

    .line 324
    iget-object v1, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mMajorView:Lcom/lzx/iteam/keyboard/SoftKeyboardView;

    invoke-virtual {v1}, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->invalidate()V

    goto :goto_1

    .line 285
    :pswitch_data_0
    .packed-switch 0x7f050002
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dismissPopups()V
    .locals 2

    .prologue
    .line 429
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/keyboard/SkbContainer;->handleBack(Z)Z

    .line 430
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/lzx/iteam/keyboard/SkbContainer;->resetKeyPress(J)V

    .line 431
    return-void
.end method

.method public handleBack(Z)Z
    .locals 2
    .param p1, "realAction"    # Z

    .prologue
    const/4 v0, 0x1

    .line 418
    iget-boolean v1, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mPopupSkbShow:Z

    if-eqz v1, :cond_1

    .line 419
    if-nez p1, :cond_0

    .line 425
    :goto_0
    return v0

    .line 421
    :cond_0
    invoke-direct {p0}, Lcom/lzx/iteam/keyboard/SkbContainer;->dismissPopupSkb()V

    .line 422
    iput-boolean v0, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mDiscardEvent:Z

    goto :goto_0

    .line 425
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCurrentSkbSticky()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 226
    iget-object v2, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mMajorView:Lcom/lzx/iteam/keyboard/SoftKeyboardView;

    if-nez v2, :cond_1

    .line 231
    :cond_0
    :goto_0
    return v1

    .line 227
    :cond_1
    iget-object v2, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mMajorView:Lcom/lzx/iteam/keyboard/SoftKeyboardView;

    invoke-virtual {v2}, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->getSoftKeyboard()Lcom/lzx/iteam/keyboard/SoftKeyboard;

    move-result-object v0

    .line 228
    .local v0, "skb":Lcom/lzx/iteam/keyboard/SoftKeyboard;
    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0}, Lcom/lzx/iteam/keyboard/SoftKeyboard;->getStickyFlag()Z

    move-result v1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 435
    invoke-static {}, Lcom/lzx/iteam/keyboard/Environment;->getInstance()Lcom/lzx/iteam/keyboard/Environment;

    move-result-object v0

    .line 436
    .local v0, "env":Lcom/lzx/iteam/keyboard/Environment;
    invoke-virtual {v0}, Lcom/lzx/iteam/keyboard/Environment;->getScreenWidth()I

    move-result v2

    .line 438
    .local v2, "measuredWidth":I
    invoke-virtual {p0}, Lcom/lzx/iteam/keyboard/SkbContainer;->getPaddingTop()I

    move-result v1

    .line 440
    .local v1, "measuredHeight":I
    iget-object v3, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mContext:Landroid/content/Context;

    const/high16 v4, 0x434f0000    # 207.0f

    invoke-static {v3, v4}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v3

    add-int/2addr v1, v3

    .line 442
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 444
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 446
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 447
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 574
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    .line 575
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lzx/iteam/keyboard/SkbContainer;->mPopupX:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    .line 576
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lzx/iteam/keyboard/SkbContainer;->mPopupY:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPressure()F

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getSize()F

    move-result v10

    .line 577
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v12

    .line 578
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v14

    .line 579
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v15

    .line 574
    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v16

    .line 580
    .local v16, "newEv":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/keyboard/SkbContainer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v17

    .line 581
    .local v17, "ret":Z
    return v17
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x6

    const-wide/16 v8, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 451
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 458
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v1, v5

    .line 459
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v2, v5

    .line 461
    .local v2, "y":I
    iget v5, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mYBiasCorrection:I

    add-int/2addr v2, v5

    .line 464
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 465
    iget v5, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mXLast:I

    sub-int v5, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-gt v5, v7, :cond_1

    .line 466
    iget v5, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mYLast:I

    sub-int v5, v2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-gt v5, v7, :cond_1

    .line 567
    :cond_0
    :goto_0
    return v3

    .line 471
    :cond_1
    iput v1, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mXLast:I

    .line 472
    iput v2, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mYLast:I

    .line 482
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 563
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mSkv:Lcom/lzx/iteam/keyboard/SoftKeyboardView;

    if-nez v5, :cond_0

    move v3, v4

    .line 564
    goto :goto_0

    .line 484
    :pswitch_0
    invoke-direct {p0, v8, v9}, Lcom/lzx/iteam/keyboard/SkbContainer;->resetKeyPress(J)V

    .line 486
    iput-boolean v3, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mWaitForTouchUp:Z

    .line 487
    iput-boolean v4, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mDiscardEvent:Z

    .line 489
    iput-object v10, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mSkv:Lcom/lzx/iteam/keyboard/SoftKeyboardView;

    .line 490
    iput-object v10, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    .line 491
    iget-object v5, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mSkvPosInContainer:[I

    invoke-direct {p0, v1, v2, v5}, Lcom/lzx/iteam/keyboard/SkbContainer;->inKeyboardView(II[I)Lcom/lzx/iteam/keyboard/SoftKeyboardView;

    move-result-object v5

    iput-object v5, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mSkv:Lcom/lzx/iteam/keyboard/SoftKeyboardView;

    .line 492
    iget-object v5, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mSkv:Lcom/lzx/iteam/keyboard/SoftKeyboardView;

    if-eqz v5, :cond_2

    .line 493
    iget-object v5, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mSkv:Lcom/lzx/iteam/keyboard/SoftKeyboardView;

    iget-object v6, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mSkvPosInContainer:[I

    aget v6, v6, v4

    sub-int v6, v1, v6

    .line 494
    iget-object v7, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mSkvPosInContainer:[I

    aget v7, v7, v3

    sub-int v7, v2, v7

    iget-object v8, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mLongPressTimer:Lcom/lzx/iteam/keyboard/SkbContainer$LongPressTimer;

    .line 493
    invoke-virtual {v5, v6, v7, v8, v4}, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->onKeyPress(IILcom/lzx/iteam/keyboard/SkbContainer$LongPressTimer;Z)Lcom/lzx/iteam/keyboard/SoftKey;

    move-result-object v5

    iput-object v5, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    goto :goto_1

    .line 499
    :pswitch_1
    if-ltz v1, :cond_2

    invoke-virtual {p0}, Lcom/lzx/iteam/keyboard/SkbContainer;->getWidth()I

    move-result v5

    if-ge v1, v5, :cond_2

    if-ltz v2, :cond_2

    invoke-virtual {p0}, Lcom/lzx/iteam/keyboard/SkbContainer;->getHeight()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 502
    iget-boolean v5, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mDiscardEvent:Z

    if-eqz v5, :cond_3

    .line 503
    invoke-direct {p0, v8, v9}, Lcom/lzx/iteam/keyboard/SkbContainer;->resetKeyPress(J)V

    goto :goto_1

    .line 507
    :cond_3
    iget-boolean v5, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mPopupSkbShow:Z

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mPopupSkbNoResponse:Z

    if-nez v5, :cond_2

    .line 511
    :cond_4
    iget-object v5, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mSkvPosInContainer:[I

    invoke-direct {p0, v1, v2, v5}, Lcom/lzx/iteam/keyboard/SkbContainer;->inKeyboardView(II[I)Lcom/lzx/iteam/keyboard/SoftKeyboardView;

    move-result-object v0

    .line 512
    .local v0, "skv":Lcom/lzx/iteam/keyboard/SoftKeyboardView;
    if-eqz v0, :cond_2

    .line 513
    iget-object v5, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mSkv:Lcom/lzx/iteam/keyboard/SoftKeyboardView;

    if-eq v0, v5, :cond_5

    .line 514
    iput-object v0, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mSkv:Lcom/lzx/iteam/keyboard/SoftKeyboardView;

    .line 515
    iget-object v5, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mSkv:Lcom/lzx/iteam/keyboard/SoftKeyboardView;

    iget-object v6, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mSkvPosInContainer:[I

    aget v6, v6, v4

    sub-int v6, v1, v6

    .line 516
    iget-object v7, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mSkvPosInContainer:[I

    aget v7, v7, v3

    sub-int v7, v2, v7

    iget-object v8, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mLongPressTimer:Lcom/lzx/iteam/keyboard/SkbContainer$LongPressTimer;

    .line 515
    invoke-virtual {v5, v6, v7, v8, v3}, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->onKeyPress(IILcom/lzx/iteam/keyboard/SkbContainer$LongPressTimer;Z)Lcom/lzx/iteam/keyboard/SoftKey;

    move-result-object v5

    iput-object v5, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    goto :goto_1

    .line 517
    :cond_5
    if-eqz v0, :cond_2

    .line 518
    iget-object v5, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mSkv:Lcom/lzx/iteam/keyboard/SoftKeyboardView;

    if-eqz v5, :cond_2

    .line 519
    iget-object v5, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mSkv:Lcom/lzx/iteam/keyboard/SoftKeyboardView;

    .line 520
    iget-object v6, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mSkvPosInContainer:[I

    aget v6, v6, v4

    sub-int v6, v1, v6

    .line 521
    iget-object v7, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mSkvPosInContainer:[I

    aget v7, v7, v3

    sub-int v7, v2, v7

    .line 519
    invoke-virtual {v5, v6, v7}, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->onKeyMove(II)Lcom/lzx/iteam/keyboard/SoftKey;

    move-result-object v5

    iput-object v5, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    .line 522
    iget-object v5, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    if-nez v5, :cond_2

    .line 523
    iput-boolean v3, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mDiscardEvent:Z

    goto/16 :goto_1

    .line 531
    .end local v0    # "skv":Lcom/lzx/iteam/keyboard/SoftKeyboardView;
    :pswitch_2
    iget-boolean v5, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mDiscardEvent:Z

    if-eqz v5, :cond_6

    .line 532
    invoke-direct {p0, v8, v9}, Lcom/lzx/iteam/keyboard/SkbContainer;->resetKeyPress(J)V

    goto/16 :goto_1

    .line 536
    :cond_6
    iput-boolean v4, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mWaitForTouchUp:Z

    .line 540
    iget-object v5, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mSkv:Lcom/lzx/iteam/keyboard/SoftKeyboardView;

    if-eqz v5, :cond_7

    .line 541
    iget-object v5, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mSkv:Lcom/lzx/iteam/keyboard/SoftKeyboardView;

    iget-object v6, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mSkvPosInContainer:[I

    aget v6, v6, v4

    sub-int v6, v1, v6

    .line 542
    iget-object v7, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mSkvPosInContainer:[I

    aget v7, v7, v3

    sub-int v7, v2, v7

    .line 541
    invoke-virtual {v5, v6, v7}, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->onKeyRelease(II)Lcom/lzx/iteam/keyboard/SoftKey;

    .line 545
    :cond_7
    iget-boolean v5, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mPopupSkbShow:Z

    if-eqz v5, :cond_8

    iget-boolean v5, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mPopupSkbNoResponse:Z

    if-nez v5, :cond_9

    .line 546
    :cond_8
    iget-object v5, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    invoke-direct {p0, v5}, Lcom/lzx/iteam/keyboard/SkbContainer;->responseKeyEvent(Lcom/lzx/iteam/keyboard/SoftKey;)V

    .line 549
    :cond_9
    iget-object v5, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mSkv:Lcom/lzx/iteam/keyboard/SoftKeyboardView;

    iget-object v6, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mPopupSkbView:Lcom/lzx/iteam/keyboard/SoftKeyboardView;

    if-ne v5, v6, :cond_a

    iget-boolean v5, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mPopupSkbNoResponse:Z

    if-nez v5, :cond_a

    .line 550
    invoke-direct {p0}, Lcom/lzx/iteam/keyboard/SkbContainer;->dismissPopupSkb()V

    .line 552
    :cond_a
    iput-boolean v4, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mPopupSkbNoResponse:Z

    goto/16 :goto_1

    .line 559
    :pswitch_3
    invoke-direct {p0}, Lcom/lzx/iteam/keyboard/SkbContainer;->dismissPopupSkb()V

    goto/16 :goto_1

    .line 482
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setInputConnection(Lcom/lzx/iteam/keyboard/SkbContainer$InputConnection;)V
    .locals 0
    .param p1, "conn"    # Lcom/lzx/iteam/keyboard/SkbContainer$InputConnection;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mConn:Lcom/lzx/iteam/keyboard/SkbContainer$InputConnection;

    .line 215
    return-void
.end method

.method public setInputModeSwitcher(Lcom/lzx/iteam/keyboard/InputModeSwitcher;)V
    .locals 0
    .param p1, "inputModeSwitcher"    # Lcom/lzx/iteam/keyboard/InputModeSwitcher;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mInputModeSwitcher:Lcom/lzx/iteam/keyboard/InputModeSwitcher;

    .line 219
    return-void
.end method

.method public toggleCandidateMode(Z)V
    .locals 4
    .param p1, "candidatesShowing"    # Z

    .prologue
    const/4 v3, 0x0

    .line 235
    iget-object v2, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mMajorView:Lcom/lzx/iteam/keyboard/SoftKeyboardView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mInputModeSwitcher:Lcom/lzx/iteam/keyboard/InputModeSwitcher;

    invoke-virtual {v2}, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->isChineseText()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    iget-boolean v2, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mLastCandidatesShowing:Z

    if-ne v2, p1, :cond_1

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    iput-boolean p1, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mLastCandidatesShowing:Z

    .line 239
    iget-object v2, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mMajorView:Lcom/lzx/iteam/keyboard/SoftKeyboardView;

    invoke-virtual {v2}, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->getSoftKeyboard()Lcom/lzx/iteam/keyboard/SoftKeyboard;

    move-result-object v0

    .line 240
    .local v0, "skb":Lcom/lzx/iteam/keyboard/SoftKeyboard;
    if-eqz v0, :cond_0

    .line 242
    iget-object v2, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mInputModeSwitcher:Lcom/lzx/iteam/keyboard/InputModeSwitcher;

    invoke-virtual {v2}, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->getTooggleStateForCnCand()I

    move-result v1

    .line 243
    .local v1, "state":I
    if-nez p1, :cond_2

    .line 244
    invoke-virtual {v0, v1, v3}, Lcom/lzx/iteam/keyboard/SoftKeyboard;->disableToggleState(IZ)V

    .line 245
    iget-object v2, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mInputModeSwitcher:Lcom/lzx/iteam/keyboard/InputModeSwitcher;

    invoke-virtual {v2}, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->getToggleStates()Lcom/lzx/iteam/keyboard/InputModeSwitcher$ToggleStates;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/keyboard/SoftKeyboard;->enableToggleStates(Lcom/lzx/iteam/keyboard/InputModeSwitcher$ToggleStates;)V

    .line 250
    :goto_1
    iget-object v2, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mMajorView:Lcom/lzx/iteam/keyboard/SoftKeyboardView;

    invoke-virtual {v2}, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->invalidate()V

    goto :goto_0

    .line 247
    :cond_2
    invoke-virtual {v0, v1, v3}, Lcom/lzx/iteam/keyboard/SoftKeyboard;->enableToggleState(IZ)V

    goto :goto_1
.end method

.method public updateInputMode()V
    .locals 3

    .prologue
    .line 254
    iget-object v2, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mInputModeSwitcher:Lcom/lzx/iteam/keyboard/InputModeSwitcher;

    invoke-virtual {v2}, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->getSkbLayout()I

    move-result v1

    .line 255
    .local v1, "skbLayout":I
    iget v2, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mSkbLayout:I

    if-eq v2, v1, :cond_0

    .line 256
    iput v1, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mSkbLayout:I

    .line 257
    invoke-direct {p0}, Lcom/lzx/iteam/keyboard/SkbContainer;->updateSkbLayout()V

    .line 260
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mLastCandidatesShowing:Z

    .line 262
    iget-object v2, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mMajorView:Lcom/lzx/iteam/keyboard/SoftKeyboardView;

    if-nez v2, :cond_2

    .line 268
    :cond_1
    :goto_0
    return-void

    .line 264
    :cond_2
    iget-object v2, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mMajorView:Lcom/lzx/iteam/keyboard/SoftKeyboardView;

    invoke-virtual {v2}, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->getSoftKeyboard()Lcom/lzx/iteam/keyboard/SoftKeyboard;

    move-result-object v0

    .line 265
    .local v0, "skb":Lcom/lzx/iteam/keyboard/SoftKeyboard;
    if-eqz v0, :cond_1

    .line 266
    iget-object v2, p0, Lcom/lzx/iteam/keyboard/SkbContainer;->mInputModeSwitcher:Lcom/lzx/iteam/keyboard/InputModeSwitcher;

    invoke-virtual {v2}, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->getToggleStates()Lcom/lzx/iteam/keyboard/InputModeSwitcher$ToggleStates;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/keyboard/SoftKeyboard;->enableToggleStates(Lcom/lzx/iteam/keyboard/InputModeSwitcher$ToggleStates;)V

    .line 267
    invoke-virtual {p0}, Lcom/lzx/iteam/keyboard/SkbContainer;->invalidate()V

    goto :goto_0
.end method
