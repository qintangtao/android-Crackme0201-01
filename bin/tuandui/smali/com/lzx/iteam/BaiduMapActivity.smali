.class public Lcom/lzx/iteam/BaiduMapActivity;
.super Landroid/app/Activity;
.source "BaiduMapActivity.java"

# interfaces
.implements Lcom/baidu/mapapi/search/poi/OnGetPoiSearchResultListener;
.implements Lcom/baidu/mapapi/search/geocode/OnGetGeoCoderResultListener;
.implements Lcom/baidu/mapapi/map/BaiduMap$OnMapStatusChangeListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final MAP_SEARCH:I

.field private Tag:Ljava/lang/String;

.field private address:Ljava/lang/String;

.field private attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

.field private geoCoder:Lcom/baidu/mapapi/search/geocode/GeoCoder;

.field isFirstLoc:Z

.field private latitude:D

.field private longitude:D

.field private mAction:Ljava/lang/String;

.field mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

.field private mContactId:Ljava/lang/String;

.field private mCurrentMode:Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;

.field private mGroupName:Ljava/lang/String;

.field private mLlBack:Landroid/widget/LinearLayout;

.field private mLlRoot:Landroid/widget/LinearLayout;

.field private mLlSearch:Landroid/widget/LinearLayout;

.field private mLocationUtil:Lcom/lzx/iteam/util/LocationUtil;

.field private mMapView:Lcom/baidu/mapapi/map/MapView;

.field private mMarker:Lcom/baidu/mapapi/map/BitmapDescriptor;

.field private mOk:Landroid/widget/TextView;

.field private mUserType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    const-string v0, "BaiduMap"

    iput-object v0, p0, Lcom/lzx/iteam/BaiduMapActivity;->Tag:Ljava/lang/String;

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lzx/iteam/BaiduMapActivity;->isFirstLoc:Z

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/BaiduMapActivity;->address:Ljava/lang/String;

    .line 54
    const/16 v0, 0x64

    iput v0, p0, Lcom/lzx/iteam/BaiduMapActivity;->MAP_SEARCH:I

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/BaiduMapActivity;)Lcom/baidu/mapapi/map/MapView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lzx/iteam/BaiduMapActivity;->mMapView:Lcom/baidu/mapapi/map/MapView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lzx/iteam/BaiduMapActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lzx/iteam/BaiduMapActivity;->Tag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/BaiduMapActivity;D)V
    .locals 1

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/lzx/iteam/BaiduMapActivity;->latitude:D

    return-void
.end method

.method static synthetic access$3(Lcom/lzx/iteam/BaiduMapActivity;D)V
    .locals 1

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/lzx/iteam/BaiduMapActivity;->longitude:D

    return-void
.end method

.method static synthetic access$4(Lcom/lzx/iteam/BaiduMapActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/lzx/iteam/BaiduMapActivity;->address:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/lzx/iteam/BaiduMapActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lzx/iteam/BaiduMapActivity;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lzx/iteam/BaiduMapActivity;)D
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/lzx/iteam/BaiduMapActivity;->latitude:D

    return-wide v0
.end method

.method static synthetic access$7(Lcom/lzx/iteam/BaiduMapActivity;)D
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/lzx/iteam/BaiduMapActivity;->longitude:D

    return-wide v0
.end method

.method static synthetic access$8(Lcom/lzx/iteam/BaiduMapActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lzx/iteam/BaiduMapActivity;->address:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/lzx/iteam/BaiduMapActivity;DDLjava/lang/String;)V
    .locals 1

    .prologue
    .line 397
    invoke-direct/range {p0 .. p5}, Lcom/lzx/iteam/BaiduMapActivity;->showLocation(DDLjava/lang/String;)V

    return-void
.end method

