.class public Lcom/lzx/iteam/keyboard/SkbTemplate;
.super Ljava/lang/Object;
.source "SkbTemplate.java"


# instance fields
.field private mBalloonBg:Landroid/graphics/drawable/Drawable;

.field private mKeyIconRecords:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/lzx/iteam/keyboard/KeyIconRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyRecords:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/lzx/iteam/keyboard/KeyRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyTypeList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/lzx/iteam/keyboard/SoftKeyType;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupBg:Landroid/graphics/drawable/Drawable;

.field private mSkbBg:Landroid/graphics/drawable/Drawable;

.field private mSkbTemplateId:I

.field private mXMargin:F

.field private mYMargin:F


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "skbTemplateId"    # I

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput v0, p0, Lcom/lzx/iteam/keyboard/SkbTemplate;->mXMargin:F

    .line 55
    iput v0, p0, Lcom/lzx/iteam/keyboard/SkbTemplate;->mYMargin:F

    .line 57
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/keyboard/SkbTemplate;->mKeyTypeList:Ljava/util/Vector;

    .line 62
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/keyboard/SkbTemplate;->mKeyIconRecords:Ljava/util/Vector;

    .line 67
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/keyboard/SkbTemplate;->mKeyRecords:Ljava/util/Vector;

    .line 70
    iput p1, p0, Lcom/lzx/iteam/keyboard/SkbTemplate;->mSkbTemplateId:I

    .line 71
    return-void
.end method


