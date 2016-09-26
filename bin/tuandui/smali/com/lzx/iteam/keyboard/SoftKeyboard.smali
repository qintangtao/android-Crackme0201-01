.class public Lcom/lzx/iteam/keyboard/SoftKeyboard;
.super Ljava/lang/Object;
.source "SoftKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;
    }
.end annotation


# instance fields
.field private mBalloonBg:Landroid/graphics/drawable/Drawable;

.field private mCacheFlag:Z

.field private mCacheId:I

.field private mEnabledRowId:I

.field private mIsQwerty:Z

.field private mIsQwertyUpperCase:Z

.field private mKeyRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyXMargin:F

.field private mKeyYMargin:F

.field private mNewlyLoadedFlag:Z

.field private mPopupBg:Landroid/graphics/drawable/Drawable;

.field public mSkbBg:Landroid/graphics/drawable/Drawable;

.field private mSkbCoreHeight:I

.field private mSkbCoreWidth:I

.field private mSkbTemplate:Lcom/lzx/iteam/keyboard/SkbTemplate;

.field private mSkbXmlId:I

.field private mStickyFlag:Z

.field private mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(ILcom/lzx/iteam/keyboard/SkbTemplate;II)V
    .locals 2
    .param p1, "skbXmlId"    # I
    .param p2, "skbTemplate"    # Lcom/lzx/iteam/keyboard/SkbTemplate;
    .param p3, "skbWidth"    # I
    .param p4, "skbHeight"    # I

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mNewlyLoadedFlag:Z

    .line 108
    iput v1, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mKeyXMargin:F

    .line 111
    iput v1, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mKeyYMargin:F

    .line 113
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mTmpRect:Landroid/graphics/Rect;

    .line 117
    iput p1, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mSkbXmlId:I

    .line 118
    iput-object p2, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mSkbTemplate:Lcom/lzx/iteam/keyboard/SkbTemplate;

    .line 119
    iput p3, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mSkbCoreWidth:I

    .line 120
    iput p4, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mSkbCoreHeight:I

    .line 121
    return-void
.end method

.method private enableRow(I)Z
    .locals 4
    .param p1, "rowId"    # I

    .prologue
    .line 462
    const/4 v3, -0x1

    if-ne v3, p1, :cond_1

    const/4 v0, 0x0

    .line 475
    :cond_0
    :goto_0
    return v0

    .line 464
    :cond_1
    const/4 v0, 0x0

    .line 465
    .local v0, "enabled":Z
    iget-object v3, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 466
    .local v2, "rowNum":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "row":I
    :goto_1
    if-gez v1, :cond_2

    .line 472
    :goto_2
    if-eqz v0, :cond_0

    .line 473
    iput p1, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mEnabledRowId:I

    goto :goto_0

    .line 467
    :cond_2
    iget-object v3, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;

    iget v3, v3, Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;->mRowId:I

    if-ne v3, p1, :cond_3

    .line 468
    const/4 v0, 0x1

    .line 469
    goto :goto_2

    .line 466
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method private getPadding()Landroid/graphics/Rect;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 447
    iget-object v1, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 448
    invoke-virtual {p0}, Lcom/lzx/iteam/keyboard/SoftKeyboard;->getSkbBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 449
    .local v0, "skbBg":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mTmpRect:Landroid/graphics/Rect;

    .line 451
    :goto_0
    return-object v1

    .line 450
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 451
    iget-object v1, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mTmpRect:Landroid/graphics/Rect;

    goto :goto_0
.end method