.method private getIntentData()V
    .locals 8

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/lzx/iteam/BaiduMapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 84
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "attendanceData"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/bean/AttendanceData;

    iput-object v3, p0, Lcom/lzx/iteam/BaiduMapActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    .line 85
    const-string v3, "group_name"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lzx/iteam/BaiduMapActivity;->mGroupName:Ljava/lang/String;

    .line 86
    const-string v3, "user_type"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lzx/iteam/BaiduMapActivity;->mUserType:Ljava/lang/String;

    .line 87
    const-string v3, "contact_id"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lzx/iteam/BaiduMapActivity;->mContactId:Ljava/lang/String;

    .line 89
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lzx/iteam/BaiduMapActivity;->mAction:Ljava/lang/String;

    .line 90
    const-string v3, "update"

    iget-object v4, p0, Lcom/lzx/iteam/BaiduMapActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    iget-object v3, p0, Lcom/lzx/iteam/BaiduMapActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v3}, Lcom/lzx/iteam/bean/AttendanceData;->getLatitude()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/lzx/iteam/BaiduMapActivity;->latitude:D

    .line 92
    iget-object v3, p0, Lcom/lzx/iteam/BaiduMapActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v3}, Lcom/lzx/iteam/bean/AttendanceData;->getLongitude()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/lzx/iteam/BaiduMapActivity;->longitude:D

    .line 93
    new-instance v2, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v4, p0, Lcom/lzx/iteam/BaiduMapActivity;->latitude:D

    iget-wide v6, p0, Lcom/lzx/iteam/BaiduMapActivity;->longitude:D

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 94
    .local v2, "latLng":Lcom/baidu/mapapi/model/LatLng;
    new-instance v0, Lcom/baidu/mapapi/map/MapStatus$Builder;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/MapStatus$Builder;-><init>()V

    .line 95
    .local v0, "builder":Lcom/baidu/mapapi/map/MapStatus$Builder;
    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/map/MapStatus$Builder;->target(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MapStatus$Builder;

    move-result-object v3

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v3, v4}, Lcom/baidu/mapapi/map/MapStatus$Builder;->zoom(F)Lcom/baidu/mapapi/map/MapStatus$Builder;

    .line 96
    iget-object v3, p0, Lcom/lzx/iteam/BaiduMapActivity;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapStatus$Builder;->build()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->newMapStatus(Lcom/baidu/mapapi/map/MapStatus;)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/mapapi/map/BaiduMap;->animateMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V

    .line 98
    iget-object v3, p0, Lcom/lzx/iteam/BaiduMapActivity;->geoCoder:Lcom/baidu/mapapi/search/geocode/GeoCoder;

    new-instance v4, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;

    invoke-direct {v4}, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;-><init>()V

    .line 99
    invoke-virtual {v4, v2}, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;->location(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;

    move-result-object v4

    .line 98
    invoke-virtual {v3, v4}, Lcom/baidu/mapapi/search/geocode/GeoCoder;->reverseGeoCode(Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;)Z

    .line 101
    .end local v0    # "builder":Lcom/baidu/mapapi/map/MapStatus$Builder;
    .end local v2    # "latLng":Lcom/baidu/mapapi/model/LatLng;
    :cond_0
    return-void
.end method

.method private initMap()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 104
    iget-object v0, p0, Lcom/lzx/iteam/BaiduMapActivity;->mMapView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->getMap()Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/BaiduMapActivity;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    .line 105
    sget-object v0, Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;->NORMAL:Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;

    iput-object v0, p0, Lcom/lzx/iteam/BaiduMapActivity;->mCurrentMode:Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;

    .line 106
    iget-object v0, p0, Lcom/lzx/iteam/BaiduMapActivity;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    .line 107
    new-instance v1, Lcom/baidu/mapapi/map/MyLocationConfiguration;

    .line 108
    iget-object v2, p0, Lcom/lzx/iteam/BaiduMapActivity;->mCurrentMode:Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;

    const/4 v3, 0x0

    .line 107
    invoke-direct {v1, v2, v4, v3}, Lcom/baidu/mapapi/map/MyLocationConfiguration;-><init>(Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;ZLcom/baidu/mapapi/map/BitmapDescriptor;)V

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/BaiduMap;->setMyLocationConfigeration(Lcom/baidu/mapapi/map/MyLocationConfiguration;)V

    .line 110
    iget-object v0, p0, Lcom/lzx/iteam/BaiduMapActivity;->mMapView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0, v5}, Lcom/baidu/mapapi/map/MapView;->showScaleControl(Z)V

    .line 112
    iget-object v0, p0, Lcom/lzx/iteam/BaiduMapActivity;->mMapView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0, v5}, Lcom/baidu/mapapi/map/MapView;->showZoomControls(Z)V

    .line 114
    iget-object v0, p0, Lcom/lzx/iteam/BaiduMapActivity;->mMapView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0, v4}, Lcom/baidu/mapapi/map/MapView;->removeViewAt(I)V

    .line 117
    const v0, 0x7f020235

    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromResource(I)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/BaiduMapActivity;->mMarker:Lcom/baidu/mapapi/map/BitmapDescriptor;

    .line 121
    invoke-static {}, Lcom/baidu/mapapi/search/geocode/GeoCoder;->newInstance()Lcom/baidu/mapapi/search/geocode/GeoCoder;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/BaiduMapActivity;->geoCoder:Lcom/baidu/mapapi/search/geocode/GeoCoder;

    .line 122
    iget-object v0, p0, Lcom/lzx/iteam/BaiduMapActivity;->geoCoder:Lcom/baidu/mapapi/search/geocode/GeoCoder;

    invoke-virtual {v0, p0}, Lcom/baidu/mapapi/search/geocode/GeoCoder;->setOnGetGeoCodeResultListener(Lcom/baidu/mapapi/search/geocode/OnGetGeoCoderResultListener;)V

    .line 124
    iget-object v0, p0, Lcom/lzx/iteam/BaiduMapActivity;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0, p0}, Lcom/baidu/mapapi/map/BaiduMap;->setOnMapStatusChangeListener(Lcom/baidu/mapapi/map/BaiduMap$OnMapStatusChangeListener;)V

    .line 126
    iget-object v0, p0, Lcom/lzx/iteam/BaiduMapActivity;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0, v4}, Lcom/baidu/mapapi/map/BaiduMap;->setMyLocationEnabled(Z)V

    .line 128
    new-instance v0, Lcom/lzx/iteam/util/LocationUtil;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/util/LocationUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/BaiduMapActivity;->mLocationUtil:Lcom/lzx/iteam/util/LocationUtil;

    .line 129
    iget-object v0, p0, Lcom/lzx/iteam/BaiduMapActivity;->mLocationUtil:Lcom/lzx/iteam/util/LocationUtil;

    new-instance v1, Lcom/lzx/iteam/BaiduMapActivity$1;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/BaiduMapActivity$1;-><init>(Lcom/lzx/iteam/BaiduMapActivity;)V

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/util/LocationUtil;->setListener(Lcom/lzx/iteam/util/LocationUtil$LocationStatus;)V

    .line 161
    return-void
