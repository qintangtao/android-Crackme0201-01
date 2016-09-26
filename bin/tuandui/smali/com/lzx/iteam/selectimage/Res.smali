.class public Lcom/lzx/iteam/selectimage/Res;
.super Ljava/lang/Object;
.source "Res.java"


# static fields
.field private static pkgName:Ljava/lang/String;

.field private static resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnimID(Ljava/lang/String;)I
    .locals 3
    .param p0, "animName"    # Ljava/lang/String;

    .prologue
    .line 46
    sget-object v0, Lcom/lzx/iteam/selectimage/Res;->resources:Landroid/content/res/Resources;

    const-string v1, "anim"

    sget-object v2, Lcom/lzx/iteam/selectimage/Res;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getAttrID(Ljava/lang/String;)I
    .locals 3
    .param p0, "attrName"    # Ljava/lang/String;

    .prologue
    .line 91
    sget-object v0, Lcom/lzx/iteam/selectimage/Res;->resources:Landroid/content/res/Resources;

    const-string v1, "attr"

    sget-object v2, Lcom/lzx/iteam/selectimage/Res;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getColor(Ljava/lang/String;)I
    .locals 2
    .param p0, "colorName"    # Ljava/lang/String;

    .prologue
    .line 106
    sget-object v0, Lcom/lzx/iteam/selectimage/Res;->resources:Landroid/content/res/Resources;

    invoke-static {p0}, Lcom/lzx/iteam/selectimage/Res;->getColorID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public static getColorID(Ljava/lang/String;)I
    .locals 3
    .param p0, "colorName"    # Ljava/lang/String;

    .prologue
    .line 101
    sget-object v0, Lcom/lzx/iteam/selectimage/Res;->resources:Landroid/content/res/Resources;

    const-string v1, "color"

    sget-object v2, Lcom/lzx/iteam/selectimage/Res;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getDimenID(Ljava/lang/String;)I
    .locals 3
    .param p0, "dimenName"    # Ljava/lang/String;

    .prologue
    .line 96
    sget-object v0, Lcom/lzx/iteam/selectimage/Res;->resources:Landroid/content/res/Resources;

    const-string v1, "dimen"

    sget-object v2, Lcom/lzx/iteam/selectimage/Res;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "drawName"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-static {p0}, Lcom/lzx/iteam/selectimage/Res;->getDrawableID(Ljava/lang/String;)I

    move-result v0

    .line 82
    .local v0, "drawId":I
    sget-object v1, Lcom/lzx/iteam/selectimage/Res;->resources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public static getDrawableID(Ljava/lang/String;)I
    .locals 3
    .param p0, "drawName"    # Ljava/lang/String;

    .prologue
    .line 76
    sget-object v0, Lcom/lzx/iteam/selectimage/Res;->resources:Landroid/content/res/Resources;

    const-string v1, "drawable"

    sget-object v2, Lcom/lzx/iteam/selectimage/Res;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getInteger(Ljava/lang/String;)[I
    .locals 4
    .param p0, "strName"    # Ljava/lang/String;

    .prologue
    .line 127
    sget-object v0, Lcom/lzx/iteam/selectimage/Res;->resources:Landroid/content/res/Resources;

    sget-object v1, Lcom/lzx/iteam/selectimage/Res;->resources:Landroid/content/res/Resources;

    const-string v2, "array"

    .line 128
    sget-object v3, Lcom/lzx/iteam/selectimage/Res;->pkgName:Ljava/lang/String;

    .line 127
    invoke-virtual {v1, p0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    return-object v0
.end method

.method public static getLayoutID(Ljava/lang/String;)I
    .locals 3
    .param p0, "layoutName"    # Ljava/lang/String;

    .prologue
    .line 33
    sget-object v0, Lcom/lzx/iteam/selectimage/Res;->resources:Landroid/content/res/Resources;

    const-string v1, "layout"

    sget-object v2, Lcom/lzx/iteam/selectimage/Res;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getRawID(Ljava/lang/String;)I
    .locals 3
    .param p0, "rawName"    # Ljava/lang/String;

    .prologue
    .line 68
    sget-object v0, Lcom/lzx/iteam/selectimage/Res;->resources:Landroid/content/res/Resources;

    const-string v1, "raw"

    sget-object v2, Lcom/lzx/iteam/selectimage/Res;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "strName"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-static {p0}, Lcom/lzx/iteam/selectimage/Res;->getStringID(Ljava/lang/String;)I

    move-result v0

    .line 122
    .local v0, "strId":I
    sget-object v1, Lcom/lzx/iteam/selectimage/Res;->resources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getStringID(Ljava/lang/String;)I
    .locals 3
    .param p0, "strName"    # Ljava/lang/String;

    .prologue
    .line 116
    sget-object v0, Lcom/lzx/iteam/selectimage/Res;->resources:Landroid/content/res/Resources;

    const-string v1, "string"

    sget-object v2, Lcom/lzx/iteam/selectimage/Res;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getStyleID(Ljava/lang/String;)I
    .locals 3
    .param p0, "styleName"    # Ljava/lang/String;

    .prologue
    .line 111
    sget-object v0, Lcom/lzx/iteam/selectimage/Res;->resources:Landroid/content/res/Resources;

    const-string v1, "style"

    sget-object v2, Lcom/lzx/iteam/selectimage/Res;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getWidgetID(Ljava/lang/String;)I
    .locals 3
    .param p0, "widgetName"    # Ljava/lang/String;

    .prologue
    .line 38
    sget-object v0, Lcom/lzx/iteam/selectimage/Res;->resources:Landroid/content/res/Resources;

    const-string v1, "id"

    sget-object v2, Lcom/lzx/iteam/selectimage/Res;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getXml(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 2
    .param p0, "xmlName"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-static {p0}, Lcom/lzx/iteam/selectimage/Res;->getXmlID(Ljava/lang/String;)I

    move-result v0

    .line 60
    .local v0, "xmlId":I
    sget-object v1, Lcom/lzx/iteam/selectimage/Res;->resources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    return-object v1
.end method

.method public static getXmlID(Ljava/lang/String;)I
    .locals 3
    .param p0, "xmlName"    # Ljava/lang/String;

    .prologue
    .line 54
    sget-object v0, Lcom/lzx/iteam/selectimage/Res;->resources:Landroid/content/res/Resources;

    const-string v1, "xml"

    sget-object v2, Lcom/lzx/iteam/selectimage/Res;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lzx/iteam/selectimage/Res;->pkgName:Ljava/lang/String;

    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/lzx/iteam/selectimage/Res;->resources:Landroid/content/res/Resources;

    .line 26
    return-void
.end method
