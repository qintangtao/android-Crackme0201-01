.class public Lcom/lzx/iteam/keyboard/SoftKey;
.super Ljava/lang/Object;
.source "SoftKey.java"


# static fields
.field protected static final KEYMASK_BALLOON:I = 0x20000000

.field protected static final KEYMASK_REPEAT:I = 0x10000000

.field public static final MAX_MOVE_TOLERANCE_X:I

.field public static final MAX_MOVE_TOLERANCE_Y:I


# instance fields
.field private mBalloonBg:Landroid/graphics/drawable/Drawable;

.field public mBottom:I

.field public mBottomF:F

.field protected mKeyCode:I

.field protected mKeyIcon:Landroid/graphics/drawable/Drawable;

.field protected mKeyIconPopup:Landroid/graphics/drawable/Drawable;

.field protected mKeyLabel:Ljava/lang/String;

.field protected mKeyMask:I

.field protected mKeyType:Lcom/lzx/iteam/keyboard/SoftKeyType;

.field public mLeft:I

.field public mLeftF:F

.field public mPopupSkbId:I

.field public mRight:I

.field public mRightF:F

.field public mTop:I

.field public mTopF:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changeCase(Z)V
    .locals 1
    .param p1, "upperCase"    # Z

    .prologue
    .line 147
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mKeyLabel:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 148
    if-eqz p1, :cond_1

    .line 149
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mKeyLabel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mKeyLabel:Ljava/lang/String;

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mKeyLabel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mKeyLabel:Ljava/lang/String;

    goto :goto_0
.end method

.method public getBalloonBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mBalloonBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mKeyType:Lcom/lzx/iteam/keyboard/SoftKeyType;

    iget v0, v0, Lcom/lzx/iteam/keyboard/SoftKeyType;->mColor:I

    return v0
.end method

.method public getColorBalloon()I
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mKeyType:Lcom/lzx/iteam/keyboard/SoftKeyType;

    iget v0, v0, Lcom/lzx/iteam/keyboard/SoftKeyType;->mColorBalloon:I

    return v0
.end method

.method public getColorHl()I
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mKeyType:Lcom/lzx/iteam/keyboard/SoftKeyType;

    iget v0, v0, Lcom/lzx/iteam/keyboard/SoftKeyType;->mColorHl:I

    return v0
.end method

.method public getKeyBg()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mKeyType:Lcom/lzx/iteam/keyboard/SoftKeyType;

    iget-object v0, v0, Lcom/lzx/iteam/keyboard/SoftKeyType;->mKeyBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getKeyCode()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mKeyCode:I

    return v0
.end method

.method public getKeyHlBg()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mKeyType:Lcom/lzx/iteam/keyboard/SoftKeyType;

    iget-object v0, v0, Lcom/lzx/iteam/keyboard/SoftKeyType;->mKeyHlBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getKeyIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mKeyIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getKeyIconPopup()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mKeyIconPopup:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mKeyIconPopup:Landroid/graphics/drawable/Drawable;

    .line 135
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mKeyIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getKeyLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mKeyLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getPopupResId()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mPopupSkbId:I

    return v0
.end method

.method public height()I
    .locals 2

    .prologue
    .line 207
    iget v0, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mBottom:I

    iget v1, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mTop:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public isKeyCodeKey()Z
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mKeyCode:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 177
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUniStrKey()Z
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mKeyLabel:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mKeyCode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 187
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserDefKey()Z
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mKeyCode:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 182
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveWithinKey(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 211
    iget v0, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mLeft:I

    add-int/lit8 v0, v0, 0x0

    if-gt v0, p1, :cond_0

    .line 212
    iget v0, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mTop:I

    add-int/lit8 v0, v0, 0x0

    if-gt v0, p2, :cond_0

    .line 213
    iget v0, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mRight:I

    add-int/lit8 v0, v0, 0x0

    if-le v0, p1, :cond_0

    .line 214
    iget v0, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mBottom:I

    add-int/lit8 v0, v0, 0x0

    if-le v0, p2, :cond_0

    .line 215
    const/4 v0, 0x1

    .line 217
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needBalloon()Z
    .locals 2

    .prologue
    .line 191
    iget v0, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mKeyMask:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public repeatable()Z
    .locals 2

    .prologue
    .line 195
    iget v0, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mKeyMask:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setKeyAttribute(ILjava/lang/String;ZZ)V
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "repeat"    # Z
    .param p4, "balloon"    # Z

    .prologue
    .line 98
    iput p1, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mKeyCode:I

    .line 99
    iput-object p2, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mKeyLabel:Ljava/lang/String;

    .line 101
    if-eqz p3, :cond_0

    .line 102
    iget v0, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mKeyMask:I

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mKeyMask:I

    .line 107
    :goto_0
    if-eqz p4, :cond_1

    .line 108
    iget v0, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mKeyMask:I

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mKeyMask:I

    .line 112
    :goto_1
    return-void

    .line 104
    :cond_0
    iget v0, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mKeyMask:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mKeyMask:I

    goto :goto_0

    .line 110
    :cond_1
    iget v0, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mKeyMask:I

    const v1, -0x20000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mKeyMask:I

    goto :goto_1
.end method

.method public setKeyBalloonBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "balloonBg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mBalloonBg:Landroid/graphics/drawable/Drawable;

    .line 222
    return-void
.end method

.method public setKeyDimensions(FFFF)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 90
    iput p1, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mLeftF:F

    .line 91
    iput p2, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mTopF:F

    .line 92
    iput p3, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mRightF:F

    .line 93
    iput p4, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mBottomF:F

    .line 94
    return-void
.end method

.method public setKeyType(Lcom/lzx/iteam/keyboard/SoftKeyType;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "keyType"    # Lcom/lzx/iteam/keyboard/SoftKeyType;
    .param p2, "keyIcon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "keyIconPopup"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mKeyType:Lcom/lzx/iteam/keyboard/SoftKeyType;

    .line 83
    iput-object p2, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mKeyIcon:Landroid/graphics/drawable/Drawable;

    .line 84
    iput-object p3, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mKeyIconPopup:Landroid/graphics/drawable/Drawable;

    .line 85
    return-void
.end method

.method public setPopupSkbId(I)V
    .locals 0
    .param p1, "popupSkbId"    # I

    .prologue
    .line 115
    iput p1, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mPopupSkbId:I

    .line 116
    return-void
.end method

.method public setSkbCoreSize(II)V
    .locals 2
    .param p1, "skbWidth"    # I
    .param p2, "skbHeight"    # I

    .prologue
    .line 121
    iget v0, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mLeftF:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mLeft:I

    .line 122
    iget v0, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mRightF:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mRight:I

    .line 123
    iget v0, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mTopF:F

    int-to-float v1, p2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mTop:I

    .line 124
    iget v0, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mBottomF:F

    int-to-float v1, p2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mBottom:I

    .line 125
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 233
    const-string v0, "\n"

    .line 234
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "  keyCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mKeyCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "  keyMask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mKeyMask:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "  keyLabel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mKeyLabel:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "null"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "  popupResId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mPopupSkbId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "  Position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mLeftF:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 239
    iget v2, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mTopF:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mRightF:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 240
    iget v2, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mBottomF:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 238
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 241
    return-object v0

    .line 236
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mKeyLabel:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public width()I
    .locals 2

    .prologue
    .line 203
    iget v0, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mRight:I

    iget v1, p0, Lcom/lzx/iteam/keyboard/SoftKey;->mLeft:I

    sub-int/2addr v0, v1

    return v0
.end method
