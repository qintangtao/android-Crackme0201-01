.class public Lcom/lzx/iteam/util/LocationUtil$MyLocationListener;
.super Ljava/lang/Object;
.source "LocationUtil.java"

# interfaces
.implements Lcom/baidu/location/BDLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/util/LocationUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/util/LocationUtil;


# direct methods
.method public constructor <init>(Lcom/lzx/iteam/util/LocationUtil;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/lzx/iteam/util/LocationUtil$MyLocationListener;->this$0:Lcom/lzx/iteam/util/LocationUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveLocation(Lcom/baidu/location/BDLocation;)V
    .locals 1
    .param p1, "location"    # Lcom/baidu/location/BDLocation;

    .prologue
    .line 89
    if-nez p1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/util/LocationUtil$MyLocationListener;->this$0:Lcom/lzx/iteam/util/LocationUtil;

    # getter for: Lcom/lzx/iteam/util/LocationUtil;->mListener:Lcom/lzx/iteam/util/LocationUtil$LocationStatus;
    invoke-static {v0}, Lcom/lzx/iteam/util/LocationUtil;->access$0(Lcom/lzx/iteam/util/LocationUtil;)Lcom/lzx/iteam/util/LocationUtil$LocationStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/lzx/iteam/util/LocationUtil$MyLocationListener;->this$0:Lcom/lzx/iteam/util/LocationUtil;

    # getter for: Lcom/lzx/iteam/util/LocationUtil;->mListener:Lcom/lzx/iteam/util/LocationUtil$LocationStatus;
    invoke-static {v0}, Lcom/lzx/iteam/util/LocationUtil;->access$0(Lcom/lzx/iteam/util/LocationUtil;)Lcom/lzx/iteam/util/LocationUtil$LocationStatus;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lzx/iteam/util/LocationUtil$LocationStatus;->onLocated(Lcom/baidu/location/BDLocation;)V

    goto :goto_0
.end method

.method public onReceivePoi(Lcom/baidu/location/BDLocation;)V
    .locals 0
    .param p1, "poiLocation"    # Lcom/baidu/location/BDLocation;

    .prologue
    .line 118
    return-void
.end method
