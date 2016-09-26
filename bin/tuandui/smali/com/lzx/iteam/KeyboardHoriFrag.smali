.class public Lcom/lzx/iteam/KeyboardHoriFrag;
.super Landroid/support/v4/app/Fragment;
.source "KeyboardHoriFrag.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field private static final COMMON_VIEW_INIT:I = 0x7f0300ae

.field private static final D:Z = true

.field public static final KEY_IS_INIT:I = 0x7f0e0304

.field private static final TAG:Ljava/lang/String; = "KeyboardHoriFrag"


# instance fields
.field private mActivity:Lcom/lzx/iteam/CloudDialerActivity;

.field private mAnimationBeforeFreshListener:Landroid/view/animation/Animation$AnimationListener;

.field private mAnimationVerticalAllwordGone:Landroid/view/animation/Animation;

.field private mAnimationVerticalAllwordVisible:Landroid/view/animation/Animation;

.field private mBtnHDialTextShowArea:Landroid/widget/TextView;

.field private mDigits_h:Lcom/lzx/iteam/widget/DialpadEditText;

.field private mDigits_h_words:Lcom/lzx/iteam/widget/DialpadEditText;

.field private mDisplayBottomView:Landroid/view/View;

.field private mDisplayT9orWords:Lcom/lzx/iteam/widget/TextImageButton;

.field public mDisplayUnderPanelButton:Lcom/lzx/iteam/widget/TextImageButton;

.field private mEnvironment:Lcom/lzx/iteam/keyboard/Environment;

.field private mInputModeSwitcher:Lcom/lzx/iteam/keyboard/InputModeSwitcher;

.field private mIsDisplayUnderPanel:Z

.field private mIsHaveTone:I

.field private mIsT9:Z

.field private mKeyHori:Landroid/view/View;

.field private mKeyboardHorizontalBottom:Lcom/lzx/iteam/widget/HInterceptFrameLayout;

.field private mKeyboardeHorizonalHandler:Lcom/lzx/iteam/widget/HInterceptFrameLayout2;

.field private mNeedReloadSkin:Z

.field private mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

.field private mQwertyBoard:Lcom/lzx/iteam/keyboard/SkbContainer;

.field public mSkin:Lcom/lzx/iteam/bean/SkinHorizData;

.field public mSkinCommon:Lcom/lzx/iteam/bean/SkinCommonData;

.field private mT9Board:Landroid/widget/LinearLayout;

.field private mView_h_num0:Lcom/lzx/iteam/widget/TextImageButton;

.field private mView_h_num1:Lcom/lzx/iteam/widget/TextImageButton;

.field private mView_h_num2:Lcom/lzx/iteam/widget/TextImageButton;

.field private mView_h_num3:Lcom/lzx/iteam/widget/TextImageButton;

.field private mView_h_num4:Lcom/lzx/iteam/widget/TextImageButton;

.field private mView_h_num5:Lcom/lzx/iteam/widget/TextImageButton;

.field private mView_h_num6:Lcom/lzx/iteam/widget/TextImageButton;

.field private mView_h_num7:Lcom/lzx/iteam/widget/TextImageButton;

.field private mView_h_num8:Lcom/lzx/iteam/widget/TextImageButton;

.field private mView_h_num9:Lcom/lzx/iteam/widget/TextImageButton;

.field private mView_h_num_del:Lcom/lzx/iteam/widget/TextImageButton;

.field private mView_h_num_dial:Lcom/lzx/iteam/widget/TextImageButton;

.field private mView_h_num_sms:Lcom/lzx/iteam/widget/TextImageButton;

.field private mView_h_num_star:Lcom/lzx/iteam/widget/TextImageButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 35
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 43
    iput-boolean v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mIsT9:Z

    .line 44
    iput-boolean v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mIsDisplayUnderPanel:Z

    .line 604
    new-instance v0, Lcom/lzx/iteam/KeyboardHoriFrag$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/KeyboardHoriFrag$1;-><init>(Lcom/lzx/iteam/KeyboardHoriFrag;)V

    iput-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mAnimationBeforeFreshListener:Landroid/view/animation/Animation$AnimationListener;

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/KeyboardHoriFrag;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mIsT9:Z

    return v0
.end method

.method static synthetic access$1(Lcom/lzx/iteam/KeyboardHoriFrag;)Lcom/lzx/iteam/keyboard/SkbContainer;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mQwertyBoard:Lcom/lzx/iteam/keyboard/SkbContainer;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/KeyboardHoriFrag;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mT9Board:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lzx/iteam/KeyboardHoriFrag;)Landroid/view/View;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mKeyHori:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lzx/iteam/KeyboardHoriFrag;)Lcom/lzx/iteam/CloudDialerActivity;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mActivity:Lcom/lzx/iteam/CloudDialerActivity;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lzx/iteam/KeyboardHoriFrag;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mIsDisplayUnderPanel:Z

    return v0
.end method

.method static synthetic access$6(Lcom/lzx/iteam/KeyboardHoriFrag;Z)V
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mIsDisplayUnderPanel:Z

    return-void
.end method

.method static synthetic access$7(Lcom/lzx/iteam/KeyboardHoriFrag;)I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mIsHaveTone:I

    return v0
.end method

.method static synthetic access$8(Lcom/lzx/iteam/KeyboardHoriFrag;I)V
    .locals 0

    .prologue
    .line 631
    invoke-direct {p0, p1}, Lcom/lzx/iteam/KeyboardHoriFrag;->keyPressed(I)V

    return-void
.end method

.method static synthetic access$9(Lcom/lzx/iteam/KeyboardHoriFrag;)Lcom/lzx/iteam/widget/DialpadEditText;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDigits_h_words:Lcom/lzx/iteam/widget/DialpadEditText;

    return-object v0
.end method

