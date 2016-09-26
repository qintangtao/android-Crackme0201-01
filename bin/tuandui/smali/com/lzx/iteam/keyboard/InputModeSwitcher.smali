.class public Lcom/lzx/iteam/keyboard/InputModeSwitcher;
.super Ljava/lang/Object;
.source "InputModeSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/keyboard/InputModeSwitcher$ToggleStates;
    }
.end annotation


# static fields
.field private static final MASK_CASE:I = 0xf00000

.field private static final MASK_CASE_LOWER:I = 0x100000

.field private static final MASK_CASE_UPPER:I = 0x200000

.field private static final MASK_LANGUAGE:I = 0xf000000

.field private static final MASK_LANGUAGE_CN:I = 0x1000000

.field private static final MASK_LANGUAGE_EN:I = 0x2000000

.field private static final MASK_SKB_LAYOUT:I = -0x10000000

.field private static final MASK_SKB_LAYOUT_PHONE:I = 0x50000000

.field private static final MASK_SKB_LAYOUT_QWERTY:I = 0x10000000

.field private static final MASK_SKB_LAYOUT_SMILEY:I = 0x40000000

.field private static final MASK_SKB_LAYOUT_SYMBOL1:I = 0x20000000

.field private static final MASK_SKB_LAYOUT_SYMBOL2:I = 0x30000000

.field public static final MAX_TOGGLE_STATES:I = 0x4

.field public static final MODE_HKB_CHINESE:I = 0x1000000

.field public static final MODE_HKB_ENGLISH:I = 0x2000000

.field public static final MODE_SKB_CHINESE:I = 0x11000000

.field public static final MODE_SKB_ENGLISH_LOWER:I = 0x12100000

.field public static final MODE_SKB_ENGLISH_UPPER:I = 0x12200000

.field public static final MODE_SKB_PHONE_NUM:I = 0x50000000

.field public static final MODE_SKB_PHONE_SYM:I = 0x50200000

.field public static final MODE_SKB_SMILEY:I = 0x41000000

.field public static final MODE_SKB_SYMBOL1_CN:I = 0x21000000

.field public static final MODE_SKB_SYMBOL1_EN:I = 0x22000000

.field public static final MODE_SKB_SYMBOL2_CN:I = 0x31000000

.field public static final MODE_SKB_SYMBOL2_EN:I = 0x32000000

.field public static final MODE_UNSET:I = 0x0

.field private static final USERDEF_KEYCODE_LANG_2:I = -0x2

.field private static final USERDEF_KEYCODE_MORE_SYM_5:I = -0x5

.field public static final USERDEF_KEYCODE_PHONE_SYM_4:I = -0x4

.field private static final USERDEF_KEYCODE_SHIFT_1:I = -0x1

.field private static final USERDEF_KEYCODE_SMILEY_6:I = -0x6

.field private static final USERDEF_KEYCODE_SYM_3:I = -0x3


# instance fields
.field private mEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field private mEnterKeyNormal:Z

.field private mImeService:Landroid/content/Context;

.field mInputIcon:I

.field private mInputMode:I

.field private mPreviousInputMode:I

.field private mRecentLauageInputMode:I

.field private mShortMessageField:Z

.field private mToggleRowCn:I

.field private mToggleRowEmailAddress:I

.field private mToggleRowEn:I

.field private mToggleRowUri:I

.field private mToggleStateCnCand:I

.field private mToggleStateDone:I

.field private mToggleStateEnLower:I

.field private mToggleStateEnSym1:I

.field private mToggleStateEnSym2:I

.field private mToggleStateEnUpper:I

.field private mToggleStateGo:I

.field private mToggleStateNext:I

.field private mToggleStatePhoneSym:I

.field private mToggleStateSearch:I

.field private mToggleStateSend:I

.field private mToggleStateSmiley:I

