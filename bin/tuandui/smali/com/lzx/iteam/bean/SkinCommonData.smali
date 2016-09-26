.class public Lcom/lzx/iteam/bean/SkinCommonData;
.super Ljava/lang/Object;
.source "SkinCommonData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static skinCommonData:Lcom/lzx/iteam/bean/SkinCommonData;


# instance fields
.field public abcmp3:[Ljava/lang/String;

.field public backgroundColor:I

.field public barTitleColor:I

.field public center:[Landroid/graphics/drawable/Drawable;

.field public def_abcmp3:[Landroid/content/res/AssetFileDescriptor;

.field public def_lock:Landroid/content/res/AssetFileDescriptor;

.field public def_pound:Landroid/content/res/AssetFileDescriptor;

.field public def_star:Landroid/content/res/AssetFileDescriptor;

.field public def_t9mp3:[Landroid/content/res/AssetFileDescriptor;

.field public def_tink:Landroid/content/res/AssetFileDescriptor;

.field public def_tock:Landroid/content/res/AssetFileDescriptor;

.field public def_ussd:Landroid/content/res/AssetFileDescriptor;

.field public hasmusic:I

.field public jobTitleColor:I

.field public left:[Landroid/graphics/drawable/Drawable;

.field public listBgBitmap:Landroid/graphics/drawable/Drawable;

.field public listBgColor:I

.field public listDividerColor:I

.field public listSectionColor:I

.field public listTextHightLightColor:I

.field public lock:Ljava/lang/String;

.field public mainTitleBgResid:Landroid/graphics/drawable/Drawable;

.field public nameColor:I

.field public noNameBitmap:Landroid/graphics/drawable/Drawable;

.field public phoneColor:I

.field public pound:Ljava/lang/String;

.field public right:[Landroid/graphics/drawable/Drawable;

.field public scaleType:Landroid/widget/ImageView$ScaleType;

.field public star:Ljava/lang/String;

.field public t9mp3:[Ljava/lang/String;

.field public tink:Ljava/lang/String;

.field public tintColor:I

.field public tock:Ljava/lang/String;

.field public ussd:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x1a

    const/16 v2, 0xa

    const/4 v1, 0x2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/bean/SkinCommonData;->scaleType:Landroid/widget/ImageView$ScaleType;

    .line 42
    new-array v0, v2, [Landroid/content/res/AssetFileDescriptor;

    iput-object v0, p0, Lcom/lzx/iteam/bean/SkinCommonData;->def_t9mp3:[Landroid/content/res/AssetFileDescriptor;

    .line 43
    new-array v0, v3, [Landroid/content/res/AssetFileDescriptor;

    iput-object v0, p0, Lcom/lzx/iteam/bean/SkinCommonData;->def_abcmp3:[Landroid/content/res/AssetFileDescriptor;

    .line 52
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lzx/iteam/bean/SkinCommonData;->t9mp3:[Ljava/lang/String;

    .line 53
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lzx/iteam/bean/SkinCommonData;->abcmp3:[Ljava/lang/String;

    .line 62
    new-array v0, v1, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/lzx/iteam/bean/SkinCommonData;->left:[Landroid/graphics/drawable/Drawable;

    .line 63
    new-array v0, v1, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/lzx/iteam/bean/SkinCommonData;->right:[Landroid/graphics/drawable/Drawable;

    .line 64
    new-array v0, v1, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/lzx/iteam/bean/SkinCommonData;->center:[Landroid/graphics/drawable/Drawable;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/lzx/iteam/bean/SkinCommonData;->hasmusic:I

    .line 24
    return-void
.end method

.method public static getInstance()Lcom/lzx/iteam/bean/SkinCommonData;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/lzx/iteam/bean/SkinCommonData;->skinCommonData:Lcom/lzx/iteam/bean/SkinCommonData;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/lzx/iteam/bean/SkinCommonData;

    invoke-direct {v0}, Lcom/lzx/iteam/bean/SkinCommonData;-><init>()V

    .line 20
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/lzx/iteam/bean/SkinCommonData;->skinCommonData:Lcom/lzx/iteam/bean/SkinCommonData;

    goto :goto_0
.end method
