.class public Lcom/lzx/iteam/util/SkinUtil;
.super Ljava/lang/Object;
.source "SkinUtil.java"


# static fields
.field public static final SKIN_H_T9:I = 0x3

.field public static final SKIN_V_QWERTY:I = 0x2

.field public static final SKIN_V_T9:I = 0x1


# instance fields
.field public mSkinType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x1

    iput v0, p0, Lcom/lzx/iteam/util/SkinUtil;->mSkinType:I

    .line 10
    return-void
.end method

.method public static filter(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "xmlStr"    # Ljava/lang/String;

    .prologue
    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 37
    .local v1, "chs":[C
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 37
    :cond_0
    aget-char v0, v1, v3

    .line 38
    .local v0, "ch":C
    if-ltz v0, :cond_1

    const/16 v5, 0x8

    if-le v0, v5, :cond_4

    .line 39
    :cond_1
    const/16 v5, 0xb

    if-lt v0, v5, :cond_2

    const/16 v5, 0xc

    if-le v0, v5, :cond_4

    .line 40
    :cond_2
    const/16 v5, 0xe

    if-lt v0, v5, :cond_3

    const/16 v5, 0x1f

    if-le v0, v5, :cond_4

    .line 42
    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static parseColorProperty(Lorg/w3c/dom/Element;)I
    .locals 8
    .param p0, "arrElement"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v1, 0x0

    .line 23
    if-nez p0, :cond_0

    .line 31
    :goto_0
    return v1

    .line 26
    :cond_0
    const-string v5, "integer"

    invoke-interface {p0, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 27
    .local v4, "rgb":Lorg/w3c/dom/NodeList;
    invoke-interface {v4, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 28
    .local v3, "r":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .line 29
    .local v2, "g":Ljava/lang/String;
    const/4 v5, 0x2

    invoke-interface {v4, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "b":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    .line 31
    .local v1, "color":I
    goto :goto_0
.end method

.method public static setbg([ILandroid/content/res/Resources;)Landroid/graphics/drawable/StateListDrawable;
    .locals 6
    .param p0, "stateList"    # [I
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v5, 0x0

    .line 50
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 51
    .local v0, "bg":Landroid/graphics/drawable/StateListDrawable;
    aget v3, p0, v5

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 53
    .local v1, "normal":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x2

    aget v3, p0, v3

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 57
    .local v2, "pressed":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x1

    new-array v3, v3, [I

    const v4, 0x10100a7

    aput v4, v3, v5

    invoke-virtual {v0, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 59
    new-array v3, v5, [I

    invoke-virtual {v0, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 60
    return-object v0
.end method

.method public static setbg([ILandroid/content/res/Resources;Landroid/content/res/Resources;)Landroid/graphics/drawable/StateListDrawable;
    .locals 6
    .param p0, "stateList"    # [I
    .param p1, "newres"    # Landroid/content/res/Resources;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v5, 0x0

    .line 64
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 65
    .local v0, "bg":Landroid/graphics/drawable/StateListDrawable;
    aget v3, p0, v5

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 66
    .local v1, "normal":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x2

    aget v3, p0, v3

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 67
    .local v2, "pressed":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x1

    new-array v3, v3, [I

    const v4, 0x10100a7

    aput v4, v3, v5

    invoke-virtual {v0, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 68
    new-array v3, v5, [I

    invoke-virtual {v0, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 69
    return-object v0
.end method
