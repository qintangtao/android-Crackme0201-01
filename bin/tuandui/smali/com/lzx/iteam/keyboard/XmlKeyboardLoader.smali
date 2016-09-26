.class public Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;
.super Ljava/lang/Object;
.source "XmlKeyboardLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/keyboard/XmlKeyboardLoader$KeyCommonAttributes;
    }
.end annotation


# static fields
.field private static DEFAULT_SKB_CACHE_FLAG:Z = false

.field private static DEFAULT_SKB_STICKY_FLAG:Z = false

.field private static final KEYTYPE_ID_LAST:I = -0x1

.field private static final XMLATTR_BALLOON_BG:Ljava/lang/String; = "balloon_bg"

.field private static final XMLATTR_COLOR:Ljava/lang/String; = "color"

.field private static final XMLATTR_COLOR_BALLOON:Ljava/lang/String; = "color_balloon"

.field private static final XMLATTR_COLOR_HIGHLIGHT:Ljava/lang/String; = "color_highlight"

.field private static final XMLATTR_ID:Ljava/lang/String; = "id"

.field private static final XMLATTR_KEYTYPE_BG:Ljava/lang/String; = "bg"

.field private static final XMLATTR_KEYTYPE_HLBG:Ljava/lang/String; = "hlbg"

.field private static final XMLATTR_KEY_BALLOON:Ljava/lang/String; = "balloon"

.field private static final XMLATTR_KEY_BALLOON_BACKGROUND:Ljava/lang/String; = "balloon_bg"

.field private static final XMLATTR_KEY_CODE:Ljava/lang/String; = "code"

.field private static final XMLATTR_KEY_CODES:Ljava/lang/String; = "codes"

.field private static final XMLATTR_KEY_HEIGHT:Ljava/lang/String; = "height"

.field private static final XMLATTR_KEY_ICON:Ljava/lang/String; = "icon"

.field private static final XMLATTR_KEY_ICON_POPUP:Ljava/lang/String; = "icon_popup"

.field private static final XMLATTR_KEY_LABEL:Ljava/lang/String; = "label"

.field private static final XMLATTR_KEY_LABELS:Ljava/lang/String; = "labels"

.field private static final XMLATTR_KEY_POPUP_SKBID:Ljava/lang/String; = "popup_skb"

.field private static final XMLATTR_KEY_REPEAT:Ljava/lang/String; = "repeat"

.field private static final XMLATTR_KEY_SPLITTER:Ljava/lang/String; = "splitter"

.field private static final XMLATTR_KEY_TYPE:Ljava/lang/String; = "key_type"

.field private static final XMLATTR_KEY_WIDTH:Ljava/lang/String; = "width"

.field private static final XMLATTR_KEY_XMARGIN:Ljava/lang/String; = "key_xmargin"

.field private static final XMLATTR_KEY_YMARGIN:Ljava/lang/String; = "key_ymargin"

.field private static final XMLATTR_POPUP_BG:Ljava/lang/String; = "popup_bg"

.field private static final XMLATTR_QWERTY:Ljava/lang/String; = "qwerty"

.field private static final XMLATTR_QWERTY_UPPERCASE:Ljava/lang/String; = "qwerty_uppercase"

.field private static final XMLATTR_ROW_ID:Ljava/lang/String; = "row_id"

.field private static final XMLATTR_SKB_BG:Ljava/lang/String; = "skb_bg"

.field private static final XMLATTR_SKB_CACHE_FLAG:Ljava/lang/String; = "skb_cache_flag"

.field private static final XMLATTR_SKB_STICKY_FLAG:Ljava/lang/String; = "skb_sticky_flag"

.field private static final XMLATTR_SKB_TEMPLATE:Ljava/lang/String; = "skb_template"

.field private static final XMLATTR_START_POS_X:Ljava/lang/String; = "start_pos_x"

.field private static final XMLATTR_START_POS_Y:Ljava/lang/String; = "start_pos_y"

.field private static final XMLATTR_TOGGLE_STATE_ID:Ljava/lang/String; = "state_id"

.field private static final XMLTAG_KEY:Ljava/lang/String; = "key"

.field private static final XMLTAG_KEYBOARD:Ljava/lang/String; = "keyboard"

.field private static final XMLTAG_KEYICON:Ljava/lang/String; = "key_icon"

.field private static final XMLTAG_KEYS:Ljava/lang/String; = "keys"

.field private static final XMLTAG_KEYTYPE:Ljava/lang/String; = "key_type"

.field private static final XMLTAG_ROW:Ljava/lang/String; = "row"

.field private static final XMLTAG_SKB_TEMPLATE:Ljava/lang/String; = "skb_template"

.field private static final XMLTAG_TOGGLE_STATE:Ljava/lang/String; = "toggle_state"


# instance fields
.field mAttrTmp:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field mKeyXMargin:F

.field mKeyXPos:F

.field mKeyYMargin:F

.field mKeyYPos:F

.field mNextEventFetched:Z

.field private mResources:Landroid/content/res/Resources;

.field mSkbHeight:I

.field private mSkbTemplate:Lcom/lzx/iteam/keyboard/SkbTemplate;

.field mSkbWidth:I