.field private mToggleStates:Lcom/lzx/iteam/keyboard/InputModeSwitcher$ToggleStates;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "imeService"    # Landroid/content/Context;

    .prologue
    const/high16 v2, 0x11000000

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    const/4 v1, 0x0

    iput v1, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputMode:I

    .line 224
    iput v2, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mPreviousInputMode:I

    .line 229
    iput v2, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mRecentLauageInputMode:I

    .line 239
    new-instance v1, Lcom/lzx/iteam/keyboard/InputModeSwitcher$ToggleStates;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/keyboard/InputModeSwitcher$ToggleStates;-><init>(Lcom/lzx/iteam/keyboard/InputModeSwitcher;)V

    iput-object v1, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mToggleStates:Lcom/lzx/iteam/keyboard/InputModeSwitcher$ToggleStates;

    .line 249
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mEnterKeyNormal:Z

    .line 254
    const v1, 0x7f020178

    iput v1, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputIcon:I

    .line 377
    iput-object p1, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mImeService:Landroid/content/Context;

    .line 378
    iget-object v1, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mImeService:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 381
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x7f080015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 380
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mToggleStateCnCand:I

    .line 383
    const v1, 0x7f080016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 382
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mToggleStateEnLower:I

    .line 385
    const v1, 0x7f080017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 384
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mToggleStateEnUpper:I

    .line 387
    const v1, 0x7f080018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 386
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mToggleStateEnSym1:I

    .line 389
    const v1, 0x7f080019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 388
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mToggleStateEnSym2:I

    .line 391
    const v1, 0x7f08001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 390
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mToggleStateSmiley:I

    .line 393
    const v1, 0x7f080024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 392
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mToggleStatePhoneSym:I

    .line 396
    const v1, 0x7f08001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 395
    iput v1, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mToggleStateGo:I

    .line 398
    const v1, 0x7f08001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 397
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mToggleStateSearch:I

    .line 400
    const v1, 0x7f08001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 399
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mToggleStateSend:I

    .line 402
    const v1, 0x7f08001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 401
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mToggleStateNext:I

    .line 404
    const v1, 0x7f08001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 403
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mToggleStateDone:I

    .line 406
    const v1, 0x7f080020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mToggleRowCn:I

    .line 407
    const v1, 0x7f080021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mToggleRowEn:I

    .line 408
    const v1, 0x7f080022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mToggleRowUri:I

    .line 410
    const v1, 0x7f080023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 409
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mToggleRowEmailAddress:I

    .line 411
    return-void
.end method