.method private initCommonViewSkin(Lcom/lzx/iteam/bean/SkinHorizData;Lcom/lzx/iteam/bean/SkinCommonData;)V
    .locals 2
    .param p1, "skin"    # Lcom/lzx/iteam/bean/SkinHorizData;
    .param p2, "commonData"    # Lcom/lzx/iteam/bean/SkinCommonData;

    .prologue
    .line 534
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDisplayT9orWords:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v0, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 535
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDisplayT9orWords:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p2, Lcom/lzx/iteam/bean/SkinCommonData;->scaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 536
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDisplayT9orWords:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinHorizData;->hAndAbcResId:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 537
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDisplayT9orWords:Lcom/lzx/iteam/widget/TextImageButton;

    iget v1, p2, Lcom/lzx/iteam/bean/SkinCommonData;->barTitleColor:I

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setColor(I)V

    .line 538
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDisplayT9orWords:Lcom/lzx/iteam/widget/TextImageButton;

    iget v1, p2, Lcom/lzx/iteam/bean/SkinCommonData;->backgroundColor:I

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setBackgroundColor(I)V

    .line 540
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDisplayUnderPanelButton:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v0, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 541
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDisplayUnderPanelButton:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p2, Lcom/lzx/iteam/bean/SkinCommonData;->scaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 542
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDisplayUnderPanelButton:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinHorizData;->hidet9:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 543
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDisplayUnderPanelButton:Lcom/lzx/iteam/widget/TextImageButton;

    iget v1, p2, Lcom/lzx/iteam/bean/SkinCommonData;->barTitleColor:I

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setColor(I)V

    .line 545
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDisplayBottomView:Landroid/view/View;

    iget v1, p2, Lcom/lzx/iteam/bean/SkinCommonData;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 546
    return-void
.end method

.method private initKeypadHorizental()V
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mT9Board:Landroid/widget/LinearLayout;

    .line 449
    .local v0, "keyboardRoot":Landroid/view/View;
    const v1, 0x7f0e02bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num0:Lcom/lzx/iteam/widget/TextImageButton;

    .line 450
    const v1, 0x7f0e02b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num1:Lcom/lzx/iteam/widget/TextImageButton;

    .line 451
    const v1, 0x7f0e02b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num2:Lcom/lzx/iteam/widget/TextImageButton;

    .line 452
    const v1, 0x7f0e02b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num3:Lcom/lzx/iteam/widget/TextImageButton;

    .line 453
    const v1, 0x7f0e02b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num4:Lcom/lzx/iteam/widget/TextImageButton;

    .line 454
    const v1, 0x7f0e02b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num5:Lcom/lzx/iteam/widget/TextImageButton;

    .line 455
    const v1, 0x7f0e02b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num6:Lcom/lzx/iteam/widget/TextImageButton;

    .line 456
    const v1, 0x7f0e02b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num7:Lcom/lzx/iteam/widget/TextImageButton;

    .line 457
    const v1, 0x7f0e02b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num8:Lcom/lzx/iteam/widget/TextImageButton;

    .line 458
    const v1, 0x7f0e02ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num9:Lcom/lzx/iteam/widget/TextImageButton;

    .line 460
    const v1, 0x7f0e02bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num_star:Lcom/lzx/iteam/widget/TextImageButton;

    .line 461
    const v1, 0x7f0e02bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num_del:Lcom/lzx/iteam/widget/TextImageButton;

    .line 462
    const v1, 0x7f0e02be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num_dial:Lcom/lzx/iteam/widget/TextImageButton;

    .line 463
    const v1, 0x7f0e02c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num_sms:Lcom/lzx/iteam/widget/TextImageButton;

    .line 464
    const v1, 0x7f0e02c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mBtnHDialTextShowArea:Landroid/widget/TextView;

    .line 466
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num0:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 467
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num0:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 468
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num0:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 470
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num1:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 471
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num1:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 472
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num1:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 474
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num2:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 475
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num2:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 476
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num2:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 478
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num3:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 479
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num3:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 480
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num3:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 482
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num4:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 483
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num4:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 484
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num4:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 486
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num5:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 487
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num5:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 488
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num5:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 490
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num6:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 491
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num6:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 492
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num6:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 494
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num7:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 495
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num7:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 496
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num7:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 498
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num8:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 499
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num8:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 500
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num8:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 502
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num9:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 503
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num9:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 504
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num9:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 506
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num_star:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 507
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num_star:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 508
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num_star:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 510
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num_del:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 511
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num_del:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 512
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num_del:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 514
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num_dial:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 515
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num_dial:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 517
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num_sms:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 518
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num_sms:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 519
    return-void
.end method

.method private keyPressed(I)V
    .locals 2
    .param p1, "keyCode"    # I

    .prologue
    .line 633
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 634
    .local v0, "event":Landroid/view/KeyEvent;
    iget-boolean v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mIsT9:Z

    if-eqz v1, :cond_0

    .line 635
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDigits_h:Lcom/lzx/iteam/widget/DialpadEditText;

    invoke-virtual {v1, p1, v0}, Lcom/lzx/iteam/widget/DialpadEditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 639
    :goto_0
    return-void

    .line 637
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDigits_h_words:Lcom/lzx/iteam/widget/DialpadEditText;

    invoke-virtual {v1, p1, v0}, Lcom/lzx/iteam/widget/DialpadEditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0
.end method

.method public static newInstance()Lcom/lzx/iteam/KeyboardHoriFrag;
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcom/lzx/iteam/KeyboardHoriFrag;

    invoke-direct {v0}, Lcom/lzx/iteam/KeyboardHoriFrag;-><init>()V

    .line 103
    .local v0, "f":Lcom/lzx/iteam/KeyboardHoriFrag;
    return-object v0
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/lzx/iteam/KeyboardHoriFrag;
    .locals 1
    .param p0, "args"    # Landroid/os/Bundle;

    .prologue
    .line 96
    new-instance v0, Lcom/lzx/iteam/KeyboardHoriFrag;

    invoke-direct {v0}, Lcom/lzx/iteam/KeyboardHoriFrag;-><init>()V

    .line 97
    .local v0, "f":Lcom/lzx/iteam/KeyboardHoriFrag;
    invoke-virtual {v0, p0}, Lcom/lzx/iteam/KeyboardHoriFrag;->setArguments(Landroid/os/Bundle;)V

    .line 98
    return-object v0
