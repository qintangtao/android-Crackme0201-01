.class public Lcom/lzx/iteam/DialerApp;
.super Landroid/app/Application;
.source "DialerApp.java"


# static fields
.field public static mContext:Landroid/content/Context;

.field public static map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile uploadManagerInstance:Lcom/qiniu/android/storage/UploadManager;


# instance fields
.field public cacheDir:Ljava/io/File;

.field public isGetChatGroupList:Z

.field public mEventToWhere:Ljava/lang/String;

.field private mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

.field public mYaoyiyaoShare:Z

.field public mYaoyiyaoShareContactId:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 29
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lzx/iteam/DialerApp;->mYaoyiyaoShareContactId:J

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lzx/iteam/DialerApp;->mYaoyiyaoShare:Z

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lzx/iteam/DialerApp;->isGetChatGroupList:Z

    .line 32
    const-string v0, "1"

    iput-object v0, p0, Lcom/lzx/iteam/DialerApp;->mEventToWhere:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/DialerApp;->cacheDir:Ljava/io/File;

    .line 27
    return-void
.end method

.method public static getUploadManager(Landroid/content/Context;)Lcom/qiniu/android/storage/UploadManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    sget-object v0, Lcom/lzx/iteam/DialerApp;->uploadManagerInstance:Lcom/qiniu/android/storage/UploadManager;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Lcom/qiniu/android/storage/UploadManager;

    invoke-direct {v0}, Lcom/qiniu/android/storage/UploadManager;-><init>()V

    sput-object v0, Lcom/lzx/iteam/DialerApp;->uploadManagerInstance:Lcom/qiniu/android/storage/UploadManager;

    .line 135
    :cond_0
    sget-object v0, Lcom/lzx/iteam/DialerApp;->uploadManagerInstance:Lcom/qiniu/android/storage/UploadManager;

    return-object v0
.end method


# virtual methods
.method public getmEventToWhere()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/lzx/iteam/DialerApp;->mEventToWhere:Ljava/lang/String;

    return-object v0
.end method

