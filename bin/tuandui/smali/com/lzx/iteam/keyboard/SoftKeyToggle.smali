.class public Lcom/lzx/iteam/keyboard/SoftKeyToggle;
.super Lcom/lzx/iteam/keyboard/SoftKey;
.source "SoftKeyToggle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;
    }
.end annotation


# static fields
.field private static final KEYMASK_TOGGLE_STATE:I = 0xff


# instance fields
.field private mToggleState:Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/lzx/iteam/keyboard/SoftKey;-><init>()V

    return-void
.end method

.method private getToggleState()Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;
    .locals 3

    .prologue
    .line 244
    iget v2, p0, Lcom/lzx/iteam/keyboard/SoftKeyToggle;->mKeyMask:I

    and-int/lit16 v1, v2, 0xff

    .line 245
    .local v1, "stateId":I
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 252
    :cond_0
    return-object v0

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyToggle;->mToggleState:Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;

    .line 248
    .local v0, "state":Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;
    :goto_0
    if-eqz v0, :cond_0

    .line 249
    # getter for: Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;->mIdAndFlags:I
    invoke-static {v0}, Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;->access$0(Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;)I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    if-eq v2, v1, :cond_0

    .line 250
    iget-object v0, v0, Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;->mNextState:Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;

    goto :goto_0
.end method


# virtual methods
.method public changeCase(Z)V
    .locals 2
    .param p1, "lowerCase"    # Z

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/lzx/iteam/keyboard/SoftKeyToggle;->getToggleState()Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;

    move-result-object v0

    .line 225
    .local v0, "state":Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;->mKeyLabel:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 226
    if-eqz p1, :cond_1

    .line 227
    iget-object v1, v0, Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;->mKeyLabel:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;->mKeyLabel:Ljava/lang/String;

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    iget-object v1, v0, Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;->mKeyLabel:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;->mKeyLabel:Ljava/lang/String;

    goto :goto_0
.end method

.method public createToggleState()Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;
    .locals 1

    .prologue
    .line 234
    new-instance v0, Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;-><init>(Lcom/lzx/iteam/keyboard/SoftKeyToggle;)V

    return-object v0
.end method

.method public disableAllToggleStates()Z
    .locals 2

    .prologue
    .line 88
    iget v1, p0, Lcom/lzx/iteam/keyboard/SoftKeyToggle;->mKeyMask:I

    and-int/lit16 v0, v1, 0xff

    .line 89
    .local v0, "oldStateId":I
    iget v1, p0, Lcom/lzx/iteam/keyboard/SoftKeyToggle;->mKeyMask:I

    and-int/lit16 v1, v1, -0x100

    iput v1, p0, Lcom/lzx/iteam/keyboard/SoftKeyToggle;->mKeyMask:I

    .line 90
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disableToggleState(IZ)Z
    .locals 4
    .param p1, "stateId"    # I
    .param p2, "resetIfNotFound"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 73
    iget v3, p0, Lcom/lzx/iteam/keyboard/SoftKeyToggle;->mKeyMask:I

    and-int/lit16 v0, v3, 0xff

    .line 74
    .local v0, "oldStateId":I
    if-ne v0, p1, :cond_2

    .line 75
    iget v3, p0, Lcom/lzx/iteam/keyboard/SoftKeyToggle;->mKeyMask:I

    and-int/lit16 v3, v3, -0x100

    iput v3, p0, Lcom/lzx/iteam/keyboard/SoftKeyToggle;->mKeyMask:I

    .line 76
    if-eqz p1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 76
    goto :goto_0

    .line 79
    :cond_2
    if-eqz p2, :cond_3

    .line 80
    iget v3, p0, Lcom/lzx/iteam/keyboard/SoftKeyToggle;->mKeyMask:I

    and-int/lit16 v3, v3, -0x100

    iput v3, p0, Lcom/lzx/iteam/keyboard/SoftKeyToggle;->mKeyMask:I

    .line 81
    if-nez v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v2

    .line 83
    goto :goto_0
.end method