.end method

.method private setupCommonView(Landroid/view/View;Lcom/lzx/iteam/bean/SkinHorizData;Lcom/lzx/iteam/bean/SkinCommonData;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "skin"    # Lcom/lzx/iteam/bean/SkinHorizData;
    .param p3, "commonData"    # Lcom/lzx/iteam/bean/SkinCommonData;

    .prologue
    const v1, 0x7f0300ae

    .line 522
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 523
    const v0, 0x7f0e048b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDisplayT9orWords:Lcom/lzx/iteam/widget/TextImageButton;

    .line 524
    const v0, 0x7f0e0488

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDisplayUnderPanelButton:Lcom/lzx/iteam/widget/TextImageButton;

    .line 525
    const v0, 0x7f0e0487

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDisplayBottomView:Landroid/view/View;

    .line 526
    invoke-direct {p0, p2, p3}, Lcom/lzx/iteam/KeyboardHoriFrag;->initCommonViewSkin(Lcom/lzx/iteam/bean/SkinHorizData;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 527
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    iget-boolean v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mNeedReloadSkin:Z

    if-eqz v0, :cond_0

    .line 529
    invoke-direct {p0, p2, p3}, Lcom/lzx/iteam/KeyboardHoriFrag;->initCommonViewSkin(Lcom/lzx/iteam/bean/SkinHorizData;Lcom/lzx/iteam/bean/SkinCommonData;)V

    goto :goto_0
.end method

.method private setupKeypadHorizentalAllwords()V
    .locals 3

    .prologue
    .line 407
    invoke-static {}, Lcom/lzx/iteam/keyboard/Environment;->getInstance()Lcom/lzx/iteam/keyboard/Environment;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mEnvironment:Lcom/lzx/iteam/keyboard/Environment;

    .line 408
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mEnvironment:Lcom/lzx/iteam/keyboard/Environment;

    invoke-virtual {p0}, Lcom/lzx/iteam/KeyboardHoriFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lzx/iteam/KeyboardHoriFrag;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/keyboard/Environment;->onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/Context;)V

    .line 409
    new-instance v0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;

    invoke-virtual {p0}, Lcom/lzx/iteam/KeyboardHoriFrag;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lzx/iteam/keyboard/InputModeSwitcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mInputModeSwitcher:Lcom/lzx/iteam/keyboard/InputModeSwitcher;

    .line 413
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mQwertyBoard:Lcom/lzx/iteam/keyboard/SkbContainer;

    new-instance v1, Lcom/lzx/iteam/KeyboardHoriFrag$6;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/KeyboardHoriFrag$6;-><init>(Lcom/lzx/iteam/KeyboardHoriFrag;)V

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/keyboard/SkbContainer;->setInputConnection(Lcom/lzx/iteam/keyboard/SkbContainer$InputConnection;)V

    .line 442
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mQwertyBoard:Lcom/lzx/iteam/keyboard/SkbContainer;

    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mInputModeSwitcher:Lcom/lzx/iteam/keyboard/InputModeSwitcher;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/keyboard/SkbContainer;->setInputModeSwitcher(Lcom/lzx/iteam/keyboard/InputModeSwitcher;)V

    .line 443
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mQwertyBoard:Lcom/lzx/iteam/keyboard/SkbContainer;

    invoke-virtual {v0}, Lcom/lzx/iteam/keyboard/SkbContainer;->updateInputMode()V

    .line 444
    return-void
.end method

.method private setupRootViewInKeyboard()V
    .locals 2

    .prologue
    .line 350
    const-string v0, "doubleS"

    const-string v1, "xxxx"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mKeyHori:Landroid/view/View;

    const v1, 0x7f0e0605

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/keyboard/SkbContainer;

    iput-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mQwertyBoard:Lcom/lzx/iteam/keyboard/SkbContainer;

    .line 352
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mKeyHori:Landroid/view/View;

    const v1, 0x7f0e02b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mT9Board:Landroid/widget/LinearLayout;

    .line 354
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mKeyHori:Landroid/view/View;

    .line 355
    const v1, 0x7f0e048c

    .line 354
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/widget/HInterceptFrameLayout;

    iput-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mKeyboardHorizontalBottom:Lcom/lzx/iteam/widget/HInterceptFrameLayout;

    .line 356
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mKeyboardHorizontalBottom:Lcom/lzx/iteam/widget/HInterceptFrameLayout;

    new-instance v1, Lcom/lzx/iteam/KeyboardHoriFrag$3;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/KeyboardHoriFrag$3;-><init>(Lcom/lzx/iteam/KeyboardHoriFrag;)V

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/HInterceptFrameLayout;->setOnDoubleScrollListener(Lcom/lzx/iteam/widget/HInterceptFrameLayout$DoubleScrollListener;)V

    .line 368
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mKeyHori:Landroid/view/View;

    .line 369
    const v1, 0x7f0e0486

    .line 368
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/widget/HInterceptFrameLayout2;

    iput-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mKeyboardeHorizonalHandler:Lcom/lzx/iteam/widget/HInterceptFrameLayout2;

    .line 370
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mKeyboardHorizontalBottom:Lcom/lzx/iteam/widget/HInterceptFrameLayout;

    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mActivity:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/HInterceptFrameLayout;->setListener(Lcom/lzx/iteam/CloudDialerActivity;)V

    .line 371
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mKeyboardeHorizonalHandler:Lcom/lzx/iteam/widget/HInterceptFrameLayout2;

    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mActivity:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/HInterceptFrameLayout2;->setListener(Lcom/lzx/iteam/CloudDialerActivity;)V

    .line 373
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mKeyHori:Landroid/view/View;

    const v1, 0x7f0e0489

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/widget/DialpadEditText;

    iput-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDigits_h:Lcom/lzx/iteam/widget/DialpadEditText;

    .line 374
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mKeyHori:Landroid/view/View;

    const v1, 0x7f0e048a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/widget/DialpadEditText;

    iput-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDigits_h_words:Lcom/lzx/iteam/widget/DialpadEditText;

    .line 375
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDigits_h:Lcom/lzx/iteam/widget/DialpadEditText;

    new-instance v1, Lcom/lzx/iteam/KeyboardHoriFrag$4;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/KeyboardHoriFrag$4;-><init>(Lcom/lzx/iteam/KeyboardHoriFrag;)V

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/DialpadEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 388
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDigits_h_words:Lcom/lzx/iteam/widget/DialpadEditText;

    new-instance v1, Lcom/lzx/iteam/KeyboardHoriFrag$5;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/KeyboardHoriFrag$5;-><init>(Lcom/lzx/iteam/KeyboardHoriFrag;)V

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/DialpadEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 403
    return-void
.end method


# virtual methods
.method public changeKeyBoard2FitDial()V
    .locals 4

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mIsT9:Z

    if-nez v0, :cond_0

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mIsT9:Z

    .line 227
    iget-boolean v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mIsT9:Z

    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mSkin:Lcom/lzx/iteam/bean/SkinHorizData;

    iget-object v2, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mSkinCommon:Lcom/lzx/iteam/bean/SkinCommonData;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lzx/iteam/KeyboardHoriFrag;->switchKeyboard(ZLcom/lzx/iteam/bean/SkinHorizData;Lcom/lzx/iteam/bean/SkinCommonData;Z)V

    .line 230
    :cond_0
    return-void
.end method

.method public changeSkin(Lcom/lzx/iteam/bean/SkinHorizData;Lcom/lzx/iteam/bean/SkinCommonData;)V
    .locals 0
    .param p1, "skin"    # Lcom/lzx/iteam/bean/SkinHorizData;
    .param p2, "commonData"    # Lcom/lzx/iteam/bean/SkinCommonData;

    .prologue
    .line 183
    iput-object p2, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mSkinCommon:Lcom/lzx/iteam/bean/SkinCommonData;

    .line 184
    iput-object p1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mSkin:Lcom/lzx/iteam/bean/SkinHorizData;

    .line 185
    invoke-direct {p0, p1, p2}, Lcom/lzx/iteam/KeyboardHoriFrag;->initCommonViewSkin(Lcom/lzx/iteam/bean/SkinHorizData;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 186
    invoke-virtual {p0, p1, p2}, Lcom/lzx/iteam/KeyboardHoriFrag;->initHoriT9Skin(Lcom/lzx/iteam/bean/SkinHorizData;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 187
    invoke-virtual {p0, p1, p2}, Lcom/lzx/iteam/KeyboardHoriFrag;->initHoriQwertySkin(Lcom/lzx/iteam/bean/SkinHorizData;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 188
    return-void
.end method

.method public formatDigitInput(Landroid/content/Intent;)V
    .locals 6
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 191
    if-nez p1, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 196
    .local v1, "data":Landroid/net/Uri;
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 197
    move-object v3, v1

    .line 198
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v3, :cond_0

    const-string v4, "tel"

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 200
    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "dataStr":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lzx/iteam/KeyboardHoriFrag;->changeKeyBoard2FitDial()V

    .line 202
    invoke-virtual {p0, v2}, Lcom/lzx/iteam/KeyboardHoriFrag;->setFormattedDigits(Ljava/lang/String;)V

    goto :goto_0

    .line 204
    .end local v2    # "dataStr":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_2
    const-string v4, "android.intent.action.DIAL"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 205
    move-object v3, v1

    .line 206
    .restart local v3    # "uri":Landroid/net/Uri;
    if-eqz v3, :cond_0

    const-string v4, "tel"

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 208
    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 209
    .restart local v2    # "dataStr":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lzx/iteam/KeyboardHoriFrag;->changeKeyBoard2FitDial()V

    .line 210
    invoke-virtual {p0, v2}, Lcom/lzx/iteam/KeyboardHoriFrag;->setFormattedDigits(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getFilterText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 304
    const-string v0, ""

    .line 305
    .local v0, "filterText":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mIsT9:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDigits_h:Lcom/lzx/iteam/widget/DialpadEditText;

    if-eqz v1, :cond_1

    .line 306
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDigits_h:Lcom/lzx/iteam/widget/DialpadEditText;

    invoke-virtual {v1}, Lcom/lzx/iteam/widget/DialpadEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 310
    :cond_0
    :goto_0
    return-object v0

    .line 307
    :cond_1
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDigits_h_words:Lcom/lzx/iteam/widget/DialpadEditText;

    if-eqz v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDigits_h_words:Lcom/lzx/iteam/widget/DialpadEditText;

    invoke-virtual {v1}, Lcom/lzx/iteam/widget/DialpadEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIsT9()Z
    .locals 1

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mIsT9:Z

    return v0
.end method

.method public getNumberFilterText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 314
    const-string v0, ""

    .line 315
    .local v0, "result":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mIsT9:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDigits_h:Lcom/lzx/iteam/widget/DialpadEditText;

    if-eqz v1, :cond_0

    .line 316
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDigits_h:Lcom/lzx/iteam/widget/DialpadEditText;

    invoke-virtual {v1}, Lcom/lzx/iteam/widget/DialpadEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 318
    :cond_0
    return-object v0
.end method

.method public initFilterText()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 322
    const-string v1, "KeyboardHoriFrag"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initFilterText: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mActivity:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v3, v3, Lcom/lzx/iteam/CloudDialerActivity;->mInputTextT9:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mActivity:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v3, v3, Lcom/lzx/iteam/CloudDialerActivity;->mInputTextQwerty:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-boolean v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mIsT9:Z

    if-eqz v1, :cond_1

    .line 324
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDigits_h:Lcom/lzx/iteam/widget/DialpadEditText;

    iget-object v2, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mActivity:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v2, v2, Lcom/lzx/iteam/CloudDialerActivity;->mInputTextT9:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/widget/DialpadEditText;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDigits_h:Lcom/lzx/iteam/widget/DialpadEditText;

    .line 326
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mActivity:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v2, v2, Lcom/lzx/iteam/CloudDialerActivity;->mInputTextT9:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mActivity:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->mInputTextT9:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 325
    :cond_0
    invoke-virtual {v1, v0}, Lcom/lzx/iteam/widget/DialpadEditText;->setSelection(I)V

    .line 332
    :goto_0
    return-void

    .line 328
    :cond_1
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDigits_h_words:Lcom/lzx/iteam/widget/DialpadEditText;

    iget-object v2, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mActivity:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v2, v2, Lcom/lzx/iteam/CloudDialerActivity;->mInputTextQwerty:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/widget/DialpadEditText;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDigits_h_words:Lcom/lzx/iteam/widget/DialpadEditText;

    .line 330
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mActivity:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v2, v2, Lcom/lzx/iteam/CloudDialerActivity;->mInputTextQwerty:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mActivity:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->mInputTextQwerty:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 329
    :cond_2
    invoke-virtual {v1, v0}, Lcom/lzx/iteam/widget/DialpadEditText;->setSelection(I)V

    goto :goto_0
.end method

.method public initHoriQwertySkin(Lcom/lzx/iteam/bean/SkinHorizData;Lcom/lzx/iteam/bean/SkinCommonData;)V
    .locals 2
    .param p1, "skin"    # Lcom/lzx/iteam/bean/SkinHorizData;
    .param p2, "commonData"    # Lcom/lzx/iteam/bean/SkinCommonData;

    .prologue
    .line 549
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDigits_h_words:Lcom/lzx/iteam/widget/DialpadEditText;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinHorizData;->hInputResId:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/DialpadEditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 550
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDigits_h_words:Lcom/lzx/iteam/widget/DialpadEditText;

    iget v1, p2, Lcom/lzx/iteam/bean/SkinCommonData;->barTitleColor:I

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/DialpadEditText;->setTextColor(I)V

    .line 551
    return-void
.end method

.method public initHoriT9Skin(Lcom/lzx/iteam/bean/SkinHorizData;Lcom/lzx/iteam/bean/SkinCommonData;)V
    .locals 3
    .param p1, "skin"    # Lcom/lzx/iteam/bean/SkinHorizData;
    .param p2, "skinCommonData"    # Lcom/lzx/iteam/bean/SkinCommonData;

    .prologue
    .line 554
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mT9Board:Landroid/widget/LinearLayout;

    iget v1, p2, Lcom/lzx/iteam/bean/SkinCommonData;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 556
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDigits_h:Lcom/lzx/iteam/widget/DialpadEditText;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinHorizData;->hInputResId:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/DialpadEditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 557
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDigits_h:Lcom/lzx/iteam/widget/DialpadEditText;

    iget v1, p2, Lcom/lzx/iteam/bean/SkinCommonData;->barTitleColor:I

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/DialpadEditText;->setTextColor(I)V

    .line 559
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num0:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 560
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num0:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinHorizData;->ht9BgResId:[Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 562
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num1:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 563
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num1:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinHorizData;->ht9BgResId:[Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 565
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num2:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 566
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num2:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinHorizData;->ht9BgResId:[Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 568
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num3:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 569
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num3:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinHorizData;->ht9BgResId:[Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 571
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num4:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 572
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num4:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinHorizData;->ht9BgResId:[Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 574
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num5:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 575
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num5:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinHorizData;->ht9BgResId:[Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 577
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num6:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 578
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num6:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinHorizData;->ht9BgResId:[Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 580
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num7:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 581
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num7:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinHorizData;->ht9BgResId:[Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 583
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num8:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 584
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num8:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinHorizData;->ht9BgResId:[Landroid/graphics/drawable/StateListDrawable;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 586
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num9:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 587
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num9:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinHorizData;->ht9BgResId:[Landroid/graphics/drawable/StateListDrawable;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 589
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num_dial:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 590
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num_dial:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinHorizData;->hcallResId:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 592
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num_star:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 593
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num_star:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinHorizData;->hstarResId:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 595
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num_del:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 596
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num_del:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinHorizData;->hdelResId:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 598
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num_sms:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 599
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mView_h_num_sms:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinHorizData;->hsmsResId:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 601
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mBtnHDialTextShowArea:Landroid/widget/TextView;

    iget v1, p2, Lcom/lzx/iteam/bean/SkinCommonData;->barTitleColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 602
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 112
    const-string v0, "KeyboardHoriFrag"

    const-string v1, "onAttach: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 644
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 655
    .local v0, "viewId":I
    sget-object v1, Lcom/lzx/iteam/KeyboardVertFrag;->mViewIdKeyCodeMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 656
    sget-object v1, Lcom/lzx/iteam/KeyboardVertFrag;->mViewIdKeyCodeMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 657
    invoke-virtual {p1, v5}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 658
    sget-object v1, Lcom/lzx/iteam/KeyboardVertFrag;->mViewIdKeyCodeMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/lzx/iteam/KeyboardHoriFrag;->keyPressed(I)V

    .line 737
    :cond_0
    :goto_0
    return-void

    .line 663
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 731
    :sswitch_0
    invoke-virtual {p1, v5}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 732
    const/16 v1, 0x43

    invoke-direct {p0, v1}, Lcom/lzx/iteam/KeyboardHoriFrag;->keyPressed(I)V

    goto :goto_0

    .line 669
    :sswitch_1
    iget-boolean v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mIsT9:Z

    if-eqz v1, :cond_4

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mIsT9:Z

    .line 670
    iget-boolean v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mIsT9:Z

    iget-object v4, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mSkin:Lcom/lzx/iteam/bean/SkinHorizData;

    iget-object v5, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mSkinCommon:Lcom/lzx/iteam/bean/SkinCommonData;

    invoke-virtual {p0, v1, v4, v5, v3}, Lcom/lzx/iteam/KeyboardHoriFrag;->switchKeyboard(ZLcom/lzx/iteam/bean/SkinHorizData;Lcom/lzx/iteam/bean/SkinCommonData;Z)V

    .line 672
    iget-boolean v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mIsT9:Z

    if-nez v1, :cond_5

    .line 673
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mAnimationVerticalAllwordVisible:Landroid/view/animation/Animation;

    if-nez v1, :cond_2

    .line 674
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mActivity:Lcom/lzx/iteam/CloudDialerActivity;

    .line 675
    const v4, 0x7f04002b

    .line 674
    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mAnimationVerticalAllwordVisible:Landroid/view/animation/Animation;

    .line 676
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mAnimationVerticalAllwordVisible:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mAnimationBeforeFreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 679
    :cond_2
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mQwertyBoard:Lcom/lzx/iteam/keyboard/SkbContainer;

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/keyboard/SkbContainer;->setVisibility(I)V

    .line 680
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mQwertyBoard:Lcom/lzx/iteam/keyboard/SkbContainer;

    iget-object v2, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mAnimationVerticalAllwordVisible:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/keyboard/SkbContainer;->startAnimation(Landroid/view/animation/Animation;)V

    .line 692
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v2, "is_t9_vertial"

    iget-boolean v4, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mIsT9:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 693
    iget-boolean v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mIsDisplayUnderPanel:Z

    if-nez v1, :cond_0

    .line 694
    iput-boolean v3, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mIsDisplayUnderPanel:Z

    goto :goto_0

    :cond_4
    move v1, v3

    .line 669
    goto :goto_1

    .line 682
    :cond_5
    iget-boolean v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mIsDisplayUnderPanel:Z

    if-eqz v1, :cond_3

    .line 683
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mAnimationVerticalAllwordGone:Landroid/view/animation/Animation;

    if-nez v1, :cond_6

    .line 684
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mActivity:Lcom/lzx/iteam/CloudDialerActivity;

    .line 685
    const v2, 0x7f04002a

    .line 684
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mAnimationVerticalAllwordGone:Landroid/view/animation/Animation;

    .line 686
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mAnimationVerticalAllwordGone:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mAnimationBeforeFreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 688
    :cond_6
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mQwertyBoard:Lcom/lzx/iteam/keyboard/SkbContainer;

    iget-object v2, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mAnimationVerticalAllwordGone:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/keyboard/SkbContainer;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    .line 719
    :sswitch_2
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mActivity:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v1, v1, Lcom/lzx/iteam/CloudDialerActivity;->mListStatus:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    sget-object v1, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CLOUD_CONTACT:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    goto/16 :goto_0

    .line 728
    :sswitch_3
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mActivity:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v1, p1}, Lcom/lzx/iteam/CloudDialerActivity;->onClick(Landroid/view/View;)V

    goto/16 :goto_0

    .line 663
    :sswitch_data_0
    .sparse-switch
        0x7f0e02bd -> :sswitch_0
        0x7f0e02be -> :sswitch_3
        0x7f0e02c1 -> :sswitch_3
        0x7f0e0488 -> :sswitch_2
        0x7f0e048b -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 118
    const-string v0, "KeyboardHoriFrag"

    const-string v1, "onCreate: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {p0}, Lcom/lzx/iteam/KeyboardHoriFrag;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/CloudDialerActivity;

    iput-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mActivity:Lcom/lzx/iteam/CloudDialerActivity;

    .line 121
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mActivity:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-static {v0}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 122
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 133
    const-string v2, "KeyboardHoriFrag"

    const-string v3, "onCreateView: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v3, "is_t9_vertial"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/lzx/iteam/util/PreferenceUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mIsT9:Z

    .line 135
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v3, "ishavesound"

    invoke-virtual {v2, v3, v5}, Lcom/lzx/iteam/util/PreferenceUtil;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mIsHaveTone:I

    .line 138
    const v2, 0x7f0300ae

    invoke-virtual {p1, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mKeyHori:Landroid/view/View;

    .line 139
    invoke-direct {p0}, Lcom/lzx/iteam/KeyboardHoriFrag;->setupRootViewInKeyboard()V

    .line 141
    invoke-virtual {p0}, Lcom/lzx/iteam/KeyboardHoriFrag;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v2, v2, Lcom/lzx/iteam/CloudDialerActivity;->mHorizSkin:Lcom/lzx/iteam/bean/SkinHorizData;

    iput-object v2, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mSkin:Lcom/lzx/iteam/bean/SkinHorizData;

    .line 142
    invoke-virtual {p0}, Lcom/lzx/iteam/KeyboardHoriFrag;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v2, v2, Lcom/lzx/iteam/CloudDialerActivity;->mSkinCommon:Lcom/lzx/iteam/bean/SkinCommonData;

    iput-object v2, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mSkinCommon:Lcom/lzx/iteam/bean/SkinCommonData;

    .line 144
    iget-boolean v2, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mIsT9:Z

    iget-object v3, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mSkin:Lcom/lzx/iteam/bean/SkinHorizData;

    iget-object v4, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mSkinCommon:Lcom/lzx/iteam/bean/SkinCommonData;

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/lzx/iteam/KeyboardHoriFrag;->switchKeyboard(ZLcom/lzx/iteam/bean/SkinHorizData;Lcom/lzx/iteam/bean/SkinCommonData;Z)V

    .line 146
    invoke-virtual {p0}, Lcom/lzx/iteam/KeyboardHoriFrag;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 147
    .local v0, "activityArgs":Landroid/os/Bundle;
    const-string v2, "DATA"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    const-string v2, "DATA"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/KeyboardHoriFrag;->formatDigitInput(Landroid/content/Intent;)V

    .line 149
    const-string v2, "DATA"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 151
    :cond_0
    const-string v2, "input"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "input":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 153
    invoke-virtual {p0, v1}, Lcom/lzx/iteam/KeyboardHoriFrag;->setFilterText(Ljava/lang/String;)V

    .line 155
    :cond_1
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mKeyHori:Landroid/view/View;

    return-object v2
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 126
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 127
    const-string v0, "KeyboardHoriFrag"

    const-string v1, "onDetach: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 2
    .param p1, "hidden"    # Z

    .prologue
    .line 178
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 179
    const-string v0, "KeyboardHoriFrag"

    const-string v1, "onHiddenChanged: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 763
    const/4 v0, 0x0

    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 768
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 797
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 770
    :pswitch_1
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDigits_h:Lcom/lzx/iteam/widget/DialpadEditText;

    invoke-virtual {v0}, Lcom/lzx/iteam/widget/DialpadEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDigits_h:Lcom/lzx/iteam/widget/DialpadEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/DialpadEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 775
    :pswitch_2
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/lzx/iteam/KeyboardHoriFrag;->keyPressed(I)V

    goto :goto_0

    .line 778
    :pswitch_3
    const/16 v0, 0x51

    invoke-direct {p0, v0}, Lcom/lzx/iteam/KeyboardHoriFrag;->keyPressed(I)V

    goto :goto_0

    .line 768
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e02b2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 172
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 173
    const-string v0, "KeyboardHoriFrag"

    const-string v1, "onResume: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 166
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 167
    const-string v0, "KeyboardHoriFrag"

    const-string v1, "onStart: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 741
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 757
    const/4 v0, 0x0

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 160
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 161
    const-string v0, "KeyboardHoriFrag"

    const-string v1, "onViewCreated: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void
.end method

.method public setArea(Ljava/lang/String;)V
    .locals 1
    .param p1, "area"    # Ljava/lang/String;

    .prologue
    .line 812
    iget-boolean v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mIsT9:Z

    if-eqz v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mBtnHDialTextShowArea:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 815
    :cond_0
    return-void
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 335
    const-string v0, "KeyboardHoriFrag"

    const-string v1, "setFilterText H"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 336
    iget-boolean v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mIsT9:Z

    if-eqz v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDigits_h:Lcom/lzx/iteam/widget/DialpadEditText;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDigits_h:Lcom/lzx/iteam/widget/DialpadEditText;

    invoke-virtual {v0, p1}, Lcom/lzx/iteam/widget/DialpadEditText;->setText(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDigits_h:Lcom/lzx/iteam/widget/DialpadEditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/DialpadEditText;->setSelection(I)V

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDigits_h_words:Lcom/lzx/iteam/widget/DialpadEditText;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDigits_h_words:Lcom/lzx/iteam/widget/DialpadEditText;

    invoke-virtual {v0, p1}, Lcom/lzx/iteam/widget/DialpadEditText;->setText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDigits_h_words:Lcom/lzx/iteam/widget/DialpadEditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/DialpadEditText;->setSelection(I)V

    goto :goto_0
.end method

.method protected setFormattedDigits(Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 217
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "dialString":Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    invoke-virtual {p0, v0}, Lcom/lzx/iteam/KeyboardHoriFrag;->setFilterText(Ljava/lang/String;)V

    .line 222
    :cond_0
    return-void
.end method

.method public setKeypadInVisible()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 801
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mT9Board:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mQwertyBoard:Lcom/lzx/iteam/keyboard/SkbContainer;

    invoke-virtual {v0}, Lcom/lzx/iteam/keyboard/SkbContainer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 803
    :cond_0
    iget-boolean v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mIsDisplayUnderPanel:Z

    if-eqz v0, :cond_1

    .line 805
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mT9Board:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 806
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mQwertyBoard:Lcom/lzx/iteam/keyboard/SkbContainer;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/keyboard/SkbContainer;->setVisibility(I)V

    .line 807
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mIsDisplayUnderPanel:Z

    .line 809
    :cond_1
    return-void
.end method

.method public switchKeyboard(ZLcom/lzx/iteam/bean/SkinHorizData;Lcom/lzx/iteam/bean/SkinCommonData;Z)V
    .locals 8
    .param p1, "isT9"    # Z
    .param p2, "skin"    # Lcom/lzx/iteam/bean/SkinHorizData;
    .param p3, "commonData"    # Lcom/lzx/iteam/bean/SkinCommonData;
    .param p4, "animGone"    # Z

    .prologue
    const v7, 0x7f0e0304

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 233
    const/4 v1, 0x0

    .line 235
    .local v1, "tag":Ljava/lang/Object;
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v3, "is_t9_vertial"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 237
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mKeyHori:Landroid/view/View;

    invoke-direct {p0, v2, p2, p3}, Lcom/lzx/iteam/KeyboardHoriFrag;->setupCommonView(Landroid/view/View;Lcom/lzx/iteam/bean/SkinHorizData;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 238
    if-eqz p1, :cond_3

    .line 239
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mT9Board:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 240
    if-nez v1, :cond_2

    .line 241
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mT9Board:Landroid/widget/LinearLayout;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2, v7, v3}, Landroid/widget/LinearLayout;->setTag(ILjava/lang/Object;)V

    .line 243
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDigits_h:Lcom/lzx/iteam/widget/DialpadEditText;

    iget-object v3, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mActivity:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v3, v3, Lcom/lzx/iteam/CloudDialerActivity;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/widget/DialpadEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 244
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDigits_h_words:Lcom/lzx/iteam/widget/DialpadEditText;

    invoke-virtual {v2, v6}, Lcom/lzx/iteam/widget/DialpadEditText;->setVisibility(I)V

    .line 246
    invoke-direct {p0}, Lcom/lzx/iteam/KeyboardHoriFrag;->initKeypadHorizental()V

    .line 247
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mSkinCommon:Lcom/lzx/iteam/bean/SkinCommonData;

    invoke-virtual {p0, p2, v2}, Lcom/lzx/iteam/KeyboardHoriFrag;->initHoriT9Skin(Lcom/lzx/iteam/bean/SkinHorizData;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 251
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mSkinCommon:Lcom/lzx/iteam/bean/SkinCommonData;

    invoke-virtual {p0, p2, v2}, Lcom/lzx/iteam/KeyboardHoriFrag;->initHoriT9Skin(Lcom/lzx/iteam/bean/SkinHorizData;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 252
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDisplayT9orWords:Lcom/lzx/iteam/widget/TextImageButton;

    const-string v3, "ABC\u25b2"

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/widget/TextImageButton;->setText(Ljava/lang/String;)V

    .line 253
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDigits_h:Lcom/lzx/iteam/widget/DialpadEditText;

    invoke-virtual {v2, v5}, Lcom/lzx/iteam/widget/DialpadEditText;->setVisibility(I)V

    .line 254
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDigits_h_words:Lcom/lzx/iteam/widget/DialpadEditText;

    invoke-virtual {v2, v6}, Lcom/lzx/iteam/widget/DialpadEditText;->setVisibility(I)V

    .line 255
    if-nez p4, :cond_1

    .line 256
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mQwertyBoard:Lcom/lzx/iteam/keyboard/SkbContainer;

    invoke-virtual {v2, v6}, Lcom/lzx/iteam/keyboard/SkbContainer;->setVisibility(I)V

    .line 257
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mT9Board:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 261
    :cond_1
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDigits_h:Lcom/lzx/iteam/widget/DialpadEditText;

    invoke-virtual {v2}, Lcom/lzx/iteam/widget/DialpadEditText;->requestFocus()Z

    .line 290
    :goto_1
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mKeyHori:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/lzx/iteam/KeyboardHoriFrag$2;

    invoke-direct {v3, p0}, Lcom/lzx/iteam/KeyboardHoriFrag$2;-><init>(Lcom/lzx/iteam/KeyboardHoriFrag;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 297
    return-void

    .line 248
    :cond_2
    iget-boolean v2, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mNeedReloadSkin:Z

    if-eqz v2, :cond_0

    .line 249
    iput-boolean v5, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mNeedReloadSkin:Z

    goto :goto_0

    .line 264
    :cond_3
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mQwertyBoard:Lcom/lzx/iteam/keyboard/SkbContainer;

    invoke-virtual {v2, v7}, Lcom/lzx/iteam/keyboard/SkbContainer;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 265
    if-nez v1, :cond_6

    .line 266
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mQwertyBoard:Lcom/lzx/iteam/keyboard/SkbContainer;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2, v7, v3}, Lcom/lzx/iteam/keyboard/SkbContainer;->setTag(ILjava/lang/Object;)V

    .line 269
    sget-object v2, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    .line 268
    invoke-static {v5, v2}, Landroid/text/method/QwertyKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/QwertyKeyListener;

    move-result-object v0

    .line 270
    .local v0, "qwertyKeyListener":Landroid/text/method/QwertyKeyListener;
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDigits_h_words:Lcom/lzx/iteam/widget/DialpadEditText;

    iget-object v3, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mActivity:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v3, v3, Lcom/lzx/iteam/CloudDialerActivity;->mTextWatcherQwerty:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/widget/DialpadEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 271
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDigits_h_words:Lcom/lzx/iteam/widget/DialpadEditText;

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/widget/DialpadEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 273
    invoke-direct {p0}, Lcom/lzx/iteam/KeyboardHoriFrag;->setupKeypadHorizentalAllwords()V

    .line 274
    invoke-virtual {p0, p2, p3}, Lcom/lzx/iteam/KeyboardHoriFrag;->initHoriQwertySkin(Lcom/lzx/iteam/bean/SkinHorizData;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 278
    .end local v0    # "qwertyKeyListener":Landroid/text/method/QwertyKeyListener;
    :cond_4
    :goto_2
    invoke-virtual {p0, p2, p3}, Lcom/lzx/iteam/KeyboardHoriFrag;->initHoriQwertySkin(Lcom/lzx/iteam/bean/SkinHorizData;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 279
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDisplayT9orWords:Lcom/lzx/iteam/widget/TextImageButton;

    const-string v3, "123\u25bc"

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/widget/TextImageButton;->setText(Ljava/lang/String;)V

    .line 280
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDigits_h_words:Lcom/lzx/iteam/widget/DialpadEditText;

    invoke-virtual {v2, v5}, Lcom/lzx/iteam/widget/DialpadEditText;->setVisibility(I)V

    .line 281
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDigits_h:Lcom/lzx/iteam/widget/DialpadEditText;

    invoke-virtual {v2, v6}, Lcom/lzx/iteam/widget/DialpadEditText;->setVisibility(I)V

    .line 282
    if-nez p4, :cond_5

    .line 283
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mT9Board:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 284
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mQwertyBoard:Lcom/lzx/iteam/keyboard/SkbContainer;

    invoke-virtual {v2, v5}, Lcom/lzx/iteam/keyboard/SkbContainer;->setVisibility(I)V

    .line 287
    :cond_5
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDigits_h_words:Lcom/lzx/iteam/widget/DialpadEditText;

    invoke-virtual {v2}, Lcom/lzx/iteam/widget/DialpadEditText;->requestFocus()Z

    goto :goto_1

    .line 275
    :cond_6
    iget-boolean v2, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mNeedReloadSkin:Z

    if-eqz v2, :cond_4

    .line 276
    iput-boolean v5, p0, Lcom/lzx/iteam/KeyboardHoriFrag;->mNeedReloadSkin:Z

    goto :goto_2
.end method
