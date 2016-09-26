.class public Lcom/lzx/iteam/util/LocationUtil;
.super Ljava/lang/Object;
.source "LocationUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/util/LocationUtil$LocationStatus;,
        Lcom/lzx/iteam/util/LocationUtil$MyLocationListener;
    }
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;

.field private mLatitude:J

.field private mListener:Lcom/lzx/iteam/util/LocationUtil$LocationStatus;

.field private mLocationClient:Lcom/baidu/location/LocationClient;

.field private mLontitude:J

.field private myListener:Lcom/baidu/location/BDLocationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/lzx/iteam/util/LocationUtil$MyLocationListener;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/util/LocationUtil$MyLocationListener;-><init>(Lcom/lzx/iteam/util/LocationUtil;)V

    iput-object v0, p0, Lcom/lzx/iteam/util/LocationUtil;->myListener:Lcom/baidu/location/BDLocationListener;

    .line 22
    iput-object p1, p0, Lcom/lzx/iteam/util/LocationUtil;->mContext:Landroid/content/Context;

    .line 23
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/lzx/iteam/util/LocationUtil;->initLocation(I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "time"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/lzx/iteam/util/LocationUtil$MyLocationListener;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/util/LocationUtil$MyLocationListener;-><init>(Lcom/lzx/iteam/util/LocationUtil;)V

    iput-object v0, p0, Lcom/lzx/iteam/util/LocationUtil;->myListener:Lcom/baidu/location/BDLocationListener;

    .line 27
    iput-object p1, p0, Lcom/lzx/iteam/util/LocationUtil;->mContext:Landroid/content/Context;

    .line 28
    invoke-direct {p0, p2}, Lcom/lzx/iteam/util/LocationUtil;->initLocation(I)V

    .line 29
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/util/LocationUtil;)Lcom/lzx/iteam/util/LocationUtil$LocationStatus;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/lzx/iteam/util/LocationUtil;->mListener:Lcom/lzx/iteam/util/LocationUtil$LocationStatus;

    return-object v0
.end method

.method private initLocation(I)V
    .locals 3
    .param p1, "time"    # I

    .prologue
    .line 40
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 41
    const/16 p1, 0x1388

    .line 43
    :cond_0
    new-instance v1, Lcom/baidu/location/LocationClient;

    iget-object v2, p0, Lcom/lzx/iteam/util/LocationUtil;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/baidu/location/LocationClient;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lzx/iteam/util/LocationUtil;->mLocationClient:Lcom/baidu/location/LocationClient;

    .line 44
    iget-object v1, p0, Lcom/lzx/iteam/util/LocationUtil;->mLocationClient:Lcom/baidu/location/LocationClient;

    iget-object v2, p0, Lcom/lzx/iteam/util/LocationUtil;->myListener:Lcom/baidu/location/BDLocationListener;

    invoke-virtual {v1, v2}, Lcom/baidu/location/LocationClient;->registerLocationListener(Lcom/baidu/location/BDLocationListener;)V

    .line 45
    new-instance v0, Lcom/baidu/location/LocationClientOption;

    invoke-direct {v0}, Lcom/baidu/location/LocationClientOption;-><init>()V

    .line 46
    .local v0, "option":Lcom/baidu/location/LocationClientOption;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setOpenGps(Z)V

    .line 47
    const-string v1, "all"

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setAddrType(Ljava/lang/String;)V

    .line 48
    const-string v1, "bd09ll"

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setCoorType(Ljava/lang/String;)V

    .line 50
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->disableCache(Z)V

    .line 51
    iget-object v1, p0, Lcom/lzx/iteam/util/LocationUtil;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v1, v0}, Lcom/baidu/location/LocationClient;->setLocOption(Lcom/baidu/location/LocationClientOption;)V

    .line 52
    iget-object v1, p0, Lcom/lzx/iteam/util/LocationUtil;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v1}, Lcom/baidu/location/LocationClient;->start()V

    .line 53
    invoke-virtual {p0}, Lcom/lzx/iteam/util/LocationUtil;->requestLocation()V

    .line 54
    return-void
.end method


# virtual methods
.method public destoryLocation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 76
    iget-object v0, p0, Lcom/lzx/iteam/util/LocationUtil;->mLocationClient:Lcom/baidu/location/LocationClient;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/lzx/iteam/util/LocationUtil;->mLocationClient:Lcom/baidu/location/LocationClient;

    iget-object v1, p0, Lcom/lzx/iteam/util/LocationUtil;->myListener:Lcom/baidu/location/BDLocationListener;

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClient;->unRegisterLocationListener(Lcom/baidu/location/BDLocationListener;)V

    .line 78
    iget-object v0, p0, Lcom/lzx/iteam/util/LocationUtil;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->stop()V

    .line 79
    iput-object v2, p0, Lcom/lzx/iteam/util/LocationUtil;->mLocationClient:Lcom/baidu/location/LocationClient;

    .line 81
    :cond_0
    iput-object v2, p0, Lcom/lzx/iteam/util/LocationUtil;->mListener:Lcom/lzx/iteam/util/LocationUtil$LocationStatus;

    .line 82
    return-void
.end method

.method public requestLocation()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lzx/iteam/util/LocationUtil;->mLocationClient:Lcom/baidu/location/LocationClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/util/LocationUtil;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/lzx/iteam/util/LocationUtil;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->requestLocation()I

    .line 60
    :cond_0
    return-void
.end method

.method public resumeLocation()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lzx/iteam/util/LocationUtil;->mLocationClient:Lcom/baidu/location/LocationClient;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/lzx/iteam/util/LocationUtil;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->start()V

    .line 67
    :cond_0
    return-void
.end method

.method public setListener(Lcom/lzx/iteam/util/LocationUtil$LocationStatus;)V
    .locals 0
    .param p1, "listener"    # Lcom/lzx/iteam/util/LocationUtil$LocationStatus;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/lzx/iteam/util/LocationUtil;->mListener:Lcom/lzx/iteam/util/LocationUtil$LocationStatus;

    .line 33
    return-void
.end method

.method public stopLocation()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/lzx/iteam/util/LocationUtil;->mLocationClient:Lcom/baidu/location/LocationClient;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/lzx/iteam/util/LocationUtil;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->stop()V

    .line 73
    :cond_0
    return-void
.end method
