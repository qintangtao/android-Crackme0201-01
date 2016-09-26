.class public final Lcom/lzx/iteam/util/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# static fields
.field public static final FAVORITES_FREQUENT:I = 0x2

.field public static final FAVORITES_STARRED:I = 0x1

.field public static final FAVORITES_STREQUENT:I = 0x3

.field private static final LARGE_PHOTO_HEIGHT:I = 0x11d

.field private static final LARGE_PHOTO_WIDTH:I = 0x1e0

.field private static final SMALL_PHOTO_HEIGHT:I = 0x60

.field private static final SMALL_PHOTO_WIDTH:I = 0x60

.field private static final TAG:Ljava/lang/String; = "Configuration"

.field private static sSelf:Lcom/lzx/iteam/util/Configuration;


# instance fields
.field private mFavoriteMode:I

.field private mLargePhotoHeight:I

.field private mLargePhotoWidth:I

.field private final mSettingsParser:Lcom/lzx/iteam/util/SettingsParser;

.field private mSmallPhotoHeight:I

.field private mSmallPhotoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/lzx/iteam/util/Configuration;->sSelf:Lcom/lzx/iteam/util/Configuration;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    const/16 v1, 0x60

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/lzx/iteam/util/Configuration;->mFavoriteMode:I

    .line 38
    iput v1, p0, Lcom/lzx/iteam/util/Configuration;->mSmallPhotoHeight:I

    .line 40
    iput v1, p0, Lcom/lzx/iteam/util/Configuration;->mSmallPhotoWidth:I

    .line 42
    const/16 v0, 0x11d

    iput v0, p0, Lcom/lzx/iteam/util/Configuration;->mLargePhotoHeight:I

    .line 44
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/lzx/iteam/util/Configuration;->mLargePhotoWidth:I

    .line 47
    new-instance v0, Lcom/lzx/iteam/util/SettingsParser;

    invoke-direct {v0}, Lcom/lzx/iteam/util/SettingsParser;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/util/Configuration;->mSettingsParser:Lcom/lzx/iteam/util/SettingsParser;

    .line 83
    invoke-direct {p0, p1}, Lcom/lzx/iteam/util/Configuration;->loadSetting(Landroid/content/Context;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/InputStream;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "customizationXml"    # Ljava/io/InputStream;

    .prologue
    const/16 v1, 0x60

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/lzx/iteam/util/Configuration;->mFavoriteMode:I

    .line 38
    iput v1, p0, Lcom/lzx/iteam/util/Configuration;->mSmallPhotoHeight:I

    .line 40
    iput v1, p0, Lcom/lzx/iteam/util/Configuration;->mSmallPhotoWidth:I

    .line 42
    const/16 v0, 0x11d

    iput v0, p0, Lcom/lzx/iteam/util/Configuration;->mLargePhotoHeight:I

    .line 44
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/lzx/iteam/util/Configuration;->mLargePhotoWidth:I

    .line 47
    new-instance v0, Lcom/lzx/iteam/util/SettingsParser;

    invoke-direct {v0}, Lcom/lzx/iteam/util/SettingsParser;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/util/Configuration;->mSettingsParser:Lcom/lzx/iteam/util/SettingsParser;

    .line 103
    return-void
.end method

.method private getImServiceDisabled(I)Z
    .locals 7
    .param p1, "imProtocol"    # I

    .prologue
    .line 155
    const/4 v4, 0x0

    .line 156
    .local v4, "result":Z
    const/4 v1, 0x0

    .line 157
    .local v1, "disabledProtocolsList":[Ljava/lang/String;
    iget-object v5, p0, Lcom/lzx/iteam/util/Configuration;->mSettingsParser:Lcom/lzx/iteam/util/SettingsParser;

    const-string v6, "disabled-im-services"

    invoke-virtual {v5, v6}, Lcom/lzx/iteam/util/SettingsParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "disabledProtocols":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 161
    :try_start_0
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 167
    :cond_0
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, "protocol":Ljava/lang/String;
    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 171
    array-length v5, v1

    if-lez v5, :cond_1

    .line 172
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v5, v1

    if-lt v2, v5, :cond_2

    .line 180
    .end local v2    # "i":I
    :cond_1
    :goto_2
    return v4

    .line 163
    .end local v3    # "protocol":Ljava/lang/String;
    :catch_0
    move-exception v5

    const-string v5, "Configuration"

    const-string v6, "Failed to split im protocol types!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 173
    .restart local v2    # "i":I
    .restart local v3    # "protocol":Ljava/lang/String;
    :cond_2
    aget-object v5, v1, v2

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 174
    const/4 v4, 0x1

    .line 175
    goto :goto_2

    .line 172
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/Configuration;
    .locals 2
    .param p0, "aContext"    # Landroid/content/Context;

    .prologue
    .line 55
    const-class v1, Lcom/lzx/iteam/util/Configuration;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lzx/iteam/util/Configuration;->sSelf:Lcom/lzx/iteam/util/Configuration;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/lzx/iteam/util/Configuration;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/util/Configuration;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lzx/iteam/util/Configuration;->sSelf:Lcom/lzx/iteam/util/Configuration;

    .line 59
    :cond_0
    sget-object v0, Lcom/lzx/iteam/util/Configuration;->sSelf:Lcom/lzx/iteam/util/Configuration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private loadSetting(Landroid/content/Context;)V
    .locals 0
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 118
    return-void
.end method

.method public static declared-synchronized testSetConfiguration(Lcom/lzx/iteam/util/Configuration;)V
    .locals 2
    .param p0, "configuration"    # Lcom/lzx/iteam/util/Configuration;

    .prologue
    .line 73
    const-class v0, Lcom/lzx/iteam/util/Configuration;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/lzx/iteam/util/Configuration;->sSelf:Lcom/lzx/iteam/util/Configuration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit v0

    return-void

    .line 73
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getFavoriteMode()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/lzx/iteam/util/Configuration;->mFavoriteMode:I

    return v0
.end method

.method public getLargePhotoHeight()I
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lcom/lzx/iteam/util/Configuration;->mLargePhotoHeight:I

    return v0
.end method

.method public getLargePhotoWidth()I
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lcom/lzx/iteam/util/Configuration;->mLargePhotoWidth:I

    return v0
.end method

.method public getSmallPhotoHeight()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/lzx/iteam/util/Configuration;->mSmallPhotoHeight:I

    return v0
.end method

.method public getSmallPhotoWidth()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/lzx/iteam/util/Configuration;->mSmallPhotoWidth:I

    return v0
.end method

.method public isContactFieldDisabled(Ljava/lang/String;)Z
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 290
    const/4 v0, 0x0

    .line 292
    .local v0, "result":Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 293
    iget-object v1, p0, Lcom/lzx/iteam/util/Configuration;->mSettingsParser:Lcom/lzx/iteam/util/SettingsParser;

    invoke-virtual {v1, p1}, Lcom/lzx/iteam/util/SettingsParser;->isContactFieldDisabled(Ljava/lang/String;)Z

    move-result v0

    .line 296
    :cond_0
    return v0
.end method