.field private mXmlEventType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 246
    sput-boolean v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->DEFAULT_SKB_CACHE_FLAG:Z

    .line 248
    sput-boolean v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->DEFAULT_SKB_STICKY_FLAG:Z

    .line 254
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput v0, p0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mKeyXMargin:F

    .line 285
    iput v0, p0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mKeyYMargin:F

    .line 291
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mNextEventFetched:Z

    .line 323
    iput-object p1, p0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mContext:Landroid/content/Context;

    .line 324
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mResources:Landroid/content/res/Resources;

    .line 325
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 761
    invoke-direct {p0, p1, p2, p3}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F
    .locals 1

    .prologue
    .line 804
    invoke-direct {p0, p1, p2, p3}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 825
    invoke-direct {p0, p1, p2, p3}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->getBoolean(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private getBoolean(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "xrp"    # Landroid/content/res/XmlResourceParser;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defValue"    # Z

    .prologue
    .line 827
    const/4 v2, 0x0

    invoke-interface {p1, v2, p2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 828
    .local v1, "s":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 833
    .end local p3    # "defValue":Z
    :goto_0
    return p3

    .line 830
    .restart local p3    # "defValue":Z
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .local v0, "ret":Z
    move p3, v0

    .line 831
    goto :goto_0

    .line 833
    .end local v0    # "ret":Z
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private getColor(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I
    .locals 5
    .param p1, "xrp"    # Landroid/content/res/XmlResourceParser;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defValue"    # I

    .prologue
    const/4 v4, 0x0

    .line 779
    const/4 v3, 0x0

    invoke-interface {p1, v4, p2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 781
    .local v0, "resId":I
    if-nez v0, :cond_1

    .line 782
    invoke-interface {p1, v4, p2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 783
    .local v2, "s":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 791
    .end local v2    # "s":Ljava/lang/String;
    .end local p3    # "defValue":I
    :goto_0
    return p3

    .line 785
    .restart local v2    # "s":Ljava/lang/String;
    .restart local p3    # "defValue":I
    :cond_0
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .local v1, "ret":I
    move p3, v1

    .line 786
    goto :goto_0

    .line 791
    .end local v1    # "ret":I
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    goto :goto_0

    .line 788
    .restart local v2    # "s":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "xrp"    # Landroid/content/res/XmlResourceParser;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defValue"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 839
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p1, v1, p2, v2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 840
    .local v0, "resId":I
    if-nez v0, :cond_0

    .line 841
    .end local p3    # "defValue":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object p3

    .restart local p3    # "defValue":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_0
.end method

.method private getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F
    .locals 5
    .param p1, "xrp"    # Landroid/content/res/XmlResourceParser;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defValue"    # F

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 805
    invoke-interface {p1, v4, p2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 806
    .local v0, "resId":I
    if-nez v0, :cond_2

    .line 807
    invoke-interface {p1, v4, p2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 808
    .local v2, "s":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 821
    .end local v2    # "s":Ljava/lang/String;
    .end local p3    # "defValue":F
    :goto_0
    return p3

    .line 811
    .restart local v2    # "s":Ljava/lang/String;
    .restart local p3    # "defValue":F
    :cond_0
    :try_start_0
    const-string v3, "%p"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 812
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float v1, v3, v4

    .local v1, "ret":F
    :goto_1
    move p3, v1

    .line 816
    goto :goto_0

    .line 814
    .end local v1    # "ret":F
    :cond_1
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .restart local v1    # "ret":F
    goto :goto_1

    .line 821
    .end local v1    # "ret":F
    .end local v2    # "s":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    goto :goto_0

    .line 818
    .restart local v2    # "s":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I
    .locals 5
    .param p1, "xrp"    # Landroid/content/res/XmlResourceParser;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defValue"    # I

    .prologue
    const/4 v4, 0x0

    .line 762
    const/4 v3, 0x0

    invoke-interface {p1, v4, p2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 764
    .local v0, "resId":I
    if-nez v0, :cond_1

    .line 765
    invoke-interface {p1, v4, p2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 766
    .local v2, "s":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 774
    .end local v2    # "s":Ljava/lang/String;
    .end local p3    # "defValue":I
    :goto_0
    return p3

    .line 768
    .restart local v2    # "s":Ljava/lang/String;
    .restart local p3    # "defValue":I
    :cond_0
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .local v1, "ret":I
    move p3, v1

    .line 769
    goto :goto_0

    .line 774
    .end local v1    # "ret":I
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    goto :goto_0

    .line 771
    .restart local v2    # "s":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private getSoftKey(Landroid/content/res/XmlResourceParser;Lcom/lzx/iteam/keyboard/XmlKeyboardLoader$KeyCommonAttributes;)Lcom/lzx/iteam/keyboard/SoftKey;
    .locals 20
    .param p1, "xrp"    # Landroid/content/res/XmlResourceParser;
    .param p2, "attrKey"    # Lcom/lzx/iteam/keyboard/XmlKeyboardLoader$KeyCommonAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 636
    const-string v17, "code"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v6

    .line 637
    .local v6, "keyCode":I
    const-string v17, "label"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->getString(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 638
    .local v10, "keyLabel":Ljava/lang/String;
    const-string v17, "icon"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 639
    .local v7, "keyIcon":Landroid/graphics/drawable/Drawable;
    const-string v17, "icon_popup"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 640
    .local v9, "keyIconPopup":Landroid/graphics/drawable/Drawable;
    const-string v17, "balloon_bg"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 641
    .local v8, "keyIconBalloonBackground":Landroid/graphics/drawable/Drawable;
    const-string v17, "balloon"

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->getBoolean(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Z)Z

    move-result v4

    .line 644
    .local v4, "balloon":Z
    if-nez v4, :cond_0

    .line 645
    move-object/from16 v0, p2

    iput-boolean v4, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader$KeyCommonAttributes;->balloon:Z

    .line 648
    :cond_0
    const/16 v17, 0x0

    .line 649
    const-string v18, "popup_skb"

    const/16 v19, 0x0

    .line 648
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v12

    .line 651
    .local v12, "popupSkbId":I
    if-nez v10, :cond_2

    if-nez v7, :cond_2

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mSkbTemplate:Lcom/lzx/iteam/keyboard/SkbTemplate;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/keyboard/SkbTemplate;->getDefaultKeyIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mSkbTemplate:Lcom/lzx/iteam/keyboard/SkbTemplate;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/keyboard/SkbTemplate;->getDefaultKeyIconPopup(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 654
    if-eqz v7, :cond_1

    if-nez v9, :cond_2

    :cond_1
    const/4 v14, 0x0

    .line 702
    :goto_0
    return-object v14

    .line 661
    :cond_2
    move-object/from16 v0, p0

    iget v11, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mKeyXPos:F

    .line 662
    .local v11, "left":F
    move-object/from16 v0, p2

    iget v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader$KeyCommonAttributes;->keyWidth:F

    move/from16 v17, v0

    add-float v13, v11, v17

    .line 663
    .local v13, "right":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mKeyYPos:F

    move/from16 v16, v0

    .line 664
    .local v16, "top":F
    move-object/from16 v0, p2

    iget v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader$KeyCommonAttributes;->keyHeight:F

    move/from16 v17, v0

    add-float v5, v16, v17

    .line 666
    .local v5, "bottom":F
    sub-float v17, v13, v11

    const/high16 v18, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mKeyXMargin:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    cmpg-float v17, v17, v18

    if-gez v17, :cond_3

    const/4 v14, 0x0

    goto :goto_0

    .line 667
    :cond_3
    sub-float v17, v5, v16

    const/high16 v18, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mKeyYMargin:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    cmpg-float v17, v17, v18

    if-gez v17, :cond_4

    const/4 v14, 0x0

    goto :goto_0

    .line 672
    :cond_4
    const/4 v15, 0x0

    .line 673
    .local v15, "toggleKey":Z
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mXmlEventType:I

    .line 674
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mNextEventFetched:Z

    .line 677
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mXmlEventType:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 678
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mAttrTmp:Ljava/lang/String;

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mAttrTmp:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "toggle_state"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_5

    .line 680
    const/4 v15, 0x1

    .line 683
    :cond_5
    if-eqz v15, :cond_6

    .line 684
    new-instance v14, Lcom/lzx/iteam/keyboard/SoftKeyToggle;

    invoke-direct {v14}, Lcom/lzx/iteam/keyboard/SoftKeyToggle;-><init>()V

    .local v14, "softKey":Lcom/lzx/iteam/keyboard/SoftKey;
    move-object/from16 v17, v14

    .line 685
    check-cast v17, Lcom/lzx/iteam/keyboard/SoftKeyToggle;

    move-object/from16 v18, v14

    .line 686
    check-cast v18, Lcom/lzx/iteam/keyboard/SoftKeyToggle;

    .line 685
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v6}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->getToggleStates(Lcom/lzx/iteam/keyboard/XmlKeyboardLoader$KeyCommonAttributes;Lcom/lzx/iteam/keyboard/SoftKeyToggle;I)Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/lzx/iteam/keyboard/SoftKeyToggle;->setToggleStates(Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;)Z

    move-result v17

    .line 686
    if-nez v17, :cond_7

    .line 687
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 690
    .end local v14    # "softKey":Lcom/lzx/iteam/keyboard/SoftKey;
    :cond_6
    new-instance v14, Lcom/lzx/iteam/keyboard/SoftKey;

    invoke-direct {v14}, Lcom/lzx/iteam/keyboard/SoftKey;-><init>()V

    .line 694
    .restart local v14    # "softKey":Lcom/lzx/iteam/keyboard/SoftKey;
    :cond_7
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader$KeyCommonAttributes;->repeat:Z

    move/from16 v17, v0

    .line 695
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader$KeyCommonAttributes;->balloon:Z

    move/from16 v18, v0

    .line 694
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v6, v10, v0, v1}, Lcom/lzx/iteam/keyboard/SoftKey;->setKeyAttribute(ILjava/lang/String;ZZ)V

    .line 696
    invoke-virtual {v14, v12}, Lcom/lzx/iteam/keyboard/SoftKey;->setPopupSkbId(I)V

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mSkbTemplate:Lcom/lzx/iteam/keyboard/SkbTemplate;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader$KeyCommonAttributes;->keyType:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/lzx/iteam/keyboard/SkbTemplate;->getKeyType(I)Lcom/lzx/iteam/keyboard/SoftKeyType;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0, v7, v9}, Lcom/lzx/iteam/keyboard/SoftKey;->setKeyType(Lcom/lzx/iteam/keyboard/SoftKeyType;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 699
    invoke-virtual {v14, v8}, Lcom/lzx/iteam/keyboard/SoftKey;->setKeyBalloonBackground(Landroid/graphics/drawable/Drawable;)V

    .line 701
    move/from16 v0, v16

    invoke-virtual {v14, v11, v0, v13, v5}, Lcom/lzx/iteam/keyboard/SoftKey;->setKeyDimensions(FFFF)V

    goto/16 :goto_0
.end method

.method private getString(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "xrp"    # Landroid/content/res/XmlResourceParser;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defValue"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 796
    const/4 v1, 0x0

    invoke-interface {p1, v2, p2, v1}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 797
    .local v0, "resId":I
    if-nez v0, :cond_0

    .line 798
    invoke-interface {p1, v2, p2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 800
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getToggleStates(Lcom/lzx/iteam/keyboard/XmlKeyboardLoader$KeyCommonAttributes;Lcom/lzx/iteam/keyboard/SoftKeyToggle;I)Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;
    .locals 15
    .param p1, "attrKey"    # Lcom/lzx/iteam/keyboard/XmlKeyboardLoader$KeyCommonAttributes;
    .param p2, "softKey"    # Lcom/lzx/iteam/keyboard/SoftKeyToggle;
    .param p3, "defKeyCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 708
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader$KeyCommonAttributes;->mXrp:Landroid/content/res/XmlResourceParser;

    .line 709
    .local v12, "xrp":Landroid/content/res/XmlResourceParser;
    const-string v13, "state_id"

    const/4 v14, 0x0

    invoke-direct {p0, v12, v13, v14}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v11

    .line 710
    .local v11, "stateId":I
    if-nez v11, :cond_1

    const/4 v10, 0x0

    .line 758
    :cond_0
    :goto_0
    return-object v10

    .line 712
    :cond_1
    const-string v13, "label"

    const/4 v14, 0x0

    invoke-direct {p0, v12, v13, v14}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->getString(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 713
    .local v6, "keyLabel":Ljava/lang/String;
    const-string v13, "key_type"

    const/4 v14, -0x1

    invoke-direct {p0, v12, v13, v14}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v7

    .line 715
    .local v7, "keyTypeId":I
    if-nez v6, :cond_2

    .line 716
    const-string v13, "code"

    move/from16 v0, p3

    invoke-direct {p0, v12, v13, v0}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v5

    .line 720
    .local v5, "keyCode":I
    :goto_1
    const-string v13, "icon"

    const/4 v14, 0x0

    invoke-direct {p0, v12, v13, v14}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 721
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    const-string v13, "icon_popup"

    const/4 v14, 0x0

    invoke-direct {p0, v12, v13, v14}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 722
    .local v4, "iconPopup":Landroid/graphics/drawable/Drawable;
    if-nez v3, :cond_3

    if-nez v6, :cond_3

    .line 723
    const/4 v10, 0x0

    goto :goto_0

    .line 718
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v4    # "iconPopup":Landroid/graphics/drawable/Drawable;
    .end local v5    # "keyCode":I
    :cond_2
    const-string v13, "code"

    const/4 v14, 0x0

    invoke-direct {p0, v12, v13, v14}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v5

    .restart local v5    # "keyCode":I
    goto :goto_1

    .line 725
    .restart local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "iconPopup":Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/lzx/iteam/keyboard/SoftKeyToggle;->createToggleState()Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;

    move-result-object v10

    .line 726
    .local v10, "rootState":Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;
    invoke-virtual {v10, v11}, Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;->setStateId(I)V

    .line 727
    const/4 v13, 0x0

    iput-object v13, v10, Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;->mKeyType:Lcom/lzx/iteam/keyboard/SoftKeyType;

    .line 728
    const/4 v13, -0x1

    if-eq v13, v7, :cond_4

    .line 729
    iget-object v13, p0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mSkbTemplate:Lcom/lzx/iteam/keyboard/SkbTemplate;

    invoke-virtual {v13, v7}, Lcom/lzx/iteam/keyboard/SkbTemplate;->getKeyType(I)Lcom/lzx/iteam/keyboard/SoftKeyType;

    move-result-object v13

    iput-object v13, v10, Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;->mKeyType:Lcom/lzx/iteam/keyboard/SoftKeyType;

    .line 731
    :cond_4
    iput v5, v10, Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;->mKeyCode:I

    .line 732
    iput-object v3, v10, Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;->mKeyIcon:Landroid/graphics/drawable/Drawable;

    .line 733
    iput-object v4, v10, Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;->mKeyIconPopup:Landroid/graphics/drawable/Drawable;

    .line 734
    iput-object v6, v10, Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;->mKeyLabel:Ljava/lang/String;

    .line 736
    const-string v13, "repeat"

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader$KeyCommonAttributes;->repeat:Z

    invoke-direct {p0, v12, v13, v14}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->getBoolean(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Z)Z

    move-result v9

    .line 737
    .local v9, "repeat":Z
    const-string v13, "balloon"

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader$KeyCommonAttributes;->balloon:Z

    invoke-direct {p0, v12, v13, v14}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->getBoolean(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Z)Z

    move-result v2

    .line 738
    .local v2, "balloon":Z
    invoke-virtual {v10, v9, v2}, Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;->setStateFlags(ZZ)V

    .line 740
    const/4 v13, 0x0

    iput-object v13, v10, Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;->mNextState:Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;

    .line 743
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v13

    iput v13, p0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mXmlEventType:I

    .line 744
    :goto_2
    iget v13, p0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mXmlEventType:I

    const/4 v14, 0x2

    if-eq v13, v14, :cond_5

    .line 745
    iget v13, p0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mXmlEventType:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_6

    .line 748
    :cond_5
    iget v13, p0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mXmlEventType:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_0

    .line 749
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 750
    .local v1, "attr":Ljava/lang/String;
    const-string v13, "toggle_state"

    invoke-virtual {v1, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_0

    .line 751
    invoke-direct/range {p0 .. p3}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->getToggleStates(Lcom/lzx/iteam/keyboard/XmlKeyboardLoader$KeyCommonAttributes;Lcom/lzx/iteam/keyboard/SoftKeyToggle;I)Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;

    move-result-object v8

    .line 753
    .local v8, "nextState":Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;
    if-nez v8, :cond_7

    const/4 v10, 0x0

    goto/16 :goto_0

    .line 746
    .end local v1    # "attr":Ljava/lang/String;
    .end local v8    # "nextState":Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;
    :cond_6
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v13

    iput v13, p0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mXmlEventType:I

    goto :goto_2

    .line 754
    .restart local v1    # "attr":Ljava/lang/String;
    .restart local v8    # "nextState":Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;
    :cond_7
    iput-object v8, v10, Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;->mNextState:Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;

    goto/16 :goto_0
.end method


# virtual methods
.method public loadKeyboard(III)Lcom/lzx/iteam/keyboard/SoftKeyboard;
    .locals 41
    .param p1, "resourceId"    # I
    .param p2, "skbWidth"    # I
    .param p3, "skbHeight"    # I

    .prologue
    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mContext:Landroid/content/Context;

    move-object/from16 v38, v0

    if-nez v38, :cond_0

    const/16 v33, 0x0

    .line 629
    :goto_0
    return-object v33

    .line 431
    :cond_0
    invoke-static {}, Lcom/lzx/iteam/keyboard/SkbPool;->getInstance()Lcom/lzx/iteam/keyboard/SkbPool;

    move-result-object v28

    .line 432
    .local v28, "skbPool":Lcom/lzx/iteam/keyboard/SkbPool;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mContext:Landroid/content/Context;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v37

    .line 433
    .local v37, "xrp":Landroid/content/res/XmlResourceParser;
    const/16 v38, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mSkbTemplate:Lcom/lzx/iteam/keyboard/SkbTemplate;

    .line 434
    const/16 v32, 0x0

    .line 438
    .local v32, "softKeyboard":Lcom/lzx/iteam/keyboard/SoftKeyboard;
    const/16 v30, 0x0

    .line 440
    .local v30, "softKey":Lcom/lzx/iteam/keyboard/SoftKey;
    new-instance v6, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader$KeyCommonAttributes;

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v6, v0, v1}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader$KeyCommonAttributes;-><init>(Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;Landroid/content/res/XmlResourceParser;)V

    .line 441
    .local v6, "attrDef":Lcom/lzx/iteam/keyboard/XmlKeyboardLoader$KeyCommonAttributes;
    new-instance v10, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader$KeyCommonAttributes;

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v10, v0, v1}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader$KeyCommonAttributes;-><init>(Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;Landroid/content/res/XmlResourceParser;)V

    .line 442
    .local v10, "attrSkb":Lcom/lzx/iteam/keyboard/XmlKeyboardLoader$KeyCommonAttributes;
    new-instance v9, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader$KeyCommonAttributes;

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v9, v0, v1}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader$KeyCommonAttributes;-><init>(Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;Landroid/content/res/XmlResourceParser;)V

    .line 443
    .local v9, "attrRow":Lcom/lzx/iteam/keyboard/XmlKeyboardLoader$KeyCommonAttributes;
    new-instance v8, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader$KeyCommonAttributes;

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v8, v0, v1}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader$KeyCommonAttributes;-><init>(Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;Landroid/content/res/XmlResourceParser;)V

    .line 444
    .local v8, "attrKeys":Lcom/lzx/iteam/keyboard/XmlKeyboardLoader$KeyCommonAttributes;
    new-instance v7, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader$KeyCommonAttributes;

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v7, v0, v1}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader$KeyCommonAttributes;-><init>(Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;Landroid/content/res/XmlResourceParser;)V

    .line 446
    .local v7, "attrKey":Lcom/lzx/iteam/keyboard/XmlKeyboardLoader$KeyCommonAttributes;
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mKeyXPos:F

    .line 447
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mKeyYPos:F

    .line 448
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mSkbWidth:I

    .line 449
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mSkbHeight:I

    .line 452
    const/16 v38, 0x0

    :try_start_0
    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mKeyXMargin:F

    .line 453
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mKeyYMargin:F

    .line 454
    invoke-interface/range {v37 .. v37}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mXmlEventType:I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v33, v32

    .line 455
    .end local v32    # "softKeyboard":Lcom/lzx/iteam/keyboard/SoftKeyboard;
    .local v33, "softKeyboard":Lcom/lzx/iteam/keyboard/SoftKeyboard;
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mXmlEventType:I

    move/from16 v38, v0

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_1

    .line 621
    invoke-interface/range {v37 .. v37}, Landroid/content/res/XmlResourceParser;->close()V

    .line 622
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mSkbWidth:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mSkbHeight:I

    move/from16 v39, v0

    move-object/from16 v0, v33

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/keyboard/SoftKeyboard;->setSkbCoreSize(II)V

    goto/16 :goto_0

    .line 624
    :catch_0
    move-exception v38

    move-object/from16 v32, v33

    .line 629
    .end local v33    # "softKeyboard":Lcom/lzx/iteam/keyboard/SoftKeyboard;
    .restart local v32    # "softKeyboard":Lcom/lzx/iteam/keyboard/SoftKeyboard;
    :goto_2
    const/16 v33, 0x0

    goto/16 :goto_0

    .line 456
    .end local v32    # "softKeyboard":Lcom/lzx/iteam/keyboard/SoftKeyboard;
    .restart local v33    # "softKeyboard":Lcom/lzx/iteam/keyboard/SoftKeyboard;
    :cond_1
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mNextEventFetched:Z

    .line 457
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mXmlEventType:I

    move/from16 v38, v0

    const/16 v39, 0x2

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_1c

    .line 458
    invoke-interface/range {v37 .. v37}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 460
    .local v5, "attr":Ljava/lang/String;
    const-string v38, "keyboard"

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v38

    if-nez v38, :cond_8

    .line 462
    const/16 v38, 0x0

    .line 463
    const-string v39, "skb_template"

    const/16 v40, 0x0

    .line 462
    invoke-interface/range {v37 .. v40}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v29

    .line 468
    .local v29, "skbTemplateId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mContext:Landroid/content/Context;

    move-object/from16 v38, v0

    .line 467
    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/keyboard/SkbPool;->getSkbTemplate(ILandroid/content/Context;)Lcom/lzx/iteam/keyboard/SkbTemplate;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mSkbTemplate:Lcom/lzx/iteam/keyboard/SkbTemplate;

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mSkbTemplate:Lcom/lzx/iteam/keyboard/SkbTemplate;

    move-object/from16 v38, v0

    if-eqz v38, :cond_2

    .line 471
    invoke-virtual {v10, v6}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader$KeyCommonAttributes;->getAttributes(Lcom/lzx/iteam/keyboard/XmlKeyboardLoader$KeyCommonAttributes;)Z

    move-result v38

    if-nez v38, :cond_3

    .line 472
    :cond_2
    const/16 v33, 0x0

    goto/16 :goto_0

    .line 476
    :cond_3
    const-string v38, "skb_cache_flag"

    sget-boolean v39, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->DEFAULT_SKB_CACHE_FLAG:Z

    .line 475
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move/from16 v3, v39

    invoke-direct {v0, v1, v2, v3}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->getBoolean(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Z)Z

    move-result v13

    .line 478
    .local v13, "cacheFlag":Z
    const-string v38, "skb_sticky_flag"

    .line 479
    sget-boolean v39, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->DEFAULT_SKB_STICKY_FLAG:Z

    .line 477
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move/from16 v3, v39

    invoke-direct {v0, v1, v2, v3}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->getBoolean(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Z)Z

    move-result v35

    .line 480
    .local v35, "stickyFlag":Z
    const-string v38, "qwerty"

    .line 481
    const/16 v39, 0x0

    .line 480
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move/from16 v3, v39

    invoke-direct {v0, v1, v2, v3}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->getBoolean(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Z)Z

    move-result v17

    .line 483
    .local v17, "isQwerty":Z
    const-string v38, "qwerty_uppercase"

    const/16 v39, 0x0

    .line 482
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move/from16 v3, v39

    invoke-direct {v0, v1, v2, v3}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->getBoolean(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Z)Z

    move-result v18

    .line 485
    .local v18, "isQwertyUpperCase":Z
    new-instance v32, Lcom/lzx/iteam/keyboard/SoftKeyboard;

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mSkbTemplate:Lcom/lzx/iteam/keyboard/SkbTemplate;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mSkbWidth:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mSkbHeight:I

    move/from16 v40, v0

    .line 485
    move-object/from16 v0, v32

    move/from16 v1, p1

    move-object/from16 v2, v38

    move/from16 v3, v39

    move/from16 v4, v40

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lzx/iteam/keyboard/SoftKeyboard;-><init>(ILcom/lzx/iteam/keyboard/SkbTemplate;II)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 487
    .end local v33    # "softKeyboard":Lcom/lzx/iteam/keyboard/SoftKeyboard;
    .restart local v32    # "softKeyboard":Lcom/lzx/iteam/keyboard/SoftKeyboard;
    :try_start_2
    move-object/from16 v0, v32

    move/from16 v1, v35

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v13, v1, v2, v3}, Lcom/lzx/iteam/keyboard/SoftKeyboard;->setFlags(ZZZZ)V

    .line 490
    const-string v38, "key_xmargin"

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mSkbTemplate:Lcom/lzx/iteam/keyboard/SkbTemplate;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/lzx/iteam/keyboard/SkbTemplate;->getXMargin()F

    move-result v39

    .line 490
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move/from16 v3, v39

    invoke-direct {v0, v1, v2, v3}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mKeyXMargin:F

    .line 492
    const-string v38, "key_ymargin"

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mSkbTemplate:Lcom/lzx/iteam/keyboard/SkbTemplate;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/lzx/iteam/keyboard/SkbTemplate;->getYMargin()F

    move-result v39

    .line 492
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move/from16 v3, v39

    invoke-direct {v0, v1, v2, v3}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mKeyYMargin:F

    .line 494
    const-string v38, "skb_bg"

    const/16 v39, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move-object/from16 v3, v39

    invoke-direct {v0, v1, v2, v3}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v27

    .line 495
    .local v27, "skbBg":Landroid/graphics/drawable/Drawable;
    const-string v38, "popup_bg"

    const/16 v39, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move-object/from16 v3, v39

    invoke-direct {v0, v1, v2, v3}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    .line 496
    .local v24, "popupBg":Landroid/graphics/drawable/Drawable;
    const-string v38, "balloon_bg"

    const/16 v39, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move-object/from16 v3, v39

    invoke-direct {v0, v1, v2, v3}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 497
    .local v11, "balloonBg":Landroid/graphics/drawable/Drawable;
    if-eqz v27, :cond_4

    .line 498
    move-object/from16 v0, v32

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/keyboard/SoftKeyboard;->setSkbBackground(Landroid/graphics/drawable/Drawable;)V

    .line 500
    :cond_4
    if-eqz v24, :cond_5

    .line 501
    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/keyboard/SoftKeyboard;->setPopupBackground(Landroid/graphics/drawable/Drawable;)V

    .line 503
    :cond_5
    if-eqz v11, :cond_6

    .line 504
    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Lcom/lzx/iteam/keyboard/SoftKeyboard;->setKeyBalloonBackground(Landroid/graphics/drawable/Drawable;)V

    .line 506
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mKeyXMargin:F

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mKeyYMargin:F

    move/from16 v39, v0

    move-object/from16 v0, v32

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/keyboard/SoftKeyboard;->setKeyMargins(FF)V

    .line 619
    .end local v5    # "attr":Ljava/lang/String;
    .end local v11    # "balloonBg":Landroid/graphics/drawable/Drawable;
    .end local v13    # "cacheFlag":Z
    .end local v17    # "isQwerty":Z
    .end local v18    # "isQwertyUpperCase":Z
    .end local v24    # "popupBg":Landroid/graphics/drawable/Drawable;
    .end local v27    # "skbBg":Landroid/graphics/drawable/Drawable;
    .end local v29    # "skbTemplateId":I
    .end local v35    # "stickyFlag":Z
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mNextEventFetched:Z

    move/from16 v38, v0

    if-nez v38, :cond_7

    invoke-interface/range {v37 .. v37}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mXmlEventType:I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_7
    move-object/from16 v33, v32

    .end local v32    # "softKeyboard":Lcom/lzx/iteam/keyboard/SoftKeyboard;
    .restart local v33    # "softKeyboard":Lcom/lzx/iteam/keyboard/SoftKeyboard;
    goto/16 :goto_1

    .line 507
    .restart local v5    # "attr":Ljava/lang/String;
    :cond_8
    :try_start_3
    const-string v38, "row"

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v38

    if-nez v38, :cond_a

    .line 508
    invoke-virtual {v9, v10}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader$KeyCommonAttributes;->getAttributes(Lcom/lzx/iteam/keyboard/XmlKeyboardLoader$KeyCommonAttributes;)Z

    move-result v38

    if-nez v38, :cond_9

    .line 509
    const/16 v33, 0x0

    goto/16 :goto_0

    .line 512
    :cond_9
    const-string v38, "start_pos_x"

    const/16 v39, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move/from16 v3, v39

    invoke-direct {v0, v1, v2, v3}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mKeyXPos:F

    .line 513
    const-string v38, "start_pos_y"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mKeyYPos:F

    move/from16 v39, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move/from16 v3, v39

    invoke-direct {v0, v1, v2, v3}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mKeyYPos:F

    .line 514
    const-string v38, "row_id"

    .line 515
    const/16 v39, -0x1

    .line 514
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move/from16 v3, v39

    invoke-direct {v0, v1, v2, v3}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v26

    .line 516
    .local v26, "rowId":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mKeyYPos:F

    move/from16 v38, v0

    move-object/from16 v0, v33

    move/from16 v1, v26

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/keyboard/SoftKeyboard;->beginNewRow(IF)V

    move-object/from16 v32, v33

    .line 517
    .end local v33    # "softKeyboard":Lcom/lzx/iteam/keyboard/SoftKeyboard;
    .restart local v32    # "softKeyboard":Lcom/lzx/iteam/keyboard/SoftKeyboard;
    goto :goto_3

    .end local v26    # "rowId":I
    .end local v32    # "softKeyboard":Lcom/lzx/iteam/keyboard/SoftKeyboard;
    .restart local v33    # "softKeyboard":Lcom/lzx/iteam/keyboard/SoftKeyboard;
    :cond_a
    const-string v38, "keys"

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v38

    if-nez v38, :cond_15

    .line 518
    if-nez v33, :cond_b

    const/16 v33, 0x0

    goto/16 :goto_0

    .line 519
    :cond_b
    invoke-virtual {v8, v9}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader$KeyCommonAttributes;->getAttributes(Lcom/lzx/iteam/keyboard/XmlKeyboardLoader$KeyCommonAttributes;)Z

    move-result v38

    if-nez v38, :cond_c

    .line 520
    const/16 v33, 0x0

    goto/16 :goto_0

    .line 523
    :cond_c
    const/16 v38, 0x0

    .line 524
    const-string v39, "splitter"

    .line 523
    invoke-interface/range {v37 .. v39}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 525
    .local v34, "splitter":Ljava/lang/String;
    invoke-static/range {v34 .. v34}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 526
    const/16 v38, 0x0

    .line 527
    const-string v39, "labels"

    .line 526
    invoke-interface/range {v37 .. v39}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 528
    .local v22, "labels":Ljava/lang/String;
    const/16 v38, 0x0

    .line 529
    const-string v39, "codes"

    .line 528
    invoke-interface/range {v37 .. v39}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 530
    .local v15, "codes":Ljava/lang/String;
    if-eqz v34, :cond_d

    if-nez v22, :cond_e

    .line 531
    :cond_d
    const/16 v33, 0x0

    goto/16 :goto_0

    .line 533
    :cond_e
    move-object/from16 v0, v22

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 534
    .local v21, "labelArr":[Ljava/lang/String;
    const/4 v14, 0x0

    .line 535
    .local v14, "codeArr":[Ljava/lang/String;
    if-eqz v15, :cond_f

    .line 536
    move-object/from16 v0, v34

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 537
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v38, v0

    array-length v0, v14

    move/from16 v39, v0
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_f

    .line 538
    const/16 v33, 0x0

    goto/16 :goto_0

    .line 542
    :cond_f
    const/16 v16, 0x0

    .local v16, "i":I
    move-object/from16 v31, v30

    .end local v30    # "softKey":Lcom/lzx/iteam/keyboard/SoftKey;
    .local v31, "softKey":Lcom/lzx/iteam/keyboard/SoftKey;
    :goto_4
    :try_start_4
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v38, v0

    move/from16 v0, v16

    move/from16 v1, v38

    if-lt v0, v1, :cond_10

    move-object/from16 v30, v31

    .end local v31    # "softKey":Lcom/lzx/iteam/keyboard/SoftKey;
    .restart local v30    # "softKey":Lcom/lzx/iteam/keyboard/SoftKey;
    move-object/from16 v32, v33

    .line 571
    .end local v33    # "softKeyboard":Lcom/lzx/iteam/keyboard/SoftKeyboard;
    .restart local v32    # "softKeyboard":Lcom/lzx/iteam/keyboard/SoftKeyboard;
    goto/16 :goto_3

    .line 543
    .end local v30    # "softKey":Lcom/lzx/iteam/keyboard/SoftKey;
    .end local v32    # "softKeyboard":Lcom/lzx/iteam/keyboard/SoftKeyboard;
    .restart local v31    # "softKey":Lcom/lzx/iteam/keyboard/SoftKey;
    .restart local v33    # "softKeyboard":Lcom/lzx/iteam/keyboard/SoftKeyboard;
    :cond_10
    new-instance v30, Lcom/lzx/iteam/keyboard/SoftKey;

    invoke-direct/range {v30 .. v30}, Lcom/lzx/iteam/keyboard/SoftKey;-><init>()V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 544
    .end local v31    # "softKey":Lcom/lzx/iteam/keyboard/SoftKey;
    .restart local v30    # "softKey":Lcom/lzx/iteam/keyboard/SoftKey;
    const/16 v19, 0x0

    .line 545
    .local v19, "keyCode":I
    if-eqz v14, :cond_11

    .line 546
    :try_start_5
    aget-object v38, v14, v16

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 548
    :cond_11
    aget-object v38, v21, v16

    .line 549
    iget-boolean v0, v8, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader$KeyCommonAttributes;->repeat:Z

    move/from16 v39, v0

    iget-boolean v0, v8, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader$KeyCommonAttributes;->balloon:Z

    move/from16 v40, v0

    .line 548
    move-object/from16 v0, v30

    move/from16 v1, v19

    move-object/from16 v2, v38

    move/from16 v3, v39

    move/from16 v4, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lzx/iteam/keyboard/SoftKey;->setKeyAttribute(ILjava/lang/String;ZZ)V

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mSkbTemplate:Lcom/lzx/iteam/keyboard/SkbTemplate;

    move-object/from16 v38, v0

    .line 552
    iget v0, v8, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader$KeyCommonAttributes;->keyType:I

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Lcom/lzx/iteam/keyboard/SkbTemplate;->getKeyType(I)Lcom/lzx/iteam/keyboard/SoftKeyType;

    move-result-object v38

    const/16 v39, 0x0

    const/16 v40, 0x0

    .line 551
    move-object/from16 v0, v30

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    move-object/from16 v3, v40

    invoke-virtual {v0, v1, v2, v3}, Lcom/lzx/iteam/keyboard/SoftKey;->setKeyType(Lcom/lzx/iteam/keyboard/SoftKeyType;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 555
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mKeyXPos:F

    move/from16 v23, v0

    .line 557
    .local v23, "left":F
    iget v0, v8, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader$KeyCommonAttributes;->keyWidth:F

    move/from16 v38, v0

    add-float v25, v23, v38

    .line 558
    .local v25, "right":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mKeyYPos:F

    move/from16 v36, v0

    .line 559
    .local v36, "top":F
    iget v0, v8, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader$KeyCommonAttributes;->keyHeight:F

    move/from16 v38, v0

    add-float v12, v36, v38

    .line 561
    .local v12, "bottom":F
    sub-float v38, v25, v23

    const/high16 v39, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mKeyXMargin:F

    move/from16 v40, v0

    mul-float v39, v39, v40

    cmpg-float v38, v38, v39

    if-gez v38, :cond_12

    const/16 v33, 0x0

    goto/16 :goto_0

    .line 562
    :cond_12
    sub-float v38, v12, v36

    const/high16 v39, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mKeyYMargin:F

    move/from16 v40, v0

    mul-float v39, v39, v40

    cmpg-float v38, v38, v39

    if-gez v38, :cond_13

    const/16 v33, 0x0

    goto/16 :goto_0

    .line 564
    :cond_13
    move-object/from16 v0, v30

    move/from16 v1, v23

    move/from16 v2, v36

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3, v12}, Lcom/lzx/iteam/keyboard/SoftKey;->setKeyDimensions(FFFF)V

    .line 565
    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/keyboard/SoftKeyboard;->addSoftKey(Lcom/lzx/iteam/keyboard/SoftKey;)Z

    .line 566
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mKeyXPos:F

    .line 567
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mKeyXPos:F

    move/from16 v38, v0

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mSkbWidth:I

    move/from16 v39, v0

    mul-int v38, v38, v39

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mSkbWidth:I

    move/from16 v39, v0

    move/from16 v0, v38

    move/from16 v1, v39

    if-le v0, v1, :cond_14

    .line 568
    const/16 v33, 0x0

    goto/16 :goto_0

    .line 542
    :cond_14
    add-int/lit8 v16, v16, 0x1

    move-object/from16 v31, v30

    .end local v30    # "softKey":Lcom/lzx/iteam/keyboard/SoftKey;
    .restart local v31    # "softKey":Lcom/lzx/iteam/keyboard/SoftKey;
    goto/16 :goto_4

    .line 571
    .end local v12    # "bottom":F
    .end local v14    # "codeArr":[Ljava/lang/String;
    .end local v15    # "codes":Ljava/lang/String;
    .end local v16    # "i":I
    .end local v19    # "keyCode":I
    .end local v21    # "labelArr":[Ljava/lang/String;
    .end local v22    # "labels":Ljava/lang/String;
    .end local v23    # "left":F
    .end local v25    # "right":F
    .end local v31    # "softKey":Lcom/lzx/iteam/keyboard/SoftKey;
    .end local v34    # "splitter":Ljava/lang/String;
    .end local v36    # "top":F
    .restart local v30    # "softKey":Lcom/lzx/iteam/keyboard/SoftKey;
    :cond_15
    const-string v38, "key"

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v38

    if-nez v38, :cond_1d

    .line 572
    if-nez v33, :cond_16

    .line 573
    const/16 v33, 0x0

    goto/16 :goto_0

    .line 575
    :cond_16
    invoke-virtual {v7, v9}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader$KeyCommonAttributes;->getAttributes(Lcom/lzx/iteam/keyboard/XmlKeyboardLoader$KeyCommonAttributes;)Z

    move-result v38

    if-nez v38, :cond_17

    .line 576
    const/16 v33, 0x0

    goto/16 :goto_0

    .line 579
    :cond_17
    const-string v38, "id"

    const/16 v39, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move/from16 v3, v39

    invoke-direct {v0, v1, v2, v3}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v20

    .line 580
    .local v20, "keyId":I
    if-ltz v20, :cond_18

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mSkbTemplate:Lcom/lzx/iteam/keyboard/SkbTemplate;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/keyboard/SkbTemplate;->getDefaultKey(I)Lcom/lzx/iteam/keyboard/SoftKey;

    move-result-object v30

    .line 585
    :goto_5
    if-nez v30, :cond_19

    const/16 v33, 0x0

    goto/16 :goto_0

    .line 583
    :cond_18
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1, v7}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->getSoftKey(Landroid/content/res/XmlResourceParser;Lcom/lzx/iteam/keyboard/XmlKeyboardLoader$KeyCommonAttributes;)Lcom/lzx/iteam/keyboard/SoftKey;

    move-result-object v30

    goto :goto_5

    .line 588
    :cond_19
    move-object/from16 v0, v30

    iget v0, v0, Lcom/lzx/iteam/keyboard/SoftKey;->mRightF:F

    move/from16 v38, v0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mKeyXPos:F

    .line 589
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mKeyXPos:F

    move/from16 v38, v0

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mSkbWidth:I

    move/from16 v39, v0

    mul-int v38, v38, v39

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mSkbWidth:I

    move/from16 v39, v0

    move/from16 v0, v38

    move/from16 v1, v39

    if-le v0, v1, :cond_1a

    .line 590
    const/16 v33, 0x0

    goto/16 :goto_0

    .line 597
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mXmlEventType:I

    move/from16 v38, v0

    const/16 v39, 0x2

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_1b

    .line 598
    invoke-interface/range {v37 .. v37}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 599
    const-string v38, "row"

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v38

    if-nez v38, :cond_1b

    .line 600
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mKeyYPos:F

    move/from16 v38, v0

    iget v0, v9, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader$KeyCommonAttributes;->keyHeight:F

    move/from16 v39, v0

    add-float v38, v38, v39

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mKeyYPos:F

    .line 601
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mKeyYPos:F

    move/from16 v38, v0

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mSkbHeight:I

    move/from16 v39, v0

    mul-int v38, v38, v39

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mSkbHeight:I

    move/from16 v39, v0

    move/from16 v0, v38

    move/from16 v1, v39

    if-le v0, v1, :cond_1b

    .line 602
    const/16 v33, 0x0

    goto/16 :goto_0

    .line 606
    :cond_1b
    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/keyboard/SoftKeyboard;->addSoftKey(Lcom/lzx/iteam/keyboard/SoftKey;)Z

    move-object/from16 v32, v33

    .line 608
    .end local v33    # "softKeyboard":Lcom/lzx/iteam/keyboard/SoftKeyboard;
    .restart local v32    # "softKeyboard":Lcom/lzx/iteam/keyboard/SoftKeyboard;
    goto/16 :goto_3

    .end local v5    # "attr":Ljava/lang/String;
    .end local v20    # "keyId":I
    .end local v32    # "softKeyboard":Lcom/lzx/iteam/keyboard/SoftKeyboard;
    .restart local v33    # "softKeyboard":Lcom/lzx/iteam/keyboard/SoftKeyboard;
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mXmlEventType:I

    move/from16 v38, v0

    const/16 v39, 0x3

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_1d

    .line 609
    invoke-interface/range {v37 .. v37}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 610
    .restart local v5    # "attr":Ljava/lang/String;
    const-string v38, "row"

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v38

    if-nez v38, :cond_1d

    .line 611
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mKeyYPos:F

    move/from16 v38, v0

    iget v0, v9, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader$KeyCommonAttributes;->keyHeight:F

    move/from16 v39, v0

    add-float v38, v38, v39

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mKeyYPos:F

    .line 612
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mKeyYPos:F

    move/from16 v38, v0

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mSkbHeight:I

    move/from16 v39, v0

    mul-int v38, v38, v39

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mSkbHeight:I

    move/from16 v39, v0
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move/from16 v0, v38

    move/from16 v1, v39

    if-le v0, v1, :cond_1d

    .line 613
    const/16 v33, 0x0

    goto/16 :goto_0

    .end local v5    # "attr":Ljava/lang/String;
    .end local v33    # "softKeyboard":Lcom/lzx/iteam/keyboard/SoftKeyboard;
    .restart local v32    # "softKeyboard":Lcom/lzx/iteam/keyboard/SoftKeyboard;
    :catch_1
    move-exception v38

    goto/16 :goto_2

    .end local v32    # "softKeyboard":Lcom/lzx/iteam/keyboard/SoftKeyboard;
    .restart local v33    # "softKeyboard":Lcom/lzx/iteam/keyboard/SoftKeyboard;
    :catch_2
    move-exception v38

    move-object/from16 v32, v33

    .end local v33    # "softKeyboard":Lcom/lzx/iteam/keyboard/SoftKeyboard;
    .restart local v32    # "softKeyboard":Lcom/lzx/iteam/keyboard/SoftKeyboard;
    goto/16 :goto_2

    .end local v30    # "softKey":Lcom/lzx/iteam/keyboard/SoftKey;
    .end local v32    # "softKeyboard":Lcom/lzx/iteam/keyboard/SoftKeyboard;
    .restart local v5    # "attr":Ljava/lang/String;
    .restart local v14    # "codeArr":[Ljava/lang/String;
    .restart local v15    # "codes":Ljava/lang/String;
    .restart local v16    # "i":I
    .restart local v21    # "labelArr":[Ljava/lang/String;
    .restart local v22    # "labels":Ljava/lang/String;
    .restart local v31    # "softKey":Lcom/lzx/iteam/keyboard/SoftKey;
    .restart local v33    # "softKeyboard":Lcom/lzx/iteam/keyboard/SoftKeyboard;
    .restart local v34    # "splitter":Ljava/lang/String;
    :catch_3
    move-exception v38

    move-object/from16 v30, v31

    .end local v31    # "softKey":Lcom/lzx/iteam/keyboard/SoftKey;
    .restart local v30    # "softKey":Lcom/lzx/iteam/keyboard/SoftKey;
    move-object/from16 v32, v33

    .end local v33    # "softKeyboard":Lcom/lzx/iteam/keyboard/SoftKeyboard;
    .restart local v32    # "softKeyboard":Lcom/lzx/iteam/keyboard/SoftKeyboard;
    goto/16 :goto_2

    .line 624
    .end local v5    # "attr":Ljava/lang/String;
    .end local v14    # "codeArr":[Ljava/lang/String;
    .end local v15    # "codes":Ljava/lang/String;
    .end local v16    # "i":I
    .end local v21    # "labelArr":[Ljava/lang/String;
    .end local v22    # "labels":Ljava/lang/String;
    .end local v34    # "splitter":Ljava/lang/String;
    :catch_4
    move-exception v38

    goto/16 :goto_2

    .end local v30    # "softKey":Lcom/lzx/iteam/keyboard/SoftKey;
    .end local v32    # "softKeyboard":Lcom/lzx/iteam/keyboard/SoftKeyboard;
    .restart local v5    # "attr":Ljava/lang/String;
    .restart local v14    # "codeArr":[Ljava/lang/String;
    .restart local v15    # "codes":Ljava/lang/String;
    .restart local v16    # "i":I
    .restart local v21    # "labelArr":[Ljava/lang/String;
    .restart local v22    # "labels":Ljava/lang/String;
    .restart local v31    # "softKey":Lcom/lzx/iteam/keyboard/SoftKey;
    .restart local v33    # "softKeyboard":Lcom/lzx/iteam/keyboard/SoftKeyboard;
    .restart local v34    # "splitter":Ljava/lang/String;
    :catch_5
    move-exception v38

    move-object/from16 v30, v31

    .end local v31    # "softKey":Lcom/lzx/iteam/keyboard/SoftKey;
    .restart local v30    # "softKey":Lcom/lzx/iteam/keyboard/SoftKey;
    move-object/from16 v32, v33

    .end local v33    # "softKeyboard":Lcom/lzx/iteam/keyboard/SoftKeyboard;
    .restart local v32    # "softKeyboard":Lcom/lzx/iteam/keyboard/SoftKeyboard;
    goto/16 :goto_2

    .end local v5    # "attr":Ljava/lang/String;
    .end local v14    # "codeArr":[Ljava/lang/String;
    .end local v15    # "codes":Ljava/lang/String;
    .end local v16    # "i":I
    .end local v21    # "labelArr":[Ljava/lang/String;
    .end local v22    # "labels":Ljava/lang/String;
    .end local v32    # "softKeyboard":Lcom/lzx/iteam/keyboard/SoftKeyboard;
    .end local v34    # "splitter":Ljava/lang/String;
    .restart local v33    # "softKeyboard":Lcom/lzx/iteam/keyboard/SoftKeyboard;
    :cond_1d
    move-object/from16 v32, v33

    .end local v33    # "softKeyboard":Lcom/lzx/iteam/keyboard/SoftKeyboard;
    .restart local v32    # "softKeyboard":Lcom/lzx/iteam/keyboard/SoftKeyboard;
    goto/16 :goto_3
.end method

.method public loadSkbTemplate(I)Lcom/lzx/iteam/keyboard/SkbTemplate;
    .locals 32
    .param p1, "resourceId"    # I

    .prologue
    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    if-eqz v30, :cond_0

    if-nez p1, :cond_1

    .line 329
    :cond_0
    const/16 v30, 0x0

    .line 426
    :goto_0
    return-object v30

    .line 331
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mResources:Landroid/content/res/Resources;

    move-object/from16 v24, v0

    .line 332
    .local v24, "r":Landroid/content/res/Resources;
    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v28

    .line 334
    .local v28, "xrp":Landroid/content/res/XmlResourceParser;
    new-instance v4, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader$KeyCommonAttributes;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v4, v0, v1}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader$KeyCommonAttributes;-><init>(Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;Landroid/content/res/XmlResourceParser;)V

    .line 335
    .local v4, "attrDef":Lcom/lzx/iteam/keyboard/XmlKeyboardLoader$KeyCommonAttributes;
    new-instance v5, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader$KeyCommonAttributes;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v5, v0, v1}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader$KeyCommonAttributes;-><init>(Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;Landroid/content/res/XmlResourceParser;)V

    .line 337
    .local v5, "attrKey":Lcom/lzx/iteam/keyboard/XmlKeyboardLoader$KeyCommonAttributes;
    new-instance v30, Lcom/lzx/iteam/keyboard/SkbTemplate;

    move-object/from16 v0, v30

    move/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/lzx/iteam/keyboard/SkbTemplate;-><init>(I)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mSkbTemplate:Lcom/lzx/iteam/keyboard/SkbTemplate;

    .line 338
    const/16 v22, -0x1

    .line 339
    .local v22, "lastKeyTypeId":I
    const/4 v12, 0x0

    .line 340
    .local v12, "globalColor":I
    const/4 v14, 0x0

    .line 341
    .local v14, "globalColorHl":I
    const/4 v13, 0x0

    .line 343
    .local v13, "globalColorBalloon":I
    :try_start_0
    invoke-interface/range {v28 .. v28}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mXmlEventType:I

    .line 344
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mXmlEventType:I

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_3

    .line 419
    invoke-interface/range {v28 .. v28}, Landroid/content/res/XmlResourceParser;->close()V

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mSkbTemplate:Lcom/lzx/iteam/keyboard/SkbTemplate;

    move-object/from16 v30, v0

    goto :goto_0

    .line 345
    :cond_3
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mNextEventFetched:Z

    .line 346
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mXmlEventType:I

    move/from16 v30, v0

    const/16 v31, 0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_6

    .line 347
    invoke-interface/range {v28 .. v28}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 348
    .local v6, "attribute":Ljava/lang/String;
    const-string v30, "skb_template"

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v30

    if-nez v30, :cond_7

    .line 349
    const-string v30, "skb_bg"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    .line 351
    .local v25, "skbBg":Landroid/graphics/drawable/Drawable;
    const-string v30, "balloon_bg"

    const/16 v31, 0x0

    .line 350
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 352
    .local v7, "balloonBg":Landroid/graphics/drawable/Drawable;
    const-string v30, "popup_bg"

    .line 353
    const/16 v31, 0x0

    .line 352
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    .line 354
    .local v23, "popupBg":Landroid/graphics/drawable/Drawable;
    if-eqz v25, :cond_4

    if-eqz v7, :cond_4

    .line 355
    if-nez v23, :cond_5

    .line 356
    :cond_4
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 358
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mSkbTemplate:Lcom/lzx/iteam/keyboard/SkbTemplate;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v7, v2}, Lcom/lzx/iteam/keyboard/SkbTemplate;->setBackgrounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 360
    const-string v30, "key_xmargin"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v27

    .line 361
    .local v27, "xMargin":F
    const-string v30, "key_ymargin"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v29

    .line 362
    .local v29, "yMargin":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mSkbTemplate:Lcom/lzx/iteam/keyboard/SkbTemplate;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v27

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/keyboard/SkbTemplate;->setMargins(FF)V

    .line 365
    const-string v30, "color"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->getColor(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v12

    .line 366
    const-string v30, "color_highlight"

    .line 367
    const/16 v31, -0x1

    .line 366
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->getColor(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v14

    .line 369
    const-string v30, "color_balloon"

    const/16 v31, -0x1

    .line 368
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->getColor(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v13

    .line 417
    .end local v6    # "attribute":Ljava/lang/String;
    .end local v7    # "balloonBg":Landroid/graphics/drawable/Drawable;
    .end local v23    # "popupBg":Landroid/graphics/drawable/Drawable;
    .end local v25    # "skbBg":Landroid/graphics/drawable/Drawable;
    .end local v27    # "xMargin":F
    .end local v29    # "yMargin":F
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mNextEventFetched:Z

    move/from16 v30, v0

    if-nez v30, :cond_2

    invoke-interface/range {v28 .. v28}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mXmlEventType:I

    goto/16 :goto_1

    .line 421
    :catch_0
    move-exception v30

    .line 426
    :goto_3
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 370
    .restart local v6    # "attribute":Ljava/lang/String;
    :cond_7
    const-string v30, "key_type"

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v30

    if-nez v30, :cond_a

    .line 371
    const-string v30, "id"

    const/16 v31, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v18

    .line 372
    .local v18, "id":I
    const-string v30, "bg"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 373
    .local v8, "bg":Landroid/graphics/drawable/Drawable;
    const-string v30, "hlbg"

    .line 374
    const/16 v31, 0x0

    .line 373
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 375
    .local v15, "hlBg":Landroid/graphics/drawable/Drawable;
    const-string v30, "color"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2, v12}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->getColor(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v9

    .line 376
    .local v9, "color":I
    const-string v30, "color_highlight"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2, v14}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->getColor(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v11

    .line 378
    .local v11, "colorHl":I
    const-string v30, "color_balloon"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2, v13}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->getColor(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v10

    .line 380
    .local v10, "colorBalloon":I
    add-int/lit8 v30, v22, 0x1

    move/from16 v0, v18

    move/from16 v1, v30

    if-eq v0, v1, :cond_8

    .line 381
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 383
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mSkbTemplate:Lcom/lzx/iteam/keyboard/SkbTemplate;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v18

    invoke-virtual {v0, v1, v8, v15}, Lcom/lzx/iteam/keyboard/SkbTemplate;->createKeyType(ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/lzx/iteam/keyboard/SoftKeyType;

    move-result-object v21

    .line 385
    .local v21, "keyType":Lcom/lzx/iteam/keyboard/SoftKeyType;
    move-object/from16 v0, v21

    invoke-virtual {v0, v9, v11, v10}, Lcom/lzx/iteam/keyboard/SoftKeyType;->setColors(III)V

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mSkbTemplate:Lcom/lzx/iteam/keyboard/SkbTemplate;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/keyboard/SkbTemplate;->addKeyType(Lcom/lzx/iteam/keyboard/SoftKeyType;)Z

    move-result v30

    if-nez v30, :cond_9

    .line 387
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 389
    :cond_9
    move/from16 v22, v18

    .line 390
    goto/16 :goto_2

    .end local v8    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v9    # "color":I
    .end local v10    # "colorBalloon":I
    .end local v11    # "colorHl":I
    .end local v15    # "hlBg":Landroid/graphics/drawable/Drawable;
    .end local v18    # "id":I
    .end local v21    # "keyType":Lcom/lzx/iteam/keyboard/SoftKeyType;
    :cond_a
    const-string v30, "key_icon"

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v30

    if-nez v30, :cond_b

    .line 391
    const-string v30, "code"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v19

    .line 392
    .local v19, "keyCode":I
    const-string v30, "icon"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 394
    .local v16, "icon":Landroid/graphics/drawable/Drawable;
    const-string v30, "icon_popup"

    const/16 v31, 0x0

    .line 393
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 395
    .local v17, "iconPopup":Landroid/graphics/drawable/Drawable;
    if-eqz v16, :cond_6

    if-eqz v17, :cond_6

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mSkbTemplate:Lcom/lzx/iteam/keyboard/SkbTemplate;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v19

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/lzx/iteam/keyboard/SkbTemplate;->addDefaultKeyIcons(ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .end local v6    # "attribute":Ljava/lang/String;
    .end local v16    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v17    # "iconPopup":Landroid/graphics/drawable/Drawable;
    .end local v19    # "keyCode":I
    :catch_1
    move-exception v30

    goto/16 :goto_3

    .line 399
    .restart local v6    # "attribute":Ljava/lang/String;
    :cond_b
    const-string v30, "key"

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v30

    if-nez v30, :cond_6

    .line 400
    const-string v30, "id"

    const/16 v31, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v20

    .line 401
    .local v20, "keyId":I
    const/16 v30, -0x1

    move/from16 v0, v30

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    const/16 v30, 0x0

    goto/16 :goto_0

    .line 403
    :cond_c
    invoke-virtual {v5, v4}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader$KeyCommonAttributes;->getAttributes(Lcom/lzx/iteam/keyboard/XmlKeyboardLoader$KeyCommonAttributes;)Z

    move-result v30

    if-nez v30, :cond_d

    .line 404
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 408
    :cond_d
    const-string v30, "start_pos_x"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mKeyXPos:F

    .line 409
    const-string v30, "start_pos_y"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mKeyYPos:F

    .line 411
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v5}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->getSoftKey(Landroid/content/res/XmlResourceParser;Lcom/lzx/iteam/keyboard/XmlKeyboardLoader$KeyCommonAttributes;)Lcom/lzx/iteam/keyboard/SoftKey;

    move-result-object v26

    .line 412
    .local v26, "softKey":Lcom/lzx/iteam/keyboard/SoftKey;
    if-nez v26, :cond_e

    const/16 v30, 0x0

    goto/16 :goto_0

    .line 413
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->mSkbTemplate:Lcom/lzx/iteam/keyboard/SkbTemplate;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v20

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/keyboard/SkbTemplate;->addDefaultKey(ILcom/lzx/iteam/keyboard/SoftKey;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_2
.end method
