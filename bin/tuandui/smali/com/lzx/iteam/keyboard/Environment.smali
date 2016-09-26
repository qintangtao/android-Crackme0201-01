.class public Lcom/lzx/iteam/keyboard/Environment;
.super Ljava/lang/Object;
.source "Environment.java"


# static fields
.field private static final CANDIDATES_AREA_HEIGHT_RATIO_LANDSCAPE:F = 0.125f

.field private static final CANDIDATES_AREA_HEIGHT_RATIO_PORTRAIT:F = 0.084f

.field private static final FUNCTION_BALLOON_TEXT_SIZE_RATIO:F = 0.085f

.field private static final FUNCTION_KEY_TEXT_SIZE_RATIO:F = 0.055f

.field private static final KEY_BALLOON_HEIGHT_PLUS_RATIO:F = 0.15f

.field private static final KEY_BALLOON_WIDTH_PLUS_RATIO:F = 0.08f

.field private static final KEY_HEIGHT_RATIO_LANDSCAPE:F = 0.147f

.field private static final KEY_HEIGHT_RATIO_PORTRAIT:F = 0.125f

.field private static final NORMAL_BALLOON_TEXT_SIZE_RATIO:F = 0.14f

.field private static final NORMAL_KEY_TEXT_SIZE_RATIO:F = 0.075f

.field private static mInstance:Lcom/lzx/iteam/keyboard/Environment;


# instance fields
.field private mBalloonTextPlus:I

.field private mCandidatesAreaHeight:I

.field private mConfig:Landroid/content/res/Configuration;

.field private mDebug:Z

.field private mFunctionBalloonTextSize:I

.field private mFunctionKeyTextSize:I

.field private mKeyBalloonHeightPlus:I

.field private mKeyBalloonWidthPlus:I

.field private mKeyHeight:I

.field private mNormalBalloonTextSize:I

.field private mNormalKeyTextSize:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSkbHeight:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/lzx/iteam/keyboard/Environment;->mScreenWidth:I

    .line 97
    const/16 v0, 0x320

    iput v0, p0, Lcom/lzx/iteam/keyboard/Environment;->mScreenHeight:I

    .line 110
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/keyboard/Environment;->mConfig:Landroid/content/res/Configuration;

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lzx/iteam/keyboard/Environment;->mDebug:Z

    .line 114
    return-void
.end method

.method public static getInstance()Lcom/lzx/iteam/keyboard/Environment;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/lzx/iteam/keyboard/Environment;->mInstance:Lcom/lzx/iteam/keyboard/Environment;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lcom/lzx/iteam/keyboard/Environment;

    invoke-direct {v0}, Lcom/lzx/iteam/keyboard/Environment;-><init>()V

    sput-object v0, Lcom/lzx/iteam/keyboard/Environment;->mInstance:Lcom/lzx/iteam/keyboard/Environment;

    .line 120
    :cond_0
    sget-object v0, Lcom/lzx/iteam/keyboard/Environment;->mInstance:Lcom/lzx/iteam/keyboard/Environment;

    return-object v0
.end method


# virtual methods
.method public getBalloonTextPlus()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/lzx/iteam/keyboard/Environment;->mBalloonTextPlus:I

    return v0
.end method

.method public getBalloonTextSize(Z)I
    .locals 1
    .param p1, "isFunctionKey"    # Z

    .prologue
    .line 217
    if-eqz p1, :cond_0

    .line 218
    iget v0, p0, Lcom/lzx/iteam/keyboard/Environment;->mFunctionBalloonTextSize:I

    .line 220
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/lzx/iteam/keyboard/Environment;->mNormalBalloonTextSize:I

    goto :goto_0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/Environment;->mConfig:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public getHeightForCandidates()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/lzx/iteam/keyboard/Environment;->mCandidatesAreaHeight:I

    return v0
.end method

.method public getKeyBalloonHeightPlus()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/lzx/iteam/keyboard/Environment;->mKeyBalloonHeightPlus:I

    return v0
.end method

.method public getKeyBalloonWidthPlus()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/lzx/iteam/keyboard/Environment;->mKeyBalloonWidthPlus:I

    return v0
.end method

.method public getKeyHeight()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/lzx/iteam/keyboard/Environment;->mKeyHeight:I

    return v0
.end method

.method public getKeyTextSize(Z)I
    .locals 1
    .param p1, "isFunctionKey"    # Z

    .prologue
    .line 209
    if-eqz p1, :cond_0

    .line 210
    iget v0, p0, Lcom/lzx/iteam/keyboard/Environment;->mFunctionKeyTextSize:I

    .line 212
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/lzx/iteam/keyboard/Environment;->mNormalKeyTextSize:I

    goto :goto_0
.end method

.method public getKeyXMarginFactor()F
    .locals 1

    .prologue
    .line 176
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getKeyYMarginFactor()F
    .locals 2

    .prologue
    .line 180
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/lzx/iteam/keyboard/Environment;->mConfig:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 181
    const v0, 0x3f333333    # 0.7f

    .line 183
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getScreenHeight()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/lzx/iteam/keyboard/Environment;->mScreenHeight:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/lzx/iteam/keyboard/Environment;->mScreenWidth:I

    return v0
.end method