# virtual methods
.method public addDefaultKey(ILcom/lzx/iteam/keyboard/SoftKey;)V
    .locals 4
    .param p1, "keyId"    # I
    .param p2, "softKey"    # Lcom/lzx/iteam/keyboard/SoftKey;

    .prologue
    .line 178
    if-nez p2, :cond_0

    .line 191
    :goto_0
    return-void

    .line 180
    :cond_0
    new-instance v0, Lcom/lzx/iteam/keyboard/KeyRecord;

    invoke-direct {v0}, Lcom/lzx/iteam/keyboard/KeyRecord;-><init>()V

    .line 181
    .local v0, "keyRecord":Lcom/lzx/iteam/keyboard/KeyRecord;
    iput p1, v0, Lcom/lzx/iteam/keyboard/KeyRecord;->keyId:I

    .line 182
    iput-object p2, v0, Lcom/lzx/iteam/keyboard/KeyRecord;->softKey:Lcom/lzx/iteam/keyboard/SoftKey;

    .line 184
    iget-object v3, p0, Lcom/lzx/iteam/keyboard/SkbTemplate;->mKeyRecords:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 185
    .local v2, "size":I
    const/4 v1, 0x0

    .line 186
    .local v1, "pos":I
    :goto_1
    if-lt v1, v2, :cond_2

    .line 190
    :cond_1
    iget-object v3, p0, Lcom/lzx/iteam/keyboard/SkbTemplate;->mKeyRecords:Ljava/util/Vector;

    invoke-virtual {v3, v1, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 187
    :cond_2
    iget-object v3, p0, Lcom/lzx/iteam/keyboard/SkbTemplate;->mKeyRecords:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/keyboard/KeyRecord;

    iget v3, v3, Lcom/lzx/iteam/keyboard/KeyRecord;->keyId:I

    if-ge v3, p1, :cond_1

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public addDefaultKeyIcons(ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "iconPopup"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 127
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    new-instance v0, Lcom/lzx/iteam/keyboard/KeyIconRecord;

    invoke-direct {v0}, Lcom/lzx/iteam/keyboard/KeyIconRecord;-><init>()V

    .line 130
    .local v0, "iconRecord":Lcom/lzx/iteam/keyboard/KeyIconRecord;
    iput-object p2, v0, Lcom/lzx/iteam/keyboard/KeyIconRecord;->icon:Landroid/graphics/drawable/Drawable;

    .line 131
    iput-object p3, v0, Lcom/lzx/iteam/keyboard/KeyIconRecord;->iconPopup:Landroid/graphics/drawable/Drawable;

    .line 132
    iput p1, v0, Lcom/lzx/iteam/keyboard/KeyIconRecord;->keyCode:I

    .line 134
    iget-object v3, p0, Lcom/lzx/iteam/keyboard/SkbTemplate;->mKeyIconRecords:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 135
    .local v2, "size":I
    const/4 v1, 0x0

    .line 136
    .local v1, "pos":I
    :goto_1
    if-lt v1, v2, :cond_3

    .line 140
    :cond_2
    iget-object v3, p0, Lcom/lzx/iteam/keyboard/SkbTemplate;->mKeyIconRecords:Ljava/util/Vector;

    invoke-virtual {v3, v1, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 137
    :cond_3
    iget-object v3, p0, Lcom/lzx/iteam/keyboard/SkbTemplate;->mKeyIconRecords:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/keyboard/KeyIconRecord;

    iget v3, v3, Lcom/lzx/iteam/keyboard/KeyIconRecord;->keyCode:I

    if-ge v3, p1, :cond_2

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public addKeyType(Lcom/lzx/iteam/keyboard/SoftKeyType;)Z
    .locals 2
    .param p1, "keyType"    # Lcom/lzx/iteam/keyboard/SoftKeyType;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SkbTemplate;->mKeyTypeList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget v1, p1, Lcom/lzx/iteam/keyboard/SoftKeyType;->mKeyTypeId:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 117
    :goto_0
    return v0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SkbTemplate;->mKeyTypeList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 117
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public createKeyType(ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/lzx/iteam/keyboard/SoftKeyType;
    .locals 1
    .param p1, "id"    # I
    .param p2, "bg"    # Landroid/graphics/drawable/Drawable;
    .param p3, "hlBg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 110
    new-instance v0, Lcom/lzx/iteam/keyboard/SoftKeyType;

    invoke-direct {v0, p1, p2, p3}, Lcom/lzx/iteam/keyboard/SoftKeyType;-><init>(ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public getBalloonBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SkbTemplate;->mBalloonBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDefaultKey(I)Lcom/lzx/iteam/keyboard/SoftKey;
    .locals 5
    .param p1, "keyId"    # I

    .prologue
    const/4 v3, 0x0

    .line 194
    iget-object v4, p0, Lcom/lzx/iteam/keyboard/SkbTemplate;->mKeyRecords:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v2

    .line 195
    .local v2, "size":I
    const/4 v1, 0x0

    .line 196
    .local v1, "pos":I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 207
    :cond_0
    :goto_1
    return-object v3

    .line 197
    :cond_1
    iget-object v4, p0, Lcom/lzx/iteam/keyboard/SkbTemplate;->mKeyRecords:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/keyboard/KeyRecord;

    .line 198
    .local v0, "keyRecord":Lcom/lzx/iteam/keyboard/KeyRecord;
    iget v4, v0, Lcom/lzx/iteam/keyboard/KeyRecord;->keyId:I

    if-ge v4, p1, :cond_2

    .line 199
    add-int/lit8 v1, v1, 0x1

    .line 200
    goto :goto_0

    .line 202
    :cond_2
    iget v4, v0, Lcom/lzx/iteam/keyboard/KeyRecord;->keyId:I

    if-ne v4, p1, :cond_0

    .line 203
    iget-object v3, v0, Lcom/lzx/iteam/keyboard/KeyRecord;->softKey:Lcom/lzx/iteam/keyboard/SoftKey;

    goto :goto_1
.end method

.method public getDefaultKeyIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "keyCode"    # I

    .prologue
    const/4 v3, 0x0

    .line 144
    iget-object v4, p0, Lcom/lzx/iteam/keyboard/SkbTemplate;->mKeyIconRecords:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v2

    .line 145
    .local v2, "size":I
    const/4 v1, 0x0

    .line 146
    .local v1, "pos":I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 157
    :cond_0
    :goto_1
    return-object v3

    .line 147
    :cond_1
    iget-object v4, p0, Lcom/lzx/iteam/keyboard/SkbTemplate;->mKeyIconRecords:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/keyboard/KeyIconRecord;

    .line 148
    .local v0, "iconRecord":Lcom/lzx/iteam/keyboard/KeyIconRecord;
    iget v4, v0, Lcom/lzx/iteam/keyboard/KeyIconRecord;->keyCode:I

    if-ge v4, p1, :cond_2

    .line 149
    add-int/lit8 v1, v1, 0x1

    .line 150
    goto :goto_0

    .line 152
    :cond_2
    iget v4, v0, Lcom/lzx/iteam/keyboard/KeyIconRecord;->keyCode:I

    if-ne v4, p1, :cond_0

    .line 153
    iget-object v3, v0, Lcom/lzx/iteam/keyboard/KeyIconRecord;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public getDefaultKeyIconPopup(I)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "keyCode"    # I

    .prologue
    const/4 v3, 0x0

    .line 161
    iget-object v4, p0, Lcom/lzx/iteam/keyboard/SkbTemplate;->mKeyIconRecords:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v2

    .line 162
    .local v2, "size":I
    const/4 v1, 0x0

    .line 163
    .local v1, "pos":I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 174
    :cond_0
    :goto_1
    return-object v3

    .line 164
    :cond_1
    iget-object v4, p0, Lcom/lzx/iteam/keyboard/SkbTemplate;->mKeyIconRecords:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/keyboard/KeyIconRecord;

    .line 165
    .local v0, "iconRecord":Lcom/lzx/iteam/keyboard/KeyIconRecord;
    iget v4, v0, Lcom/lzx/iteam/keyboard/KeyIconRecord;->keyCode:I

    if-ge v4, p1, :cond_2

    .line 166
    add-int/lit8 v1, v1, 0x1

    .line 167
    goto :goto_0

    .line 169
    :cond_2
    iget v4, v0, Lcom/lzx/iteam/keyboard/KeyIconRecord;->keyCode:I

    if-ne v4, p1, :cond_0

    .line 170
    iget-object v3, v0, Lcom/lzx/iteam/keyboard/KeyIconRecord;->iconPopup:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public getKeyType(I)Lcom/lzx/iteam/keyboard/SoftKeyType;
    .locals 1
    .param p1, "typeId"    # I

    .prologue
    .line 121
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SkbTemplate;->mKeyTypeList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 122
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SkbTemplate;->mKeyTypeList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/keyboard/SoftKeyType;

    goto :goto_0
.end method

.method public getPopupBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SkbTemplate;->mPopupBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSkbBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SkbTemplate;->mSkbBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSkbTemplateId()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/lzx/iteam/keyboard/SkbTemplate;->mSkbTemplateId:I

    return v0
.end method

.method public getXMargin()F
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/lzx/iteam/keyboard/SkbTemplate;->mXMargin:F

    return v0
.end method

.method public getYMargin()F
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/lzx/iteam/keyboard/SkbTemplate;->mYMargin:F

    return v0
.end method

.method public setBackgrounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "skbBg"    # Landroid/graphics/drawable/Drawable;
    .param p2, "balloonBg"    # Landroid/graphics/drawable/Drawable;
    .param p3, "popupBg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/lzx/iteam/keyboard/SkbTemplate;->mSkbBg:Landroid/graphics/drawable/Drawable;

    .line 80
    iput-object p2, p0, Lcom/lzx/iteam/keyboard/SkbTemplate;->mBalloonBg:Landroid/graphics/drawable/Drawable;

    .line 81
    iput-object p3, p0, Lcom/lzx/iteam/keyboard/SkbTemplate;->mPopupBg:Landroid/graphics/drawable/Drawable;

    .line 82
    return-void
.end method

.method public setMargins(FF)V
    .locals 0
    .param p1, "xMargin"    # F
    .param p2, "yMargin"    # F

    .prologue
    .line 97
    iput p1, p0, Lcom/lzx/iteam/keyboard/SkbTemplate;->mXMargin:F

    .line 98
    iput p2, p0, Lcom/lzx/iteam/keyboard/SkbTemplate;->mYMargin:F

    .line 99
    return-void
.end method