# virtual methods
.method public addSoftKey(Lcom/lzx/iteam/keyboard/SoftKey;)Z
    .locals 5
    .param p1, "softKey"    # Lcom/lzx/iteam/keyboard/SoftKey;

    .prologue
    const/4 v2, 0x0

    .line 187
    iget-object v3, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 200
    :cond_0
    :goto_0
    return v2

    .line 188
    :cond_1
    iget-object v3, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mKeyRows:Ljava/util/List;

    iget-object v4, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;

    .line 189
    .local v0, "keyRow":Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;
    if-eqz v0, :cond_0

    .line 190
    iget-object v1, v0, Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;->mSoftKeys:Ljava/util/List;

    .line 192
    .local v1, "softKeys":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/keyboard/SoftKey;>;"
    iget v2, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mSkbCoreWidth:I

    iget v3, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mSkbCoreHeight:I

    invoke-virtual {p1, v2, v3}, Lcom/lzx/iteam/keyboard/SoftKey;->setSkbCoreSize(II)V

    .line 193
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    iget v2, p1, Lcom/lzx/iteam/keyboard/SoftKey;->mTopF:F

    iget v3, v0, Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;->mTopF:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 195
    iget v2, p1, Lcom/lzx/iteam/keyboard/SoftKey;->mTopF:F

    iput v2, v0, Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;->mTopF:F

    .line 197
    :cond_2
    iget v2, p1, Lcom/lzx/iteam/keyboard/SoftKey;->mBottomF:F

    iget v3, v0, Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;->mBottomF:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 198
    iget v2, p1, Lcom/lzx/iteam/keyboard/SoftKey;->mBottomF:F

    iput v2, v0, Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;->mBottomF:F

    .line 200
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public beginNewRow(IF)V
    .locals 2
    .param p1, "rowId"    # I
    .param p2, "yStartingPos"    # F

    .prologue
    .line 177
    iget-object v1, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mKeyRows:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mKeyRows:Ljava/util/List;

    .line 178
    :cond_0
    new-instance v0, Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;-><init>(Lcom/lzx/iteam/keyboard/SoftKeyboard;)V

    .line 179
    .local v0, "keyRow":Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;
    iput p1, v0, Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;->mRowId:I

    .line 180
    iput p2, v0, Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;->mTopF:F

    .line 181
    iput p2, v0, Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;->mBottomF:F

    .line 182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;->mSoftKeys:Ljava/util/List;

    .line 183
    iget-object v1, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    return-void
.end method

