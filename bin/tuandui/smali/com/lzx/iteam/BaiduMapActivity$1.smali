.class Lcom/lzx/iteam/BaiduMapActivity$1;
.super Ljava/lang/Object;
.source "BaiduMapActivity.java"

# interfaces
.implements Lcom/lzx/iteam/util/LocationUtil$LocationStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/BaiduMapActivity;->initMap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/BaiduMapActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/BaiduMapActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/BaiduMapActivity$1;->this$0:Lcom/lzx/iteam/BaiduMapActivity;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocated(Lcom/baidu/location/BDLocation;)V
    .locals 9
    .param p1, "location"    # Lcom/baidu/location/BDLocation;

    .prologue
    .line 133
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/lzx/iteam/BaiduMapActivity$1;->this$0:Lcom/lzx/iteam/BaiduMapActivity;

    # getter for: Lcom/lzx/iteam/BaiduMapActivity;->mMapView:Lcom/baidu/mapapi/map/MapView;
    invoke-static {v1}, Lcom/lzx/iteam/BaiduMapActivity;->access$0(Lcom/lzx/iteam/BaiduMapActivity;)Lcom/baidu/mapapi/map/MapView;

    move-result-object v1

    if-nez v1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v1, p0, Lcom/lzx/iteam/BaiduMapActivity$1;->this$0:Lcom/lzx/iteam/BaiduMapActivity;

    # getter for: Lcom/lzx/iteam/BaiduMapActivity;->Tag:Ljava/lang/String;
    invoke-static {v1}, Lcom/lzx/iteam/BaiduMapActivity;->access$1(Lcom/lzx/iteam/BaiduMapActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5f53\u524d\u4f4d\u7f6e\u7ecf\u7eac\u5ea6\uff1alatitude="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",longitude="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",address"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getAddress()Lcom/baidu/location/Address;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",addrStr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getAddrStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v1, p0, Lcom/lzx/iteam/BaiduMapActivity$1;->this$0:Lcom/lzx/iteam/BaiduMapActivity;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/lzx/iteam/BaiduMapActivity;->access$2(Lcom/lzx/iteam/BaiduMapActivity;D)V

    .line 139
    iget-object v1, p0, Lcom/lzx/iteam/BaiduMapActivity$1;->this$0:Lcom/lzx/iteam/BaiduMapActivity;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/lzx/iteam/BaiduMapActivity;->access$3(Lcom/lzx/iteam/BaiduMapActivity;D)V

    .line 140
    iget-object v1, p0, Lcom/lzx/iteam/BaiduMapActivity$1;->this$0:Lcom/lzx/iteam/BaiduMapActivity;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getAddrStr()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lzx/iteam/BaiduMapActivity;->access$4(Lcom/lzx/iteam/BaiduMapActivity;Ljava/lang/String;)V

    .line 142
    const-string v1, "update"

    iget-object v2, p0, Lcom/lzx/iteam/BaiduMapActivity$1;->this$0:Lcom/lzx/iteam/BaiduMapActivity;

    # getter for: Lcom/lzx/iteam/BaiduMapActivity;->mAction:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/BaiduMapActivity;->access$5(Lcom/lzx/iteam/BaiduMapActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 143
    iget-object v1, p0, Lcom/lzx/iteam/BaiduMapActivity$1;->this$0:Lcom/lzx/iteam/BaiduMapActivity;

    iget-object v2, p0, Lcom/lzx/iteam/BaiduMapActivity$1;->this$0:Lcom/lzx/iteam/BaiduMapActivity;

    # getter for: Lcom/lzx/iteam/BaiduMapActivity;->latitude:D
    invoke-static {v2}, Lcom/lzx/iteam/BaiduMapActivity;->access$6(Lcom/lzx/iteam/BaiduMapActivity;)D

    move-result-wide v2

    iget-object v4, p0, Lcom/lzx/iteam/BaiduMapActivity$1;->this$0:Lcom/lzx/iteam/BaiduMapActivity;

    # getter for: Lcom/lzx/iteam/BaiduMapActivity;->longitude:D
    invoke-static {v4}, Lcom/lzx/iteam/BaiduMapActivity;->access$7(Lcom/lzx/iteam/BaiduMapActivity;)D

    move-result-wide v4

    iget-object v6, p0, Lcom/lzx/iteam/BaiduMapActivity$1;->this$0:Lcom/lzx/iteam/BaiduMapActivity;

    # getter for: Lcom/lzx/iteam/BaiduMapActivity;->address:Ljava/lang/String;
    invoke-static {v6}, Lcom/lzx/iteam/BaiduMapActivity;->access$8(Lcom/lzx/iteam/BaiduMapActivity;)Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/lzx/iteam/BaiduMapActivity;->showLocation(DDLjava/lang/String;)V
    invoke-static/range {v1 .. v6}, Lcom/lzx/iteam/BaiduMapActivity;->access$9(Lcom/lzx/iteam/BaiduMapActivity;DDLjava/lang/String;)V

    .line 145
    :cond_2
    new-instance v1, Lcom/baidu/mapapi/map/MyLocationData$Builder;

    invoke-direct {v1}, Lcom/baidu/mapapi/map/MyLocationData$Builder;-><init>()V

    .line 146
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getRadius()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/map/MyLocationData$Builder;->accuracy(F)Lcom/baidu/mapapi/map/MyLocationData$Builder;

    move-result-object v1

    .line 148
    const/high16 v2, 0x42c80000    # 100.0f

    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/map/MyLocationData$Builder;->direction(F)Lcom/baidu/mapapi/map/MyLocationData$Builder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/baidu/mapapi/map/MyLocationData$Builder;->latitude(D)Lcom/baidu/mapapi/map/MyLocationData$Builder;

    move-result-object v1

    .line 149
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/baidu/mapapi/map/MyLocationData$Builder;->longitude(D)Lcom/baidu/mapapi/map/MyLocationData$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/MyLocationData$Builder;->build()Lcom/baidu/mapapi/map/MyLocationData;

    move-result-object v8

    .line 150
    .local v8, "locData":Lcom/baidu/mapapi/map/MyLocationData;
    iget-object v1, p0, Lcom/lzx/iteam/BaiduMapActivity$1;->this$0:Lcom/lzx/iteam/BaiduMapActivity;

    iget-object v1, v1, Lcom/lzx/iteam/BaiduMapActivity;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v1, v8}, Lcom/baidu/mapapi/map/BaiduMap;->setMyLocationData(Lcom/baidu/mapapi/map/MyLocationData;)V

    .line 151
    iget-object v1, p0, Lcom/lzx/iteam/BaiduMapActivity$1;->this$0:Lcom/lzx/iteam/BaiduMapActivity;

    iget-boolean v1, v1, Lcom/lzx/iteam/BaiduMapActivity;->isFirstLoc:Z

    if-eqz v1, :cond_0

    const-string v1, "update"

    iget-object v2, p0, Lcom/lzx/iteam/BaiduMapActivity$1;->this$0:Lcom/lzx/iteam/BaiduMapActivity;

    # getter for: Lcom/lzx/iteam/BaiduMapActivity;->mAction:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/BaiduMapActivity;->access$5(Lcom/lzx/iteam/BaiduMapActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/lzx/iteam/BaiduMapActivity$1;->this$0:Lcom/lzx/iteam/BaiduMapActivity;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/lzx/iteam/BaiduMapActivity;->isFirstLoc:Z

    .line 153
    new-instance v7, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v2

    .line 154
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v4

    .line 153
    invoke-direct {v7, v2, v3, v4, v5}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 155
    .local v7, "ll":Lcom/baidu/mapapi/model/LatLng;
    new-instance v0, Lcom/baidu/mapapi/map/MapStatus$Builder;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/MapStatus$Builder;-><init>()V

    .line 156
    .local v0, "builder":Lcom/baidu/mapapi/map/MapStatus$Builder;
    invoke-virtual {v0, v7}, Lcom/baidu/mapapi/map/MapStatus$Builder;->target(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MapStatus$Builder;

    move-result-object v1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/map/MapStatus$Builder;->zoom(F)Lcom/baidu/mapapi/map/MapStatus$Builder;

    .line 157
    iget-object v1, p0, Lcom/lzx/iteam/BaiduMapActivity$1;->this$0:Lcom/lzx/iteam/BaiduMapActivity;

    iget-object v1, v1, Lcom/lzx/iteam/BaiduMapActivity;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapStatus$Builder;->build()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->newMapStatus(Lcom/baidu/mapapi/map/MapStatus;)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/map/BaiduMap;->animateMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V

    goto/16 :goto_0
.end method