.method public getSkbHeight()I
    .locals 2

    .prologue
    .line 199
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/lzx/iteam/keyboard/Environment;->mConfig:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 201
    iget v0, p0, Lcom/lzx/iteam/keyboard/Environment;->mSkbHeight:I

    .line 205
    :goto_0
    return v0

    .line 202
    :cond_0
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/lzx/iteam/keyboard/Environment;->mConfig:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_1

    .line 203
    iget v0, p0, Lcom/lzx/iteam/keyboard/Environment;->mKeyHeight:I

    mul-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 205
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHardKeyboard()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 225
    iget-object v1, p0, Lcom/lzx/iteam/keyboard/Environment;->mConfig:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v0, :cond_0

    .line 226
    iget-object v1, p0, Lcom/lzx/iteam/keyboard/Environment;->mConfig:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 227
    :cond_0
    const/4 v0, 0x0

    .line 229
    :cond_1
    return v0
.end method

.method public needDebug()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/lzx/iteam/keyboard/Environment;->mDebug:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/Context;)V
    .locals 7
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v6, 0x3e000000    # 0.125f

    .line 124
    iget-object v4, p0, Lcom/lzx/iteam/keyboard/Environment;->mConfig:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    iget v5, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v4, v5, :cond_0

    .line 126
    const-string v4, "window"

    invoke-virtual {p2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 125
    check-cast v3, Landroid/view/WindowManager;

    .line 127
    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 128
    .local v0, "d":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/lzx/iteam/keyboard/Environment;->mScreenWidth:I

    .line 129
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/lzx/iteam/keyboard/Environment;->mScreenHeight:I

    .line 130
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 133
    .local v1, "res":Landroid/content/res/Resources;
    iget v4, p0, Lcom/lzx/iteam/keyboard/Environment;->mScreenHeight:I

    iget v5, p0, Lcom/lzx/iteam/keyboard/Environment;->mScreenWidth:I

    if-le v4, v5, :cond_1

    .line 134
    iget v4, p0, Lcom/lzx/iteam/keyboard/Environment;->mScreenHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, p0, Lcom/lzx/iteam/keyboard/Environment;->mKeyHeight:I

    .line 135
    const v4, 0x7f0d0015

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/lzx/iteam/keyboard/Environment;->mSkbHeight:I

    .line 136
    iget v4, p0, Lcom/lzx/iteam/keyboard/Environment;->mScreenHeight:I

    int-to-float v4, v4

    const v5, 0x3dac0831    # 0.084f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/lzx/iteam/keyboard/Environment;->mCandidatesAreaHeight:I

    .line 137
    iget v2, p0, Lcom/lzx/iteam/keyboard/Environment;->mScreenWidth:I

    .line 143
    .local v2, "scale":I
    :goto_0
    int-to-float v4, v2

    const v5, 0x3d99999a    # 0.075f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/lzx/iteam/keyboard/Environment;->mNormalKeyTextSize:I

    .line 144
    int-to-float v4, v2

    const v5, 0x3d6147ae    # 0.055f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/lzx/iteam/keyboard/Environment;->mFunctionKeyTextSize:I

    .line 145
    int-to-float v4, v2

    const v5, 0x3e0f5c29    # 0.14f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/lzx/iteam/keyboard/Environment;->mNormalBalloonTextSize:I

    .line 146
    int-to-float v4, v2

    const v5, 0x3dae147b    # 0.085f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/lzx/iteam/keyboard/Environment;->mFunctionBalloonTextSize:I

    .line 147
    int-to-float v4, v2

    const v5, 0x3da3d70a    # 0.08f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/lzx/iteam/keyboard/Environment;->mKeyBalloonWidthPlus:I

    .line 148
    int-to-float v4, v2

    const v5, 0x3e19999a    # 0.15f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/lzx/iteam/keyboard/Environment;->mKeyBalloonHeightPlus:I

    .line 149
    const v4, 0x7f0d000c

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/lzx/iteam/keyboard/Environment;->mBalloonTextPlus:I

    .line 152
    .end local v0    # "d":Landroid/view/Display;
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "scale":I
    .end local v3    # "wm":Landroid/view/WindowManager;
    :cond_0
    iget-object v4, p0, Lcom/lzx/iteam/keyboard/Environment;->mConfig:Landroid/content/res/Configuration;

    invoke-virtual {v4, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 153
    return-void

    .line 139
    .restart local v0    # "d":Landroid/view/Display;
    .restart local v1    # "res":Landroid/content/res/Resources;
    .restart local v3    # "wm":Landroid/view/WindowManager;
    :cond_1
    iget v4, p0, Lcom/lzx/iteam/keyboard/Environment;->mScreenHeight:I

    int-to-float v4, v4

    const v5, 0x3e16872b    # 0.147f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/lzx/iteam/keyboard/Environment;->mKeyHeight:I

    .line 140
    iget v4, p0, Lcom/lzx/iteam/keyboard/Environment;->mScreenHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, p0, Lcom/lzx/iteam/keyboard/Environment;->mCandidatesAreaHeight:I

    .line 141
    iget v2, p0, Lcom/lzx/iteam/keyboard/Environment;->mScreenHeight:I

    .restart local v2    # "scale":I
    goto :goto_0
.end method