.method public enableToggleState(IZ)Z
    .locals 4
    .param p1, "stateId"    # I
    .param p2, "resetIfNotFound"    # Z

    .prologue
    const/4 v1, 0x1

    .line 48
    iget v2, p0, Lcom/lzx/iteam/keyboard/SoftKeyToggle;->mKeyMask:I

    and-int/lit16 v0, v2, 0xff

    .line 49
    .local v0, "oldStateId":I
    if-ne v0, p1, :cond_1

    const/4 p2, 0x0

    .line 64
    .end local p2    # "resetIfNotFound":Z
    :cond_0
    :goto_0
    return p2

    .line 51
    .restart local p2    # "resetIfNotFound":Z
    :cond_1
    iget v2, p0, Lcom/lzx/iteam/keyboard/SoftKeyToggle;->mKeyMask:I

    and-int/lit16 v2, v2, -0x100

    iput v2, p0, Lcom/lzx/iteam/keyboard/SoftKeyToggle;->mKeyMask:I

    .line 52
    if-lez p1, :cond_3

    .line 53
    iget v2, p0, Lcom/lzx/iteam/keyboard/SoftKeyToggle;->mKeyMask:I

    and-int/lit16 v3, p1, 0xff

    or-int/2addr v2, v3

    iput v2, p0, Lcom/lzx/iteam/keyboard/SoftKeyToggle;->mKeyMask:I

    .line 54
    invoke-direct {p0}, Lcom/lzx/iteam/keyboard/SoftKeyToggle;->getToggleState()Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;

    move-result-object v2

    if-nez v2, :cond_2

    .line 55
    iget v1, p0, Lcom/lzx/iteam/keyboard/SoftKeyToggle;->mKeyMask:I

    and-int/lit16 v1, v1, -0x100

    iput v1, p0, Lcom/lzx/iteam/keyboard/SoftKeyToggle;->mKeyMask:I

    .line 56
    if-nez p2, :cond_0

    if-lez v0, :cond_0

    .line 57
    iget v1, p0, Lcom/lzx/iteam/keyboard/SoftKeyToggle;->mKeyMask:I

    and-int/lit16 v2, v0, 0xff

    or-int/2addr v1, v2

    iput v1, p0, Lcom/lzx/iteam/keyboard/SoftKeyToggle;->mKeyMask:I

    goto :goto_0

    :cond_2
    move p2, v1

    .line 61
    goto :goto_0

    :cond_3
    move p2, v1

    .line 64
    goto :goto_0
.end method

.method public getColor()I
    .locals 2

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/lzx/iteam/keyboard/SoftKeyToggle;->getToggleState()Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;

    move-result-object v0

    .line 148
    .local v0, "state":Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;->mKeyType:Lcom/lzx/iteam/keyboard/SoftKeyType;

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, v0, Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;->mKeyType:Lcom/lzx/iteam/keyboard/SoftKeyType;

    iget v1, v1, Lcom/lzx/iteam/keyboard/SoftKeyType;->mColor:I

    .line 151
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/keyboard/SoftKeyToggle;->mKeyType:Lcom/lzx/iteam/keyboard/SoftKeyType;

    iget v1, v1, Lcom/lzx/iteam/keyboard/SoftKeyType;->mColor:I

    goto :goto_0
.end method

.method public getColorBalloon()I
    .locals 2

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/lzx/iteam/keyboard/SoftKeyToggle;->getToggleState()Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;

    move-result-object v0

    .line 166
    .local v0, "state":Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;->mKeyType:Lcom/lzx/iteam/keyboard/SoftKeyType;

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, v0, Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;->mKeyType:Lcom/lzx/iteam/keyboard/SoftKeyType;

    iget v1, v1, Lcom/lzx/iteam/keyboard/SoftKeyType;->mColorBalloon:I

    .line 169
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/keyboard/SoftKeyToggle;->mKeyType:Lcom/lzx/iteam/keyboard/SoftKeyType;

    iget v1, v1, Lcom/lzx/iteam/keyboard/SoftKeyType;->mColorBalloon:I

    goto :goto_0