.method public initImageLoader(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    new-instance v1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    invoke-direct {v1, p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;-><init>(Landroid/content/Context;)V

    .line 110
    const/16 v2, 0x1e0

    const/16 v3, 0x320

    invoke-virtual {v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheExtraOptions(II)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v1

    .line 113
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v1

    .line 114
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v1

    .line 115
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->denyCacheImageMultipleSizesInMemory()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v1

    .line 116
    new-instance v2, Lcom/nostra13/universalimageloader/cache/memory/impl/UsingFreqLimitedMemoryCache;

    const/high16 v3, 0x200000

    invoke-direct {v2, v3}, Lcom/nostra13/universalimageloader/cache/memory/impl/UsingFreqLimitedMemoryCache;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache(Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v1

    .line 118
    const/high16 v2, 0x3200000

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCacheSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v1

    .line 119
    new-instance v2, Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;

    invoke-direct {v2}, Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;-><init>()V

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCacheFileNameGenerator(Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v1

    .line 120
    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;->LIFO:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingOrder(Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v1

    .line 122
    new-instance v2, Lcom/nostra13/universalimageloader/cache/disc/impl/UnlimitedDiscCache;

    iget-object v3, p0, Lcom/lzx/iteam/DialerApp;->cacheDir:Ljava/io/File;

    invoke-direct {v2, v3}, Lcom/nostra13/universalimageloader/cache/disc/impl/UnlimitedDiscCache;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCache(Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v1

    .line 123
    invoke-static {}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->createSimple()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->defaultDisplayImageOptions(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v1

    .line 124
    new-instance v2, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;

    const/16 v3, 0x1388

    const/16 v4, 0x7530

    invoke-direct {v2, p1, v3, v4}, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->imageDownloader(Lcom/nostra13/universalimageloader/core/download/ImageDownloader;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v1

    .line 125
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->writeDebugLogs()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v1

    .line 126
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->build()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v0

    .line 127
    .local v0, "config":Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    .line 128
    return-void
.end method

.method public isGetChatGroupList()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/lzx/iteam/DialerApp;->isGetChatGroupList:Z

    return v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 42
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 43
    invoke-virtual {p0}, Lcom/lzx/iteam/DialerApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 44
    new-instance v2, Lcom/lzx/iteam/util/WebkitCookieManagerProxy;

    invoke-direct {v2}, Lcom/lzx/iteam/util/WebkitCookieManagerProxy;-><init>()V

    invoke-static {v2}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    .line 47
    invoke-virtual {p0}, Lcom/lzx/iteam/DialerApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Yun/Images/Cache"

    invoke-static {v2, v3}, Lcom/nostra13/universalimageloader/utils/StorageUtils;->getOwnCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/DialerApp;->cacheDir:Ljava/io/File;

    .line 48
    invoke-virtual {p0}, Lcom/lzx/iteam/DialerApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/DialerApp;->initImageLoader(Landroid/content/Context;)V

    .line 49
    invoke-static {v5}, Lcn/jpush/android/api/JPushInterface;->setDebugMode(Z)V

    .line 50
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->init(Landroid/content/Context;)V

    .line 52
    invoke-virtual {p0}, Lcom/lzx/iteam/DialerApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/lzx/iteam/DialerApp;->mContext:Landroid/content/Context;

    .line 53
    sget-object v2, Lcom/lzx/iteam/DialerApp;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/DialerApp;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 55
    iget-object v2, p0, Lcom/lzx/iteam/DialerApp;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v3, "keyboard_packagename"

    const-string v4, "local"

    invoke-virtual {v2, v3, v4}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "path":Ljava/lang/String;
    iget-object v2, p0, Lcom/lzx/iteam/DialerApp;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v3, "is_t9_vertial"

    invoke-virtual {v2, v3, v5}, Lcom/lzx/iteam/util/PreferenceUtil;->getBoolean(Ljava/lang/String;Z)Z

    .line 57
    new-instance v0, Lcom/lzx/iteam/skin/GetSkinResource;

    invoke-virtual {p0}, Lcom/lzx/iteam/DialerApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/lzx/iteam/skin/GetSkinResource;-><init>(Landroid/content/Context;)V

    .line 58
    .local v0, "getSkinResource":Lcom/lzx/iteam/skin/GetSkinResource;
    sget-object v2, Lcom/lzx/iteam/CloudDialerActivity;->mVertySkin:Lcom/lzx/iteam/bean/SkinVertyData;

    if-nez v2, :cond_0

    .line 60
    new-instance v2, Lcom/lzx/iteam/bean/SkinVertyData;

    invoke-direct {v2}, Lcom/lzx/iteam/bean/SkinVertyData;-><init>()V

    sput-object v2, Lcom/lzx/iteam/CloudDialerActivity;->mVertySkin:Lcom/lzx/iteam/bean/SkinVertyData;

    .line 70
    sget-object v2, Lcom/lzx/iteam/CloudDialerActivity;->mVertySkin:Lcom/lzx/iteam/bean/SkinVertyData;

    invoke-virtual {v0, v2, p0, v1}, Lcom/lzx/iteam/skin/GetSkinResource;->getVertT9SkinData(Lcom/lzx/iteam/bean/SkinVertyData;Landroid/content/Context;Ljava/lang/String;)Lcom/lzx/iteam/bean/SkinVertyData;

    move-result-object v2

    sput-object v2, Lcom/lzx/iteam/CloudDialerActivity;->mVertySkin:Lcom/lzx/iteam/bean/SkinVertyData;

    .line 73
    :cond_0
    sget-object v2, Lcom/lzx/iteam/CloudDialerActivity;->mVertySkin2:Lcom/lzx/iteam/bean/SkinVertyData;

    if-nez v2, :cond_1

    .line 75
    new-instance v2, Lcom/lzx/iteam/bean/SkinVertyData;

    invoke-direct {v2}, Lcom/lzx/iteam/bean/SkinVertyData;-><init>()V

    sput-object v2, Lcom/lzx/iteam/CloudDialerActivity;->mVertySkin2:Lcom/lzx/iteam/bean/SkinVertyData;

    .line 85
    sget-object v2, Lcom/lzx/iteam/CloudDialerActivity;->mVertySkin2:Lcom/lzx/iteam/bean/SkinVertyData;

    invoke-virtual {v0, v2, p0, v1}, Lcom/lzx/iteam/skin/GetSkinResource;->getVertABCSkinData(Lcom/lzx/iteam/bean/SkinVertyData;Landroid/content/Context;Ljava/lang/String;)Lcom/lzx/iteam/bean/SkinVertyData;

    move-result-object v2

    sput-object v2, Lcom/lzx/iteam/CloudDialerActivity;->mVertySkin2:Lcom/lzx/iteam/bean/SkinVertyData;

    .line 90
    :cond_1
    return-void
.end method

.method public setGetChatGroupList(Z)V
    .locals 0
    .param p1, "isGetChatGroupList"    # Z

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/lzx/iteam/DialerApp;->isGetChatGroupList:Z

    .line 145
    return-void
.end method

.method public setmEventToWhere(Ljava/lang/String;)V
    .locals 0
    .param p1, "mEventToWhere"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/lzx/iteam/DialerApp;->mEventToWhere:Ljava/lang/String;

    .line 153
    return-void
.end method