.method private prepareToggleStates(Z)V
    .locals 10
    .param p1, "needSkb"    # Z

    .prologue
    .line 733
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mEnterKeyNormal:Z

    .line 734
    if-nez p1, :cond_0

    .line 825
    :goto_0
    return-void

    .line 736
    :cond_0
    iget-object v8, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mToggleStates:Lcom/lzx/iteam/keyboard/InputModeSwitcher$ToggleStates;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/lzx/iteam/keyboard/InputModeSwitcher$ToggleStates;->mQwerty:Z

    .line 737
    iget-object v8, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mToggleStates:Lcom/lzx/iteam/keyboard/InputModeSwitcher$ToggleStates;

    const/4 v9, 0x0

    iput v9, v8, Lcom/lzx/iteam/keyboard/InputModeSwitcher$ToggleStates;->mKeyStatesNum:I

    .line 739
    iget-object v8, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mToggleStates:Lcom/lzx/iteam/keyboard/InputModeSwitcher$ToggleStates;

    iget-object v5, v8, Lcom/lzx/iteam/keyboard/InputModeSwitcher$ToggleStates;->mKeyStates:[I

    .line 740
    .local v5, "states":[I
    const/4 v6, 0x0

    .line 742
    .local v6, "statesNum":I
    iget v8, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputMode:I

    const/high16 v9, 0xf000000

    and-int v3, v8, v9

    .line 743
    .local v3, "language":I
    iget v8, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputMode:I

    const/high16 v9, -0x10000000

    and-int v4, v8, v9

    .line 744
    .local v4, "layout":I
    iget v8, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputMode:I

    const/high16 v9, 0xf00000

    and-int v1, v8, v9

    .line 745
    .local v1, "charcase":I
    iget-object v8, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v8, v8, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v7, v8, 0xff0

    .line 747
    .local v7, "variation":I
    const/high16 v8, 0x50000000

    if-eq v8, v4, :cond_b

    .line 748
    const/high16 v8, 0x1000000

    if-ne v8, v3, :cond_4

    .line 751
    const/high16 v8, 0x10000000

    if-ne v8, v4, :cond_1

    .line 752
    iget-object v8, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mToggleStates:Lcom/lzx/iteam/keyboard/InputModeSwitcher$ToggleStates;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/lzx/iteam/keyboard/InputModeSwitcher$ToggleStates;->mQwerty:Z

    .line 753
    iget-object v8, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mToggleStates:Lcom/lzx/iteam/keyboard/InputModeSwitcher$ToggleStates;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/lzx/iteam/keyboard/InputModeSwitcher$ToggleStates;->mQwertyUpperCase:Z

    .line 754
    iget-boolean v8, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mShortMessageField:Z

    if-eqz v8, :cond_1

    .line 755
    iget v8, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mToggleStateSmiley:I

    aput v8, v5, v6

    .line 756
    add-int/lit8 v6, v6, 0x1

    .line 779
    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mToggleStates:Lcom/lzx/iteam/keyboard/InputModeSwitcher$ToggleStates;

    const/4 v9, 0x0

    iput v9, v8, Lcom/lzx/iteam/keyboard/InputModeSwitcher$ToggleStates;->mRowIdToEnable:I

    .line 780
    const/16 v8, 0x20

    if-ne v7, v8, :cond_8

    .line 781
    iget-object v8, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mToggleStates:Lcom/lzx/iteam/keyboard/InputModeSwitcher$ToggleStates;

    iget v9, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mToggleRowEmailAddress:I

    iput v9, v8, Lcom/lzx/iteam/keyboard/InputModeSwitcher$ToggleStates;->mRowIdToEnable:I

    .line 797
    :cond_2
    :goto_2
    iget-object v8, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v8, v8, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 798
    const v9, 0x400000ff    # 2.0000608f

    .line 797
    and-int v0, v8, v9

    .line 800
    .local v0, "action":I
    const/4 v8, 0x2

    if-ne v0, v8, :cond_c

    .line 801
    iget v8, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mToggleStateGo:I

    aput v8, v5, v6

    .line 802
    add-int/lit8 v6, v6, 0x1

    .line 803
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mEnterKeyNormal:Z

    .line 824
    :cond_3
    :goto_3
    iget-object v8, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mToggleStates:Lcom/lzx/iteam/keyboard/InputModeSwitcher$ToggleStates;

    iput v6, v8, Lcom/lzx/iteam/keyboard/InputModeSwitcher$ToggleStates;->mKeyStatesNum:I

    goto :goto_0

    .line 759
    .end local v0    # "action":I
    :cond_4
    const/high16 v8, 0x2000000

    if-ne v8, v3, :cond_1

    .line 760
    const/high16 v8, 0x10000000

    if-ne v8, v4, :cond_6

    .line 761
    iget-object v8, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mToggleStates:Lcom/lzx/iteam/keyboard/InputModeSwitcher$ToggleStates;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/lzx/iteam/keyboard/InputModeSwitcher$ToggleStates;->mQwerty:Z

    .line 762
    iget-object v8, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mToggleStates:Lcom/lzx/iteam/keyboard/InputModeSwitcher$ToggleStates;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/lzx/iteam/keyboard/InputModeSwitcher$ToggleStates;->mQwertyUpperCase:Z

    .line 763
    iget v8, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mToggleStateEnLower:I

    aput v8, v5, v6

    .line 764
    const/high16 v8, 0x200000

    if-ne v8, v1, :cond_5

    .line 765
    iget-object v8, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mToggleStates:Lcom/lzx/iteam/keyboard/InputModeSwitcher$ToggleStates;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/lzx/iteam/keyboard/InputModeSwitcher$ToggleStates;->mQwertyUpperCase:Z

    .line 766
    iget v8, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mToggleStateEnUpper:I

    aput v8, v5, v6

    .line 768
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 769
    goto :goto_1

    :cond_6
    const/high16 v8, 0x20000000

    if-ne v8, v4, :cond_7

    .line 770
    iget v8, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mToggleStateEnSym1:I

    aput v8, v5, v6

    .line 771
    add-int/lit8 v6, v6, 0x1

    .line 772
    goto :goto_1

    :cond_7
    const/high16 v8, 0x30000000

    if-ne v8, v4, :cond_1

    .line 773
    iget v8, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mToggleStateEnSym2:I

    aput v8, v5, v6

    .line 774
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 782
    :cond_8
    const/16 v8, 0x10

    if-ne v7, v8, :cond_9

    .line 783
    iget-object v8, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mToggleStates:Lcom/lzx/iteam/keyboard/InputModeSwitcher$ToggleStates;

    iget v9, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mToggleRowUri:I

    iput v9, v8, Lcom/lzx/iteam/keyboard/InputModeSwitcher$ToggleStates;->mRowIdToEnable:I

    goto :goto_2

    .line 784
    :cond_9
    const/high16 v8, 0x1000000

    if-ne v8, v3, :cond_a

    .line 785
    iget-object v8, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mToggleStates:Lcom/lzx/iteam/keyboard/InputModeSwitcher$ToggleStates;

    iget v9, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mToggleRowCn:I

    iput v9, v8, Lcom/lzx/iteam/keyboard/InputModeSwitcher$ToggleStates;->mRowIdToEnable:I

    goto :goto_2

    .line 786
    :cond_a
    const/high16 v8, 0x2000000

    if-ne v8, v3, :cond_2

    .line 787
    iget-object v8, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mToggleStates:Lcom/lzx/iteam/keyboard/InputModeSwitcher$ToggleStates;

    iget v9, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mToggleRowEn:I

    iput v9, v8, Lcom/lzx/iteam/keyboard/InputModeSwitcher$ToggleStates;->mRowIdToEnable:I

    goto :goto_2

    .line 790
    :cond_b
    const/high16 v8, 0x200000

    if-ne v8, v1, :cond_2

    .line 791
    iget v8, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mToggleStatePhoneSym:I

    aput v8, v5, v6

    .line 792
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 804
    .restart local v0    # "action":I
    :cond_c
    const/4 v8, 0x3

    if-ne v0, v8, :cond_d

    .line 805
    iget v8, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mToggleStateSearch:I

    aput v8, v5, v6

    .line 806
    add-int/lit8 v6, v6, 0x1

    .line 807
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mEnterKeyNormal:Z

    goto :goto_3

    .line 808
    :cond_d
    const/4 v8, 0x4

    if-ne v0, v8, :cond_e

    .line 809
    iget v8, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mToggleStateSend:I

    aput v8, v5, v6

    .line 810
    add-int/lit8 v6, v6, 0x1

    .line 811
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mEnterKeyNormal:Z

    goto/16 :goto_3

    .line 812
    :cond_e
    const/4 v8, 0x5

    if-ne v0, v8, :cond_f

    .line 813
    iget-object v8, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v8, v8, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v9, 0xfff000

    and-int v2, v8, v9

    .line 814
    .local v2, "f":I
    const/high16 v8, 0x20000

    if-eq v2, v8, :cond_3

    .line 815
    iget v8, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mToggleStateNext:I

    aput v8, v5, v6

    .line 816
    add-int/lit8 v6, v6, 0x1

    .line 817
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mEnterKeyNormal:Z

    goto/16 :goto_3

    .line 819
    .end local v2    # "f":I
    :cond_f
    const/4 v8, 0x6

    if-ne v0, v8, :cond_3

    .line 820
    iget v8, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mToggleStateDone:I

    aput v8, v5, v6

    .line 821
    add-int/lit8 v6, v6, 0x1

    .line 822
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mEnterKeyNormal:Z

    goto/16 :goto_3
.end method

.method private saveInputMode(I)V
    .locals 4
    .param p1, "newInputMode"    # I

    .prologue
    const v3, 0x7f020178

    .line 712
    iget v1, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputMode:I

    iput v1, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mPreviousInputMode:I

    .line 713
    iput p1, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputMode:I

    .line 715
    iget v1, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputMode:I

    const/high16 v2, -0x10000000

    and-int v0, v1, v2

    .line 716
    .local v0, "skbLayout":I
    const/high16 v1, 0x10000000

    if-eq v1, v0, :cond_0

    if-nez v0, :cond_1

    .line 717
    :cond_0
    iget v1, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputMode:I

    iput v1, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mRecentLauageInputMode:I

    .line 720
    :cond_1
    iput v3, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputIcon:I

    .line 721
    invoke-virtual {p0}, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->isEnglishWithHkb()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 722
    const v1, 0x7f020177

    iput v1, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputIcon:I

    .line 727
    :cond_2
    :goto_0
    invoke-static {}, Lcom/lzx/iteam/keyboard/Environment;->getInstance()Lcom/lzx/iteam/keyboard/Environment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lzx/iteam/keyboard/Environment;->hasHardKeyboard()Z

    move-result v1

    if-nez v1, :cond_3

    .line 728
    const/4 v1, 0x0

    iput v1, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputIcon:I

    .line 730
    :cond_3
    return-void

    .line 723
    :cond_4
    invoke-virtual {p0}, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->isChineseTextWithHkb()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 724
    iput v3, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputIcon:I

    goto :goto_0
.end method


# virtual methods
.method public getInputMode()I
    .locals 1

    .prologue
    .line 414
    iget v0, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputMode:I

    return v0
.end method

.method public getSkbLayout()I
    .locals 1

    .prologue
    .line 426
    const v0, 0x7f050002

    return v0
.end method

.method public getToggleStates()Lcom/lzx/iteam/keyboard/InputModeSwitcher$ToggleStates;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mToggleStates:Lcom/lzx/iteam/keyboard/InputModeSwitcher$ToggleStates;

    return-object v0
.end method

.method public getTooggleStateForCnCand()I
    .locals 1

    .prologue
    .line 646
    iget v0, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mToggleStateCnCand:I

    return v0
.end method

.method public isChineseText()Z
    .locals 4

    .prologue
    .line 663
    iget v2, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputMode:I

    const/high16 v3, -0x10000000

    and-int v1, v2, v3

    .line 664
    .local v1, "skbLayout":I
    const/high16 v2, 0x10000000

    if-eq v2, v1, :cond_0

    if-nez v1, :cond_1

    .line 665
    :cond_0
    iget v2, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputMode:I

    const/high16 v3, 0xf000000

    and-int v0, v2, v3

    .line 666
    .local v0, "language":I
    const/high16 v2, 0x1000000

    if-ne v2, v0, :cond_1

    const/4 v2, 0x1

    .line 668
    .end local v0    # "language":I
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isChineseTextWithHkb()Z
    .locals 4

    .prologue
    .line 672
    iget v2, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputMode:I

    const/high16 v3, -0x10000000

    and-int v1, v2, v3

    .line 673
    .local v1, "skbLayout":I
    if-nez v1, :cond_0

    .line 674
    iget v2, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputMode:I

    const/high16 v3, 0xf000000

    and-int v0, v2, v3

    .line 675
    .local v0, "language":I
    const/high16 v2, 0x1000000

    if-ne v2, v0, :cond_0

    const/4 v2, 0x1

    .line 677
    .end local v0    # "language":I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isChineseTextWithSkb()Z
    .locals 4

    .prologue
    .line 681
    iget v2, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputMode:I

    const/high16 v3, -0x10000000

    and-int v1, v2, v3

    .line 682
    .local v1, "skbLayout":I
    const/high16 v2, 0x10000000

    if-ne v2, v1, :cond_0

    .line 683
    iget v2, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputMode:I

    const/high16 v3, 0xf000000

    and-int v0, v2, v3

    .line 684
    .local v0, "language":I
    const/high16 v2, 0x1000000

    if-ne v2, v0, :cond_0

    const/4 v2, 0x1

    .line 686
    .end local v0    # "language":I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isEnglishUpperCaseWithSkb()Z
    .locals 2

    .prologue
    .line 659
    const/high16 v0, 0x12200000

    iget v1, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputMode:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnglishWithHkb()Z
    .locals 2

    .prologue
    .line 650
    const/high16 v0, 0x2000000

    iget v1, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputMode:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnglishWithSkb()Z
    .locals 2

    .prologue
    .line 654
    const/high16 v0, 0x12100000

    iget v1, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputMode:I

    if-eq v0, v1, :cond_0

    .line 655
    const/high16 v0, 0x12200000

    iget v1, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputMode:I

    if-eq v0, v1, :cond_0

    .line 654
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEnterNoramlState()Z
    .locals 1

    .prologue
    .line 699
    iget-boolean v0, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mEnterKeyNormal:Z

    return v0
.end method

.method public isSymbolWithSkb()Z
    .locals 3

    .prologue
    .line 690
    iget v1, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputMode:I

    const/high16 v2, -0x10000000

    and-int v0, v1, v2

    .line 691
    .local v0, "skbLayout":I
    const/high16 v1, 0x20000000

    if-eq v1, v0, :cond_0

    .line 692
    const/high16 v1, 0x30000000

    if-ne v1, v0, :cond_1

    .line 693
    :cond_0
    const/4 v1, 0x1

    .line 695
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestBackToPreviousSkb()I
    .locals 4

    .prologue
    const/high16 v3, -0x10000000

    .line 634
    iget v2, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputMode:I

    and-int v1, v2, v3

    .line 635
    .local v1, "layout":I
    iget v2, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mPreviousInputMode:I

    and-int v0, v2, v3

    .line 636
    .local v0, "lastLayout":I
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 637
    iget v2, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mPreviousInputMode:I

    iput v2, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputMode:I

    .line 638
    iget v2, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputMode:I

    invoke-direct {p0, v2}, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->saveInputMode(I)V

    .line 639
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->prepareToggleStates(Z)V

    .line 640
    iget v2, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputIcon:I

    .line 642
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public requestInputWithHkb(Landroid/view/inputmethod/EditorInfo;)I
    .locals 6
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    const/4 v5, 0x0

    .line 528
    iput-boolean v5, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mShortMessageField:Z

    .line 529
    const/4 v0, 0x0

    .line 530
    .local v0, "english":Z
    const/high16 v1, 0x1000000

    .line 532
    .local v1, "newInputMode":I
    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v3, v3, 0xf

    packed-switch v3, :pswitch_data_0

    .line 552
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    .line 554
    const/high16 v1, 0x2000000

    .line 567
    :goto_1
    iput-object p1, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 568
    invoke-direct {p0, v1}, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->saveInputMode(I)V

    .line 569
    invoke-direct {p0, v5}, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->prepareToggleStates(Z)V

    .line 570
    iget v3, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputIcon:I

    return v3

    .line 536
    :pswitch_0
    const/4 v0, 0x1

    .line 537
    goto :goto_0

    .line 539
    :pswitch_1
    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v2, v3, 0xff0

    .line 540
    .local v2, "v":I
    const/16 v3, 0x20

    if-eq v2, v3, :cond_1

    .line 541
    const/16 v3, 0x80

    if-eq v2, v3, :cond_1

    .line 542
    const/16 v3, 0x90

    if-eq v2, v3, :cond_1

    .line 543
    const/16 v3, 0x10

    if-ne v2, v3, :cond_2

    .line 544
    :cond_1
    const/4 v0, 0x1

    .line 545
    goto :goto_0

    :cond_2
    const/16 v3, 0x40

    if-ne v2, v3, :cond_0

    .line 546
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mShortMessageField:Z

    goto :goto_0

    .line 561
    .end local v2    # "v":I
    :cond_3
    iget v3, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mRecentLauageInputMode:I

    const/high16 v4, 0xf000000

    and-int/2addr v3, v4

    const/high16 v4, 0x1000000

    if-ne v3, v4, :cond_4

    .line 562
    const/high16 v1, 0x1000000

    .line 563
    goto :goto_1

    .line 564
    :cond_4
    const/high16 v1, 0x2000000

    goto :goto_1

    .line 532
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public requestInputWithSkb(Landroid/view/inputmethod/EditorInfo;)I
    .locals 8
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    const/high16 v7, 0xf000000

    const/high16 v6, 0x1000000

    const/4 v5, 0x1

    const/high16 v4, -0x10000000

    .line 575
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mShortMessageField:Z

    .line 577
    const/high16 v0, 0x11000000

    .line 579
    .local v0, "newInputMode":I
    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v3, v3, 0xf

    packed-switch v3, :pswitch_data_0

    .line 614
    iget v3, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputMode:I

    and-int v1, v3, v4

    .line 615
    .local v1, "skbLayout":I
    iget v0, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputMode:I

    .line 616
    if-nez v1, :cond_0

    .line 617
    iget v3, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputMode:I

    and-int/2addr v3, v7

    if-ne v3, v6, :cond_5

    .line 618
    const/high16 v0, 0x11000000

    .line 626
    .end local v1    # "skbLayout":I
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 627
    invoke-direct {p0, v0}, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->saveInputMode(I)V

    .line 628
    invoke-direct {p0, v5}, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->prepareToggleStates(Z)V

    .line 629
    iget v3, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputIcon:I

    return v3

    .line 582
    :pswitch_0
    const/high16 v0, 0x22000000

    .line 583
    goto :goto_0

    .line 585
    :pswitch_1
    const/high16 v0, 0x50000000

    .line 586
    goto :goto_0

    .line 588
    :pswitch_2
    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v2, v3, 0xff0

    .line 589
    .local v2, "v":I
    const/16 v3, 0x20

    if-eq v2, v3, :cond_1

    .line 590
    const/16 v3, 0x80

    if-eq v2, v3, :cond_1

    .line 591
    const/16 v3, 0x90

    if-eq v2, v3, :cond_1

    .line 592
    const/16 v3, 0x10

    if-ne v2, v3, :cond_2

    .line 594
    :cond_1
    const/high16 v0, 0x12100000

    .line 595
    goto :goto_0

    .line 596
    :cond_2
    const/16 v3, 0x40

    if-ne v2, v3, :cond_3

    .line 597
    iput-boolean v5, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mShortMessageField:Z

    .line 601
    :cond_3
    iget v3, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputMode:I

    and-int v1, v3, v4

    .line 602
    .restart local v1    # "skbLayout":I
    iget v0, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputMode:I

    .line 603
    if-nez v1, :cond_0

    .line 604
    iget v3, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputMode:I

    and-int/2addr v3, v7

    if-ne v3, v6, :cond_4

    .line 605
    const/high16 v0, 0x11000000

    .line 606
    goto :goto_0

    .line 607
    :cond_4
    const/high16 v0, 0x12100000

    .line 611
    goto :goto_0

    .line 620
    .end local v2    # "v":I
    :cond_5
    const/high16 v0, 0x12100000

    goto :goto_0

    .line 579
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public switchLanguageWithHkb()I
    .locals 3

    .prologue
    .line 441
    const/high16 v0, 0x1000000

    .line 442
    .local v0, "newInputMode":I
    const v1, 0x7f020178

    iput v1, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputIcon:I

    .line 444
    const/high16 v1, 0x1000000

    iget v2, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputMode:I

    if-ne v1, v2, :cond_0

    .line 445
    const/high16 v0, 0x2000000

    .line 446
    const v1, 0x7f020177

    iput v1, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputIcon:I

    .line 449
    :cond_0
    invoke-direct {p0, v0}, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->saveInputMode(I)V

    .line 450
    iget v1, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputIcon:I

    return v1
.end method

.method public switchModeForUserKey(I)I
    .locals 8
    .param p1, "userKey"    # I

    .prologue
    const/high16 v7, 0x22000000

    const/high16 v6, 0x21000000

    const/high16 v5, 0x12200000

    const/high16 v4, 0x12100000

    const/high16 v3, 0x11000000

    .line 455
    const/4 v0, 0x0

    .line 457
    .local v0, "newInputMode":I
    const/4 v2, -0x2

    if-ne v2, p1, :cond_9

    .line 458
    iget v2, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputMode:I

    if-ne v3, v2, :cond_2

    .line 459
    const/high16 v0, 0x12100000

    .line 517
    :cond_0
    :goto_0
    iget v2, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputMode:I

    if-eq v0, v2, :cond_1

    if-nez v0, :cond_19

    .line 518
    :cond_1
    iget v2, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputIcon:I

    .line 523
    :goto_1
    return v2

    .line 460
    :cond_2
    iget v2, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputMode:I

    if-eq v4, v2, :cond_3

    .line 461
    iget v2, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputMode:I

    if-ne v5, v2, :cond_4

    .line 462
    :cond_3
    const/high16 v0, 0x11000000

    .line 463
    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputMode:I

    if-ne v6, v2, :cond_5

    .line 464
    const/high16 v0, 0x22000000

    .line 465
    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputMode:I

    if-ne v7, v2, :cond_6

    .line 466
    const/high16 v0, 0x21000000

    .line 467
    goto :goto_0

    :cond_6
    const/high16 v2, 0x31000000

    iget v3, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputMode:I

    if-ne v2, v3, :cond_7

    .line 468
    const/high16 v0, 0x32000000

    .line 469
    goto :goto_0

    :cond_7
    const/high16 v2, 0x32000000

    iget v3, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputMode:I

    if-ne v2, v3, :cond_8

    .line 470
    const/high16 v0, 0x31000000

    .line 471
    goto :goto_0

    :cond_8
    const/high16 v2, 0x41000000    # 8.0f

    iget v3, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputMode:I

    if-ne v2, v3, :cond_0

    .line 472
    const/high16 v0, 0x11000000

    .line 474
    goto :goto_0

    :cond_9
    const/4 v2, -0x3

    if-ne v2, p1, :cond_11

    .line 475
    iget v2, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputMode:I

    if-ne v3, v2, :cond_a

    .line 476
    const/high16 v0, 0x21000000

    .line 477
    goto :goto_0

    :cond_a
    iget v2, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputMode:I

    if-eq v5, v2, :cond_b

    .line 478
    iget v2, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputMode:I

    if-ne v4, v2, :cond_c

    .line 479
    :cond_b
    const/high16 v0, 0x22000000

    .line 480
    goto :goto_0

    :cond_c
    iget v2, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputMode:I

    if-eq v7, v2, :cond_d

    .line 481
    const/high16 v2, 0x32000000

    iget v3, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputMode:I

    if-ne v2, v3, :cond_e

    .line 482
    :cond_d
    const/high16 v0, 0x12100000

    .line 483
    goto :goto_0

    :cond_e
    iget v2, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputMode:I

    if-eq v6, v2, :cond_f

    .line 484
    const/high16 v2, 0x31000000

    iget v3, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputMode:I

    if-ne v2, v3, :cond_10

    .line 485
    :cond_f
    const/high16 v0, 0x11000000

    .line 486
    goto :goto_0

    :cond_10
    const/high16 v2, 0x41000000    # 8.0f

    iget v3, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputMode:I

    if-ne v2, v3, :cond_0

    .line 487
    const/high16 v0, 0x21000000

    .line 489
    goto :goto_0

    :cond_11
    const/4 v2, -0x1

    if-ne v2, p1, :cond_13

    .line 490
    iget v2, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputMode:I

    if-ne v4, v2, :cond_12

    .line 491
    const/high16 v0, 0x12200000

    .line 492
    goto :goto_0

    :cond_12
    iget v2, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputMode:I

    if-ne v5, v2, :cond_0

    .line 493
    const/high16 v0, 0x12100000

    .line 495
    goto/16 :goto_0

    :cond_13
    const/4 v2, -0x5

    if-ne v2, p1, :cond_15

    .line 496
    const/high16 v2, -0x10000000

    iget v3, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputMode:I

    and-int v1, v2, v3

    .line 497
    .local v1, "sym":I
    const/high16 v2, 0x20000000

    if-ne v2, v1, :cond_14

    .line 498
    const/high16 v1, 0x30000000

    .line 502
    :goto_2
    iget v2, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputMode:I

    const v3, 0xfffffff

    and-int/2addr v2, v3

    or-int v0, v2, v1

    .line 503
    goto/16 :goto_0

    .line 500
    :cond_14
    const/high16 v1, 0x20000000

    goto :goto_2

    .line 503
    .end local v1    # "sym":I
    :cond_15
    const/4 v2, -0x6

    if-ne v2, p1, :cond_17

    .line 504
    iget v2, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputMode:I

    if-ne v3, v2, :cond_16

    .line 505
    const/high16 v0, 0x41000000    # 8.0f

    .line 506
    goto/16 :goto_0

    .line 507
    :cond_16
    const/high16 v0, 0x11000000

    .line 509
    goto/16 :goto_0

    :cond_17
    const/4 v2, -0x4

    if-ne v2, p1, :cond_0

    .line 510
    const/high16 v2, 0x50000000

    iget v3, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputMode:I

    if-ne v2, v3, :cond_18

    .line 511
    const/high16 v0, 0x50200000

    .line 512
    goto/16 :goto_0

    .line 513
    :cond_18
    const/high16 v0, 0x50000000

    goto/16 :goto_0

    .line 521
    :cond_19
    invoke-direct {p0, v0}, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->saveInputMode(I)V

    .line 522
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->prepareToggleStates(Z)V

    .line 523
    iget v2, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->mInputIcon:I

    goto/16 :goto_1
.end method

.method public tryHandleLongPressSwitch(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 703
    const/4 v0, -0x2

    if-eq v0, p1, :cond_0

    .line 704
    const/4 v0, -0x4

    if-ne v0, p1, :cond_1

    .line 706
    :cond_0
    const/4 v0, 0x1

    .line 708
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