.end method

.method public getColorHl()I
    .locals 2

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/lzx/iteam/keyboard/SoftKeyToggle;->getToggleState()Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;

    move-result-object v0

    .line 157
    .local v0, "state":Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;->mKeyType:Lcom/lzx/iteam/keyboard/SoftKeyType;

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, v0, Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;->mKeyType:Lcom/lzx/iteam/keyboard/SoftKeyType;

    iget v1, v1, Lcom/lzx/iteam/keyboard/SoftKeyType;->mColorHl:I

    .line 160
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/keyboard/SoftKeyToggle;->mKeyType:Lcom/lzx/iteam/keyboard/SoftKeyType;

    iget v1, v1, Lcom/lzx/iteam/keyboard/SoftKeyType;->mColorHl:I

    goto :goto_0
.end method

.method public getKeyBg()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/lzx/iteam/keyboard/SoftKeyToggle;->getToggleState()Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;

    move-result-object v0

    .line 130
    .local v0, "state":Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;->mKeyType:Lcom/lzx/iteam/keyboard/SoftKeyType;

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, v0, Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;->mKeyType:Lcom/lzx/iteam/keyboard/SoftKeyType;

    iget-object v1, v1, Lcom/lzx/iteam/keyboard/SoftKeyType;->mKeyBg:Landroid/graphics/drawable/Drawable;

    .line 133
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/keyboard/SoftKeyToggle;->mKeyType:Lcom/lzx/iteam/keyboard/SoftKeyType;

    iget-object v1, v1, Lcom/lzx/iteam/keyboard/SoftKeyType;->mKeyBg:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getKeyCode()I
    .locals 2

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/lzx/iteam/keyboard/SoftKeyToggle;->getToggleState()Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;

    move-result-object v0

    .line 116
    .local v0, "state":Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;->mKeyCode:I

    .line 117
    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/lzx/iteam/keyboard/SoftKeyToggle;->mKeyCode:I

    goto :goto_0
.end method

.method public getKeyHlBg()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/lzx/iteam/keyboard/SoftKeyToggle;->getToggleState()Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;

    move-result-object v0

    .line 139
    .local v0, "state":Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;->mKeyType:Lcom/lzx/iteam/keyboard/SoftKeyType;

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, v0, Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;->mKeyType:Lcom/lzx/iteam/keyboard/SoftKeyType;

    iget-object v1, v1, Lcom/lzx/iteam/keyboard/SoftKeyType;->mKeyHlBg:Landroid/graphics/drawable/Drawable;

    .line 142
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/keyboard/SoftKeyToggle;->mKeyType:Lcom/lzx/iteam/keyboard/SoftKeyType;

    iget-object v1, v1, Lcom/lzx/iteam/keyboard/SoftKeyType;->mKeyHlBg:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getKeyIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/lzx/iteam/keyboard/SoftKeyToggle;->getToggleState()Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;

    move-result-object v0

    .line 96
    .local v0, "state":Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;->mKeyIcon:Landroid/graphics/drawable/Drawable;

    .line 97
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0}, Lcom/lzx/iteam/keyboard/SoftKey;->getKeyIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public getKeyIconPopup()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/lzx/iteam/keyboard/SoftKeyToggle;->getToggleState()Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;

    move-result-object v0

    .line 103
    .local v0, "state":Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;
    if-eqz v0, :cond_1

    .line 104
    iget-object v1, v0, Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;->mKeyIconPopup:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, v0, Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;->mKeyIconPopup:Landroid/graphics/drawable/Drawable;

    .line 110
    :goto_0
    return-object v1

    .line 107
    :cond_0
    iget-object v1, v0, Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;->mKeyIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 110
    :cond_1
    invoke-super {p0}, Lcom/lzx/iteam/keyboard/SoftKey;->getKeyIconPopup()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public getKeyLabel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/lzx/iteam/keyboard/SoftKeyToggle;->getToggleState()Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;

    move-result-object v0

    .line 123
    .local v0, "state":Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;->mKeyLabel:Ljava/lang/String;

    .line 124
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/keyboard/SoftKeyToggle;->mKeyLabel:Ljava/lang/String;

    goto :goto_0