.method public disableToggleState(IZ)V
    .locals 8
    .param p1, "toggleStateId"    # I
    .param p2, "resetIfNotFound"    # Z

    .prologue
    .line 389
    iget-object v7, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    .line 390
    .local v4, "rowNum":I
    const/4 v3, 0x0

    .local v3, "row":I
    :goto_0
    if-lt v3, v4, :cond_0

    .line 402
    return-void

    .line 391
    :cond_0
    iget-object v7, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;

    .line 392
    .local v2, "keyRow":Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;
    iget-object v6, v2, Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;->mSoftKeys:Ljava/util/List;

    .line 393
    .local v6, "softKeys":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/keyboard/SoftKey;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    .line 394
    .local v1, "keyNum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v1, :cond_1

    .line 390
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 395
    :cond_1
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lzx/iteam/keyboard/SoftKey;

    .line 396
    .local v5, "sKey":Lcom/lzx/iteam/keyboard/SoftKey;
    instance-of v7, v5, Lcom/lzx/iteam/keyboard/SoftKeyToggle;

    if-eqz v7, :cond_2

    .line 397
    check-cast v5, Lcom/lzx/iteam/keyboard/SoftKeyToggle;

    .end local v5    # "sKey":Lcom/lzx/iteam/keyboard/SoftKey;
    invoke-virtual {v5, p1, p2}, Lcom/lzx/iteam/keyboard/SoftKeyToggle;->disableToggleState(IZ)Z

    .line 394
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public enableToggleState(IZ)V
    .locals 8
    .param p1, "toggleStateId"    # I
    .param p2, "resetIfNotFound"    # Z

    .prologue
    .line 373
    iget-object v7, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    .line 374
    .local v4, "rowNum":I
    const/4 v3, 0x0

    .local v3, "row":I
    :goto_0
    if-lt v3, v4, :cond_0

    .line 386
    return-void

    .line 375
    :cond_0
    iget-object v7, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;

    .line 376
    .local v2, "keyRow":Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;
    iget-object v6, v2, Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;->mSoftKeys:Ljava/util/List;

    .line 377
    .local v6, "softKeys":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/keyboard/SoftKey;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    .line 378
    .local v1, "keyNum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v1, :cond_1

    .line 374
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 379
    :cond_1
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lzx/iteam/keyboard/SoftKey;

    .line 380
    .local v5, "sKey":Lcom/lzx/iteam/keyboard/SoftKey;
    instance-of v7, v5, Lcom/lzx/iteam/keyboard/SoftKeyToggle;

    if-eqz v7, :cond_2

    .line 381
    check-cast v5, Lcom/lzx/iteam/keyboard/SoftKeyToggle;

    .end local v5    # "sKey":Lcom/lzx/iteam/keyboard/SoftKey;
    invoke-virtual {v5, p1, p2}, Lcom/lzx/iteam/keyboard/SoftKeyToggle;->enableToggleState(IZ)Z

    .line 378
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public enableToggleStates(Lcom/lzx/iteam/keyboard/InputModeSwitcher$ToggleStates;)V
    .locals 17
    .param p1, "toggleStates"    # Lcom/lzx/iteam/keyboard/InputModeSwitcher$ToggleStates;

    .prologue
    .line 405
    if-nez p1, :cond_0

    .line 444
    :goto_0
    return-void

    .line 407
    :cond_0
    move-object/from16 v0, p1

    iget v14, v0, Lcom/lzx/iteam/keyboard/InputModeSwitcher$ToggleStates;->mRowIdToEnable:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/lzx/iteam/keyboard/SoftKeyboard;->enableRow(I)Z

    .line 409
    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/lzx/iteam/keyboard/InputModeSwitcher$ToggleStates;->mQwerty:Z

    .line 410
    .local v1, "isQwerty":Z
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/lzx/iteam/keyboard/InputModeSwitcher$ToggleStates;->mQwertyUpperCase:Z

    .line 411
    .local v2, "isQwertyUpperCase":Z
    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mIsQwerty:Z

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mIsQwertyUpperCase:Z

    if-eq v14, v2, :cond_1

    const/4 v6, 0x1

    .line 412
    .local v6, "needUpdateQwerty":Z
    :goto_1
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/lzx/iteam/keyboard/InputModeSwitcher$ToggleStates;->mKeyStates:[I

    .line 413
    .local v12, "states":[I
    move-object/from16 v0, p1

    iget v13, v0, Lcom/lzx/iteam/keyboard/InputModeSwitcher$ToggleStates;->mKeyStatesNum:I

    .line 415
    .local v13, "statesNum":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v8

    .line 416
    .local v8, "rowNum":I
    const/4 v7, 0x0

    .local v7, "row":I
    :goto_2
    if-lt v7, v8, :cond_2

    .line 443
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mIsQwertyUpperCase:Z

    goto :goto_0

    .line 411
    .end local v6    # "needUpdateQwerty":Z
    .end local v7    # "row":I
    .end local v8    # "rowNum":I
    .end local v12    # "states":[I
    .end local v13    # "statesNum":I
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 417
    .restart local v6    # "needUpdateQwerty":Z
    .restart local v7    # "row":I
    .restart local v8    # "rowNum":I
    .restart local v12    # "states":[I
    .restart local v13    # "statesNum":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;

    .line 418
    .local v5, "keyRow":Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;
    const/4 v14, -0x1

    iget v15, v5, Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;->mRowId:I

    if-eq v14, v15, :cond_4

    .line 419
    iget v14, v5, Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;->mRowId:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mEnabledRowId:I

    if-eq v14, v15, :cond_4

    .line 416
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 422
    :cond_4
    iget-object v10, v5, Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;->mSoftKeys:Ljava/util/List;

    .line 423
    .local v10, "softKeys":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/keyboard/SoftKey;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    .line 424
    .local v3, "keyNum":I
    const/4 v4, 0x0

    .local v4, "keyPos":I
    :goto_3
    if-ge v4, v3, :cond_3

    .line 425
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lzx/iteam/keyboard/SoftKey;

    .line 426
    .local v9, "sKey":Lcom/lzx/iteam/keyboard/SoftKey;
    instance-of v14, v9, Lcom/lzx/iteam/keyboard/SoftKeyToggle;

    if-eqz v14, :cond_5

    .line 427
    const/4 v11, 0x0

    .local v11, "statePos":I
    :goto_4
    if-lt v11, v13, :cond_7

    .line 431
    if-nez v13, :cond_5

    move-object v14, v9

    .line 432
    check-cast v14, Lcom/lzx/iteam/keyboard/SoftKeyToggle;

    invoke-virtual {v14}, Lcom/lzx/iteam/keyboard/SoftKeyToggle;->disableAllToggleStates()Z

    .line 435
    .end local v11    # "statePos":I
    :cond_5
    if-eqz v6, :cond_6

    .line 436
    iget v14, v9, Lcom/lzx/iteam/keyboard/SoftKey;->mKeyCode:I

    const/16 v15, 0x1d

    if-lt v14, v15, :cond_6

    .line 437
    iget v14, v9, Lcom/lzx/iteam/keyboard/SoftKey;->mKeyCode:I

    const/16 v15, 0x36

    if-gt v14, v15, :cond_6

    .line 438
    invoke-virtual {v9, v2}, Lcom/lzx/iteam/keyboard/SoftKey;->changeCase(Z)V

    .line 424
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .restart local v11    # "statePos":I
    :cond_7
    move-object v14, v9

    .line 428
    check-cast v14, Lcom/lzx/iteam/keyboard/SoftKeyToggle;

    .line 429
    aget v16, v12, v11

    if-nez v11, :cond_8

    const/4 v15, 0x1

    .line 428
    :goto_5
    move/from16 v0, v16

    invoke-virtual {v14, v0, v15}, Lcom/lzx/iteam/keyboard/SoftKeyToggle;->enableToggleState(IZ)Z

    .line 427
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 429
    :cond_8
    const/4 v15, 0x0

    goto :goto_5
.end method

.method public getBalloonBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mBalloonBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mBalloonBg:Landroid/graphics/drawable/Drawable;

    .line 264
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mSkbTemplate:Lcom/lzx/iteam/keyboard/SkbTemplate;

    invoke-virtual {v0}, Lcom/lzx/iteam/keyboard/SkbTemplate;->getBalloonBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getCacheFlag()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mCacheFlag:Z

    return v0
.end method

.method public getCacheId()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mCacheId:I

    return v0
.end method

.method public getKey(II)Lcom/lzx/iteam/keyboard/SoftKey;
    .locals 2
    .param p1, "row"    # I
    .param p2, "location"    # I

    .prologue
    .line 291
    iget-object v1, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mKeyRows:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;

    iget-object v0, v1, Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;->mSoftKeys:Ljava/util/List;

    .line 293
    .local v0, "softKeys":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/keyboard/SoftKey;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p2, :cond_0

    .line 294
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/keyboard/SoftKey;

    .line 297
    .end local v0    # "softKeys":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/keyboard/SoftKey;>;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getKeyRowForDisplay(I)Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;
    .locals 3
    .param p1, "row"    # I

    .prologue
    .line 280
    iget-object v1, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mKeyRows:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_1

    .line 281
    iget-object v1, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;

    .line 282
    .local v0, "keyRow":Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;
    const/4 v1, -0x1

    iget v2, v0, Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;->mRowId:I

    if-eq v1, v2, :cond_0

    .line 283
    iget v1, v0, Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;->mRowId:I

    iget v2, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mEnabledRowId:I

    if-ne v1, v2, :cond_1

    .line 287
    .end local v0    # "keyRow":Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKeyXMargin()I
    .locals 3

    .prologue
    .line 248
    invoke-static {}, Lcom/lzx/iteam/keyboard/Environment;->getInstance()Lcom/lzx/iteam/keyboard/Environment;

    move-result-object v0

    .line 249
    .local v0, "env":Lcom/lzx/iteam/keyboard/Environment;
    iget v1, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mKeyXMargin:F

    iget v2, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mSkbCoreWidth:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {v0}, Lcom/lzx/iteam/keyboard/Environment;->getKeyXMarginFactor()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public getKeyYMargin()I
    .locals 3

    .prologue
    .line 253
    invoke-static {}, Lcom/lzx/iteam/keyboard/Environment;->getInstance()Lcom/lzx/iteam/keyboard/Environment;

    move-result-object v0

    .line 254
    .local v0, "env":Lcom/lzx/iteam/keyboard/Environment;
    iget v1, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mKeyYMargin:F

    iget v2, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mSkbCoreHeight:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {v0}, Lcom/lzx/iteam/keyboard/Environment;->getKeyYMarginFactor()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public getNewlyLoadedFlag()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mNewlyLoadedFlag:Z

    return v0
.end method

.method public getPopupBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mPopupBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mPopupBg:Landroid/graphics/drawable/Drawable;

    .line 269
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mSkbTemplate:Lcom/lzx/iteam/keyboard/SkbTemplate;

    invoke-virtual {v0}, Lcom/lzx/iteam/keyboard/SkbTemplate;->getPopupBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getRowNum()I
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mKeyRows:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 276
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSkbBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mSkbBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mSkbBg:Landroid/graphics/drawable/Drawable;

    .line 259
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mSkbTemplate:Lcom/lzx/iteam/keyboard/SkbTemplate;

    invoke-virtual {v0}, Lcom/lzx/iteam/keyboard/SkbTemplate;->getSkbBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getSkbCoreHeight()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mSkbCoreHeight:I

    return v0
.end method

.method public getSkbCoreWidth()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mSkbCoreWidth:I

    return v0
.end method

.method public getSkbTotalHeight()I
    .locals 3

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/lzx/iteam/keyboard/SoftKeyboard;->getPadding()Landroid/graphics/Rect;

    move-result-object v0

    .line 244
    .local v0, "padding":Landroid/graphics/Rect;
    iget v1, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mSkbCoreHeight:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getSkbTotalWidth()I
    .locals 3

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/lzx/iteam/keyboard/SoftKeyboard;->getPadding()Landroid/graphics/Rect;

    move-result-object v0

    .line 239
    .local v0, "padding":Landroid/graphics/Rect;
    iget v1, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mSkbCoreWidth:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getSkbXmlId()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mSkbXmlId:I

    return v0
.end method

.method public getStickyFlag()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mStickyFlag:Z

    return v0
.end method

.method public mapToKey(II)Lcom/lzx/iteam/keyboard/SoftKey;
    .locals 15
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 301
    iget-object v13, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mKeyRows:Ljava/util/List;

    if-nez v13, :cond_1

    .line 302
    const/4 v11, 0x0

    .line 347
    :cond_0
    :goto_0
    return-object v11

    .line 306
    :cond_1
    iget-object v13, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v10

    .line 307
    .local v10, "rowNum":I
    const/4 v9, 0x0

    .local v9, "row":I
    :goto_1
    if-lt v9, v10, :cond_2

    .line 326
    const/4 v8, 0x0

    .line 327
    .local v8, "nearestKey":Lcom/lzx/iteam/keyboard/SoftKey;
    const v7, 0x7f7fffff    # Float.MAX_VALUE

    .line 328
    .local v7, "nearestDis":F
    const/4 v9, 0x0

    :goto_2
    if-lt v9, v10, :cond_7

    move-object v11, v8

    .line 347
    goto :goto_0

    .line 308
    .end local v7    # "nearestDis":F
    .end local v8    # "nearestKey":Lcom/lzx/iteam/keyboard/SoftKey;
    :cond_2
    iget-object v13, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;

    .line 309
    .local v6, "keyRow":Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;
    const/4 v13, -0x1

    iget v14, v6, Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;->mRowId:I

    if-eq v13, v14, :cond_4

    .line 310
    iget v13, v6, Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;->mRowId:I

    iget v14, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mEnabledRowId:I

    if-eq v13, v14, :cond_4

    .line 307
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 311
    :cond_4
    iget v13, v6, Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;->mTop:I

    move/from16 v0, p2

    if-le v13, v0, :cond_5

    iget v13, v6, Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;->mBottom:I

    move/from16 v0, p2

    if-le v13, v0, :cond_3

    .line 313
    :cond_5
    iget-object v12, v6, Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;->mSoftKeys:Ljava/util/List;

    .line 314
    .local v12, "softKeys":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/keyboard/SoftKey;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v5

    .line 315
    .local v5, "keyNum":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v5, :cond_3

    .line 316
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/lzx/iteam/keyboard/SoftKey;

    .line 317
    .local v11, "sKey":Lcom/lzx/iteam/keyboard/SoftKey;
    iget v13, v11, Lcom/lzx/iteam/keyboard/SoftKey;->mLeft:I

    move/from16 v0, p1

    if-gt v13, v0, :cond_6

    iget v13, v11, Lcom/lzx/iteam/keyboard/SoftKey;->mTop:I

    move/from16 v0, p2

    if-gt v13, v0, :cond_6

    iget v13, v11, Lcom/lzx/iteam/keyboard/SoftKey;->mRight:I

    move/from16 v0, p1

    if-le v13, v0, :cond_6

    .line 318
    iget v13, v11, Lcom/lzx/iteam/keyboard/SoftKey;->mBottom:I

    move/from16 v0, p2

    if-gt v13, v0, :cond_0

    .line 315
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 329
    .end local v4    # "i":I
    .end local v5    # "keyNum":I
    .end local v6    # "keyRow":Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;
    .end local v11    # "sKey":Lcom/lzx/iteam/keyboard/SoftKey;
    .end local v12    # "softKeys":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/keyboard/SoftKey;>;"
    .restart local v7    # "nearestDis":F
    .restart local v8    # "nearestKey":Lcom/lzx/iteam/keyboard/SoftKey;
    :cond_7
    iget-object v13, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;

    .line 330
    .restart local v6    # "keyRow":Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;
    const/4 v13, -0x1

    iget v14, v6, Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;->mRowId:I

    if-eq v13, v14, :cond_9

    .line 331
    iget v13, v6, Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;->mRowId:I

    iget v14, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mEnabledRowId:I

    if-eq v13, v14, :cond_9

    .line 328
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 332
    :cond_9
    iget v13, v6, Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;->mTop:I

    move/from16 v0, p2

    if-le v13, v0, :cond_a

    iget v13, v6, Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;->mBottom:I

    move/from16 v0, p2

    if-le v13, v0, :cond_8

    .line 334
    :cond_a
    iget-object v12, v6, Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;->mSoftKeys:Ljava/util/List;

    .line 335
    .restart local v12    # "softKeys":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/keyboard/SoftKey;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v5

    .line 336
    .restart local v5    # "keyNum":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4
    if-ge v4, v5, :cond_8

    .line 337
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/lzx/iteam/keyboard/SoftKey;

    .line 338
    .restart local v11    # "sKey":Lcom/lzx/iteam/keyboard/SoftKey;
    iget v13, v11, Lcom/lzx/iteam/keyboard/SoftKey;->mLeft:I

    iget v14, v11, Lcom/lzx/iteam/keyboard/SoftKey;->mRight:I

    add-int/2addr v13, v14

    div-int/lit8 v13, v13, 0x2

    sub-int v2, v13, p1

    .line 339
    .local v2, "disx":I
    iget v13, v11, Lcom/lzx/iteam/keyboard/SoftKey;->mTop:I

    iget v14, v11, Lcom/lzx/iteam/keyboard/SoftKey;->mBottom:I

    add-int/2addr v13, v14

    div-int/lit8 v13, v13, 0x2

    sub-int v3, v13, p2

    .line 340
    .local v3, "disy":I
    mul-int v13, v2, v2

    mul-int v14, v3, v3

    add-int/2addr v13, v14

    int-to-float v1, v13

    .line 341
    .local v1, "dis":F
    cmpg-float v13, v1, v7

    if-gez v13, :cond_b

    .line 342
    move v7, v1

    .line 343
    move-object v8, v11

    .line 336
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_4
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mKeyRows:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 166
    :cond_0
    return-void
.end method

.method public setCacheId(I)V
    .locals 0
    .param p1, "cacheId"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mCacheId:I

    .line 137
    return-void
.end method

.method public setFlags(ZZZZ)V
    .locals 0
    .param p1, "cacheFlag"    # Z
    .param p2, "stickyFlag"    # Z
    .param p3, "isQwerty"    # Z
    .param p4, "isQwertyUpperCase"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mCacheFlag:Z

    .line 126
    iput-boolean p2, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mStickyFlag:Z

    .line 127
    iput-boolean p3, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mIsQwerty:Z

    .line 128
    iput-boolean p4, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mIsQwertyUpperCase:Z

    .line 129
    return-void
.end method

.method public setKeyBalloonBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "balloonBg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mBalloonBg:Landroid/graphics/drawable/Drawable;

    .line 153
    return-void
.end method

.method public setKeyMargins(FF)V
    .locals 0
    .param p1, "xMargin"    # F
    .param p2, "yMargin"    # F

    .prologue
    .line 156
    iput p1, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mKeyXMargin:F

    .line 157
    iput p2, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mKeyYMargin:F

    .line 158
    return-void
.end method

.method public setNewlyLoadedFlag(Z)V
    .locals 0
    .param p1, "newlyLoadedFlag"    # Z

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mNewlyLoadedFlag:Z

    .line 170
    return-void
.end method

.method public setPopupBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "popupBg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mPopupBg:Landroid/graphics/drawable/Drawable;

    .line 149
    return-void
.end method

.method public setSkbBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "skbBg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mSkbBg:Landroid/graphics/drawable/Drawable;

    .line 145
    return-void
.end method

.method public setSkbCoreSize(II)V
    .locals 7
    .param p1, "skbCoreWidth"    # I
    .param p2, "skbCoreHeight"    # I

    .prologue
    .line 210
    iget-object v5, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mKeyRows:Ljava/util/List;

    if-eqz v5, :cond_0

    .line 211
    iget v5, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mSkbCoreWidth:I

    if-ne p1, v5, :cond_1

    iget v5, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mSkbCoreHeight:I

    if-ne p2, v5, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    const/4 v2, 0x0

    .local v2, "row":I
    :goto_1
    iget-object v5, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v2, v5, :cond_2

    .line 225
    iput p1, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mSkbCoreWidth:I

    .line 226
    iput p2, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mSkbCoreHeight:I

    goto :goto_0

    .line 215
    :cond_2
    iget-object v5, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;

    .line 216
    .local v1, "keyRow":Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;
    int-to-float v5, p2

    iget v6, v1, Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;->mBottomF:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v1, Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;->mBottom:I

    .line 217
    int-to-float v5, p2

    iget v6, v1, Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;->mTopF:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v1, Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;->mTop:I

    .line 219
    iget-object v4, v1, Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;->mSoftKeys:Ljava/util/List;

    .line 220
    .local v4, "softKeys":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/keyboard/SoftKey;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lt v0, v5, :cond_3

    .line 214
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 221
    :cond_3
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/keyboard/SoftKey;

    .line 222
    .local v3, "softKey":Lcom/lzx/iteam/keyboard/SoftKey;
    invoke-virtual {v3, p1, p2}, Lcom/lzx/iteam/keyboard/SoftKey;->setSkbCoreSize(II)V

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public switchQwertyMode(IZ)V
    .locals 9
    .param p1, "toggle_state_id"    # I
    .param p2, "upperCase"    # Z

    .prologue
    .line 351
    iget-boolean v7, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mIsQwerty:Z

    if-nez v7, :cond_1

    .line 370
    :cond_0
    return-void

    .line 353
    :cond_1
    iget-object v7, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    .line 354
    .local v4, "rowNum":I
    const/4 v3, 0x0

    .local v3, "row":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 355
    iget-object v7, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;

    .line 356
    .local v2, "keyRow":Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;
    iget-object v6, v2, Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;->mSoftKeys:Ljava/util/List;

    .line 357
    .local v6, "softKeys":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/keyboard/SoftKey;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    .line 358
    .local v1, "keyNum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v1, :cond_2

    .line 354
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 359
    :cond_2
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lzx/iteam/keyboard/SoftKey;

    .line 360
    .local v5, "sKey":Lcom/lzx/iteam/keyboard/SoftKey;
    instance-of v7, v5, Lcom/lzx/iteam/keyboard/SoftKeyToggle;

    if-eqz v7, :cond_3

    move-object v7, v5

    .line 361
    check-cast v7, Lcom/lzx/iteam/keyboard/SoftKeyToggle;

    .line 362
    const/4 v8, 0x1

    .line 361
    invoke-virtual {v7, p1, v8}, Lcom/lzx/iteam/keyboard/SoftKeyToggle;->enableToggleState(IZ)Z

    .line 364
    :cond_3
    iget v7, v5, Lcom/lzx/iteam/keyboard/SoftKey;->mKeyCode:I

    const/16 v8, 0x1d

    if-lt v7, v8, :cond_4

    .line 365
    iget v7, v5, Lcom/lzx/iteam/keyboard/SoftKey;->mKeyCode:I

    const/16 v8, 0x36

    if-gt v7, v8, :cond_4

    .line 366
    invoke-virtual {v5, p2}, Lcom/lzx/iteam/keyboard/SoftKey;->changeCase(Z)V

    .line 358
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public toShortString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 501
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 480
    const-string v6, "------------------SkbInfo----------------------\n"

    .line 481
    .local v6, "str":Ljava/lang/String;
    const-string v0, "-----------------------------------------------\n"

    .line 482
    .local v0, "endStr":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "Width: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mSkbCoreWidth:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 483
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "Height: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mSkbCoreHeight:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 484
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "KeyRowNum: "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    const-string v7, "0"

    .line 486
    :goto_0
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 484
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 487
    iget-object v7, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mKeyRows:Ljava/util/List;

    if-nez v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 497
    :goto_1
    return-object v7

    .line 484
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mKeyRows:Ljava/util/List;

    .line 485
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    .line 484
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 486
    const-string v9, "\n"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 488
    :cond_1
    iget-object v7, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    .line 489
    .local v4, "rowNum":I
    const/4 v3, 0x0

    .local v3, "row":I
    :goto_2
    if-lt v3, v4, :cond_2

    .line 497
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 490
    :cond_2
    iget-object v7, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;

    .line 491
    .local v2, "keyRow":Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;
    iget-object v5, v2, Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;->mSoftKeys:Ljava/util/List;

    .line 492
    .local v5, "softKeys":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/keyboard/SoftKey;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lt v1, v7, :cond_3

    .line 489
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 493
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "-key "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 494
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lzx/iteam/keyboard/SoftKey;

    invoke-virtual {v7}, Lcom/lzx/iteam/keyboard/SoftKey;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 493
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 492
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method