.end method

.method private initViews()V
    .locals 1

    .prologue
    .line 71
    const v0, 0x7f0e012c

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/BaiduMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/MapView;

    iput-object v0, p0, Lcom/lzx/iteam/BaiduMapActivity;->mMapView:Lcom/baidu/mapapi/map/MapView;

    .line 72
    const v0, 0x7f0e012a

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/BaiduMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/BaiduMapActivity;->mLlBack:Landroid/widget/LinearLayout;

    .line 73
    const v0, 0x7f0e012d

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/BaiduMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/BaiduMapActivity;->mOk:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f0e0129

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/BaiduMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/BaiduMapActivity;->mLlRoot:Landroid/widget/LinearLayout;

    .line 75
    const v0, 0x7f0e012b

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/BaiduMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/BaiduMapActivity;->mLlSearch:Landroid/widget/LinearLayout;

    .line 77
    iget-object v0, p0, Lcom/lzx/iteam/BaiduMapActivity;->mLlBack:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/lzx/iteam/BaiduMapActivity;->mOk:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/lzx/iteam/BaiduMapActivity;->mLlSearch:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-void
.end method

.method private showLocation(DDLjava/lang/String;)V
    .locals 13
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "address"    # Ljava/lang/String;

    .prologue
    .line 400
    const/4 v4, 0x0

    .line 402
    .local v4, "pt":Lcom/baidu/mapapi/model/LatLng;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f0300bb

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 403
    .local v6, "view":Landroid/view/View;
    const v7, 0x7f0e04e0

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 404
    .local v5, "textView":Landroid/widget/TextView;
    new-instance v4, Lcom/baidu/mapapi/model/LatLng;

    .end local v4    # "pt":Lcom/baidu/mapapi/model/LatLng;
    const-wide v8, 0x3f3a36e2eb1c432dL    # 4.0E-4

    add-double/2addr v8, p1

    const-wide v10, 0x3f0a36e2eb1c432dL    # 5.0E-5

    add-double v10, v10, p3

    invoke-direct {v4, v8, v9, v10, v11}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 405
    .restart local v4    # "pt":Lcom/baidu/mapapi/model/LatLng;
    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    new-instance v2, Lcom/lzx/iteam/BaiduMapActivity$3;

    invoke-direct {v2, p0}, Lcom/lzx/iteam/BaiduMapActivity$3;-><init>(Lcom/lzx/iteam/BaiduMapActivity;)V

    .line 416
    .local v2, "listener":Lcom/baidu/mapapi/map/InfoWindow$OnInfoWindowClickListener;
    new-instance v3, Lcom/baidu/mapapi/map/InfoWindow;

    invoke-static {v6}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromView(Landroid/view/View;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v7

    const/16 v8, -0x2f

    invoke-direct {v3, v7, v4, v8, v2}, Lcom/baidu/mapapi/map/InfoWindow;-><init>(Lcom/baidu/mapapi/map/BitmapDescriptor;Lcom/baidu/mapapi/model/LatLng;ILcom/baidu/mapapi/map/InfoWindow$OnInfoWindowClickListener;)V

    .line 417
    .local v3, "mInfoWindow":Lcom/baidu/mapapi/map/InfoWindow;
    iget-object v7, p0, Lcom/lzx/iteam/BaiduMapActivity;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v7, v3}, Lcom/baidu/mapapi/map/BaiduMap;->showInfoWindow(Lcom/baidu/mapapi/map/InfoWindow;)V

    .line 419
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 424
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 425
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 426
    packed-switch p1, :pswitch_data_0

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 428
    :pswitch_0
    const-string v3, "address"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/AddressData;

    .line 429
    .local v0, "addressData":Lcom/lzx/iteam/bean/AddressData;
    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AddressData;->getLatitude()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/lzx/iteam/BaiduMapActivity;->latitude:D

    .line 430
    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AddressData;->getLongitude()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/lzx/iteam/BaiduMapActivity;->longitude:D

    .line 432
    new-instance v2, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v4, p0, Lcom/lzx/iteam/BaiduMapActivity;->latitude:D

    iget-wide v6, p0, Lcom/lzx/iteam/BaiduMapActivity;->longitude:D

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 433
    .local v2, "latLng":Lcom/baidu/mapapi/model/LatLng;
    new-instance v1, Lcom/baidu/mapapi/map/MapStatus$Builder;

    invoke-direct {v1}, Lcom/baidu/mapapi/map/MapStatus$Builder;-><init>()V

    .line 434
    .local v1, "builder":Lcom/baidu/mapapi/map/MapStatus$Builder;
    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/map/MapStatus$Builder;->target(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MapStatus$Builder;

    move-result-object v3

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v3, v4}, Lcom/baidu/mapapi/map/MapStatus$Builder;->zoom(F)Lcom/baidu/mapapi/map/MapStatus$Builder;

    .line 435
    iget-object v3, p0, Lcom/lzx/iteam/BaiduMapActivity;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/MapStatus$Builder;->build()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->newMapStatus(Lcom/baidu/mapapi/map/MapStatus;)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/mapapi/map/BaiduMap;->animateMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V

    .line 438
    iget-object v3, p0, Lcom/lzx/iteam/BaiduMapActivity;->geoCoder:Lcom/baidu/mapapi/search/geocode/GeoCoder;

    new-instance v4, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;

    invoke-direct {v4}, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;-><init>()V

    .line 439
    invoke-virtual {v4, v2}, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;->location(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;

    move-result-object v4

    .line 438
    invoke-virtual {v3, v4}, Lcom/baidu/mapapi/search/geocode/GeoCoder;->reverseGeoCode(Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;)Z

    goto :goto_0

    .line 426
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 205
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 272
    :goto_0
    :pswitch_0
    return-void

    .line 207
    :pswitch_1
    invoke-virtual {p0}, Lcom/lzx/iteam/BaiduMapActivity;->finish()V

    goto :goto_0

    .line 210
    :pswitch_2
    iget-object v3, p0, Lcom/lzx/iteam/BaiduMapActivity;->Tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u4f7f\u7528\u8be5\u5730\u70b9\uff1aaddress:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/lzx/iteam/BaiduMapActivity;->address:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",latitude:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/lzx/iteam/BaiduMapActivity;->latitude:D

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",longitude:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/lzx/iteam/BaiduMapActivity;->longitude:D

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v3, p0, Lcom/lzx/iteam/BaiduMapActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    iget-object v4, p0, Lcom/lzx/iteam/BaiduMapActivity;->address:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/lzx/iteam/bean/AttendanceData;->setAddress(Ljava/lang/String;)V

    .line 212
    iget-object v3, p0, Lcom/lzx/iteam/BaiduMapActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/lzx/iteam/BaiduMapActivity;->latitude:D

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lzx/iteam/bean/AttendanceData;->setLatitude(Ljava/lang/String;)V

    .line 213
    iget-object v3, p0, Lcom/lzx/iteam/BaiduMapActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/lzx/iteam/BaiduMapActivity;->longitude:D

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lzx/iteam/bean/AttendanceData;->setLongitude(Ljava/lang/String;)V

    .line 219
    iget-object v3, p0, Lcom/lzx/iteam/BaiduMapActivity;->address:Ljava/lang/String;

    invoke-static {v3}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/lzx/iteam/BaiduMapActivity;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/lzx/iteam/BaiduMapActivity;->longitude:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 220
    :cond_0
    const-string v3, "\u5730\u5740\u4e3a\u7a7a\uff0c\u8bf7\u91cd\u65b0\u9009\u62e9"

    invoke-static {p0, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 222
    :cond_1
    iget-object v3, p0, Lcom/lzx/iteam/BaiduMapActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v3}, Lcom/lzx/iteam/bean/AttendanceData;->get_id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "update"

    iget-object v4, p0, Lcom/lzx/iteam/BaiduMapActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 223
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 224
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/lzx/iteam/BaiduMapActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/lzx/iteam/BaiduMapActivity;->latitude:D

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lzx/iteam/bean/AttendanceData;->setLatitude(Ljava/lang/String;)V

    .line 225
    iget-object v3, p0, Lcom/lzx/iteam/BaiduMapActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/lzx/iteam/BaiduMapActivity;->longitude:D

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lzx/iteam/bean/AttendanceData;->setLongitude(Ljava/lang/String;)V

    .line 226
    const-string v3, "attendanceData"

    iget-object v4, p0, Lcom/lzx/iteam/BaiduMapActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 227
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v1}, Lcom/lzx/iteam/BaiduMapActivity;->setResult(ILandroid/content/Intent;)V

    .line 228
    invoke-virtual {p0}, Lcom/lzx/iteam/BaiduMapActivity;->finish()V

    goto/16 :goto_0

    .line 230
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/lzx/iteam/CloudDialerActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 231
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "attendance_member_add"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    const-string v3, "attendanceData"

    iget-object v4, p0, Lcom/lzx/iteam/BaiduMapActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 233
    const-string v3, "group_id"

    iget-object v4, p0, Lcom/lzx/iteam/BaiduMapActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v4}, Lcom/lzx/iteam/bean/AttendanceData;->getGroupId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const-string v3, "tag_id"

    const-string v4, "0"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    const-string v3, "tag_name"

    iget-object v4, p0, Lcom/lzx/iteam/BaiduMapActivity;->mGroupName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    const-string v3, "group_name"

    iget-object v4, p0, Lcom/lzx/iteam/BaiduMapActivity;->mGroupName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    const-string v3, "user_type"

    iget-object v4, p0, Lcom/lzx/iteam/BaiduMapActivity;->mUserType:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const-string v3, "contact_id"

    iget-object v4, p0, Lcom/lzx/iteam/BaiduMapActivity;->mContactId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    const-string v3, "where"

    const-string v4, "cloud"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    invoke-virtual {p0, v1}, Lcom/lzx/iteam/BaiduMapActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 247
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_3
    iget-object v3, p0, Lcom/lzx/iteam/BaiduMapActivity;->mLlSearch:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v3

    int-to-float v2, v3

    .line 248
    .local v2, "y":F
    iget-object v3, p0, Lcom/lzx/iteam/BaiduMapActivity;->mLlSearch:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    .line 249
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    neg-float v3, v2

    invoke-direct {v0, v4, v4, v4, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 250
    .local v0, "animation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 251
    invoke-virtual {v0, v8}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 252
    new-instance v3, Lcom/lzx/iteam/BaiduMapActivity$2;

    invoke-direct {v3, p0}, Lcom/lzx/iteam/BaiduMapActivity$2;-><init>(Lcom/lzx/iteam/BaiduMapActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 269
    iget-object v3, p0, Lcom/lzx/iteam/BaiduMapActivity;->mLlRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e012a
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/lzx/iteam/BaiduMapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mapapi/SDKInitializer;->initialize(Landroid/content/Context;)V

    .line 64
    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/BaiduMapActivity;->setContentView(I)V

    .line 65
    invoke-direct {p0}, Lcom/lzx/iteam/BaiduMapActivity;->initViews()V

    .line 66
    invoke-direct {p0}, Lcom/lzx/iteam/BaiduMapActivity;->initMap()V

    .line 67
    invoke-direct {p0}, Lcom/lzx/iteam/BaiduMapActivity;->getIntentData()V

    .line 68
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 166
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 169
    iget-object v0, p0, Lcom/lzx/iteam/BaiduMapActivity;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/BaiduMap;->setMyLocationEnabled(Z)V

    .line 171
    iget-object v0, p0, Lcom/lzx/iteam/BaiduMapActivity;->mLocationUtil:Lcom/lzx/iteam/util/LocationUtil;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/lzx/iteam/BaiduMapActivity;->mLocationUtil:Lcom/lzx/iteam/util/LocationUtil;

    invoke-virtual {v0}, Lcom/lzx/iteam/util/LocationUtil;->stopLocation()V

    .line 173
    iget-object v0, p0, Lcom/lzx/iteam/BaiduMapActivity;->mLocationUtil:Lcom/lzx/iteam/util/LocationUtil;

    invoke-virtual {v0}, Lcom/lzx/iteam/util/LocationUtil;->destoryLocation()V

    .line 174
    iput-object v2, p0, Lcom/lzx/iteam/BaiduMapActivity;->mLocationUtil:Lcom/lzx/iteam/util/LocationUtil;

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/BaiduMapActivity;->mMapView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->onDestroy()V

    .line 178
    iput-object v2, p0, Lcom/lzx/iteam/BaiduMapActivity;->mMapView:Lcom/baidu/mapapi/map/MapView;

    .line 179
    return-void
.end method

.method public onGetGeoCodeResult(Lcom/baidu/mapapi/search/geocode/GeoCodeResult;)V
    .locals 2
    .param p1, "geoCodeResult"    # Lcom/baidu/mapapi/search/geocode/GeoCodeResult;

    .prologue
    .line 469
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/geocode/GeoCodeResult;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->newLatLng(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object v0

    .line 470
    .local v0, "status":Lcom/baidu/mapapi/map/MapStatusUpdate;
    iget-object v1, p0, Lcom/lzx/iteam/BaiduMapActivity;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/BaiduMap;->animateMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V

    .line 471
    return-void
.end method

.method public onGetPoiDetailResult(Lcom/baidu/mapapi/search/poi/PoiDetailResult;)V
    .locals 0
    .param p1, "poiDetailResult"    # Lcom/baidu/mapapi/search/poi/PoiDetailResult;

    .prologue
    .line 201
    return-void
.end method

.method public onGetPoiResult(Lcom/baidu/mapapi/search/poi/PoiResult;)V
    .locals 0
    .param p1, "poiResult"    # Lcom/baidu/mapapi/search/poi/PoiResult;

    .prologue
    .line 196
    return-void
.end method

.method public onGetReverseGeoCodeResult(Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;)V
    .locals 7
    .param p1, "reverseGeoCodeResult"    # Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;

    .prologue
    .line 477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->getAddressDetail()Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;

    move-result-object v2

    iget-object v2, v2, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;->city:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->getAddressDetail()Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;

    move-result-object v2

    iget-object v2, v2, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;->district:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->getAddressDetail()Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;

    move-result-object v2

    iget-object v2, v2, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;->street:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->getAddressDetail()Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;

    move-result-object v2

    iget-object v2, v2, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;->streetNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/BaiduMapActivity;->address:Ljava/lang/String;

    .line 478
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    .line 479
    .local v0, "latLng":Lcom/baidu/mapapi/model/LatLng;
    iget-wide v2, v0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iput-wide v2, p0, Lcom/lzx/iteam/BaiduMapActivity;->latitude:D

    .line 480
    iget-wide v2, v0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    iput-wide v2, p0, Lcom/lzx/iteam/BaiduMapActivity;->longitude:D

    .line 482
    iget-wide v2, p0, Lcom/lzx/iteam/BaiduMapActivity;->latitude:D

    iget-wide v4, p0, Lcom/lzx/iteam/BaiduMapActivity;->longitude:D

    iget-object v6, p0, Lcom/lzx/iteam/BaiduMapActivity;->address:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/lzx/iteam/BaiduMapActivity;->showLocation(DDLjava/lang/String;)V

    .line 483
    iget-object v1, p0, Lcom/lzx/iteam/BaiduMapActivity;->Tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "address="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lzx/iteam/BaiduMapActivity;->address:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    return-void
.end method

.method public onMapStatusChange(Lcom/baidu/mapapi/map/MapStatus;)V
    .locals 0
    .param p1, "mapStatus"    # Lcom/baidu/mapapi/map/MapStatus;

    .prologue
    .line 453
    return-void
.end method

.method public onMapStatusChangeFinish(Lcom/baidu/mapapi/map/MapStatus;)V
    .locals 7
    .param p1, "mapStatus"    # Lcom/baidu/mapapi/map/MapStatus;

    .prologue
    .line 457
    iget-object v1, p0, Lcom/lzx/iteam/BaiduMapActivity;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/BaiduMap;->getMapStatus()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object v1

    iget-object v0, v1, Lcom/baidu/mapapi/map/MapStatus;->target:Lcom/baidu/mapapi/model/LatLng;

    .line 459
    .local v0, "ptCenter":Lcom/baidu/mapapi/model/LatLng;
    iget-wide v2, v0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iput-wide v2, p0, Lcom/lzx/iteam/BaiduMapActivity;->latitude:D

    .line 460
    iget-wide v2, v0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    iput-wide v2, p0, Lcom/lzx/iteam/BaiduMapActivity;->longitude:D

    .line 461
    iget-wide v2, p0, Lcom/lzx/iteam/BaiduMapActivity;->latitude:D

    iget-wide v4, p0, Lcom/lzx/iteam/BaiduMapActivity;->longitude:D

    const-string v6, "\u66f4\u65b0\u5730\u5740.."

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/lzx/iteam/BaiduMapActivity;->showLocation(DDLjava/lang/String;)V

    .line 462
    iget-object v1, p0, Lcom/lzx/iteam/BaiduMapActivity;->geoCoder:Lcom/baidu/mapapi/search/geocode/GeoCoder;

    new-instance v2, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;

    invoke-direct {v2}, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;-><init>()V

    .line 463
    invoke-virtual {v2, v0}, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;->location(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;

    move-result-object v2

    .line 462
    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/search/geocode/GeoCoder;->reverseGeoCode(Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;)Z

    .line 464
    return-void
.end method

.method public onMapStatusChangeStart(Lcom/baidu/mapapi/map/MapStatus;)V
    .locals 1
    .param p1, "mapStatus"    # Lcom/baidu/mapapi/map/MapStatus;

    .prologue
    .line 447
    iget-object v0, p0, Lcom/lzx/iteam/BaiduMapActivity;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BaiduMap;->hideInfoWindow()V

    .line 448
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 189
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 190
    iget-object v0, p0, Lcom/lzx/iteam/BaiduMapActivity;->mMapView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->onPause()V

    .line 191
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 183
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 184
    iget-object v0, p0, Lcom/lzx/iteam/BaiduMapActivity;->mMapView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->onResume()V

    .line 185
    return-void
.end method