.end method

.method public getToggleStateId()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyToggle;->mKeyMask:I

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public isKeyCodeKey()Z
    .locals 2

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/lzx/iteam/keyboard/SoftKeyToggle;->getToggleState()Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;

    move-result-object v0

    .line 175
    .local v0, "state":Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;
    if-eqz v0, :cond_1

    .line 176
    iget v1, v0, Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;->mKeyCode:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    .line 179
    :goto_0
    return v1

    .line 177
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 179
    :cond_1
    invoke-super {p0}, Lcom/lzx/iteam/keyboard/SoftKey;->isKeyCodeKey()Z

    move-result v1

    goto :goto_0
.end method

.method public isUniStrKey()Z
    .locals 2

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/lzx/iteam/keyboard/SoftKeyToggle;->getToggleState()Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;

    move-result-object v0

    .line 195
    .local v0, "state":Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;
    if-eqz v0, :cond_1

    .line 196
    iget-object v1, v0, Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;->mKeyLabel:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;->mKeyCode:I

    if-nez v1, :cond_0

    .line 197
    const/4 v1, 0x1

    .line 201
    :goto_0
    return v1

    .line 199
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 201
    :cond_1
    invoke-super {p0}, Lcom/lzx/iteam/keyboard/SoftKey;->isUniStrKey()Z

    move-result v1

    goto :goto_0
.end method

.method public isUserDefKey()Z
    .locals 2

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/lzx/iteam/keyboard/SoftKeyToggle;->getToggleState()Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;

    move-result-object v0

    .line 185
    .local v0, "state":Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;
    if-eqz v0, :cond_1

    .line 186
    iget v1, v0, Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;->mKeyCode:I

    if-gez v1, :cond_0

    const/4 v1, 0x1

    .line 189
    :goto_0
    return v1

    .line 187
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 189
    :cond_1
    invoke-super {p0}, Lcom/lzx/iteam/keyboard/SoftKey;->isUserDefKey()Z

    move-result v1

    goto :goto_0
.end method

.method public needBalloon()Z
    .locals 3

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/lzx/iteam/keyboard/SoftKeyToggle;->getToggleState()Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;

    move-result-object v0

    .line 207
    .local v0, "state":Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;
    if-eqz v0, :cond_1

    .line 208
    # getter for: Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;->mIdAndFlags:I
    invoke-static {v0}, Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;->access$0(Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;)I

    move-result v1

    const/high16 v2, 0x20000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 210
    :goto_0
    return v1

    .line 208
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 210
    :cond_1
    invoke-super {p0}, Lcom/lzx/iteam/keyboard/SoftKey;->needBalloon()Z

    move-result v1

    goto :goto_0
.end method

.method public repeatable()Z
    .locals 3

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/lzx/iteam/keyboard/SoftKeyToggle;->getToggleState()Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;

    move-result-object v0

    .line 216
    .local v0, "state":Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;
    if-eqz v0, :cond_1

    .line 217
    # getter for: Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;->mIdAndFlags:I
    invoke-static {v0}, Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;->access$0(Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;)I

    move-result v1

    const/high16 v2, 0x10000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 219
    :goto_0
    return v1

    .line 217
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 219
    :cond_1
    invoke-super {p0}, Lcom/lzx/iteam/keyboard/SoftKey;->repeatable()Z

    move-result v1

    goto :goto_0
.end method

.method public setToggleStates(Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;)Z
    .locals 1
    .param p1, "rootState"    # Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;

    .prologue
    .line 238
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 240
    :goto_0
    return v0

    .line 239
    :cond_0
    iput-object p1, p0, Lcom/lzx/iteam/keyboard/SoftKeyToggle;->mToggleState:Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;

    .line 240
    const/4 v0, 0x1

    goto :goto_0
.end method
