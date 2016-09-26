.class public Lcom/lzx/iteam/util/ShakeListener;
.super Ljava/lang/Object;
.source "ShakeListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/util/ShakeListener$OnShakeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CloudDialerActivity"

.field private static final TIME_THRESHOLD:I = 0x64


# instance fields
.field private mAccSensor:Landroid/hardware/Sensor;

.field mAxisX:F

.field mAxisY:F

.field mAxisZ:F

.field private mContext:Landroid/content/Context;

.field private mLastTime:J

.field private mLastX:F

.field private mLastY:F

.field private mLastZ:F

.field public mSensorMgr:Landroid/hardware/SensorManager;

.field private mShakeListener:Lcom/lzx/iteam/util/ShakeListener$OnShakeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/high16 v0, -0x40800000    # -1.0f

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v0, p0, Lcom/lzx/iteam/util/ShakeListener;->mLastX:F

    iput v0, p0, Lcom/lzx/iteam/util/ShakeListener;->mLastY:F

    iput v0, p0, Lcom/lzx/iteam/util/ShakeListener;->mLastZ:F

    .line 57
    iput-object p1, p0, Lcom/lzx/iteam/util/ShakeListener;->mContext:Landroid/content/Context;

    .line 58
    iget-object v0, p0, Lcom/lzx/iteam/util/ShakeListener;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/lzx/iteam/util/ShakeListener;->mSensorMgr:Landroid/hardware/SensorManager;

    .line 60
    iget-object v0, p0, Lcom/lzx/iteam/util/ShakeListener;->mSensorMgr:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/lzx/iteam/util/ShakeListener;->mContext:Landroid/content/Context;

    const v1, 0x7f08002e

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/util/ShakeListener;->mSensorMgr:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/util/ShakeListener;->mAccSensor:Landroid/hardware/Sensor;

    .line 66
    invoke-virtual {p0}, Lcom/lzx/iteam/util/ShakeListener;->resume()V

    .line 67
    return-void
.end method


# virtual methods
.method public getAxisX()F
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/lzx/iteam/util/ShakeListener;->mAxisX:F

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 136
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 90
    iget-object v3, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    const/4 v6, 0x1

    if-eq v3, v6, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 100
    .local v4, "now":J
    iget-wide v6, p0, Lcom/lzx/iteam/util/ShakeListener;->mLastTime:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x64

    cmp-long v3, v6, v8

    if-lez v3, :cond_0

    .line 107
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3

    .line 109
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x0

    aget v0, v3, v6

    .line 110
    .local v0, "axisX":F
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x1

    aget v1, v3, v6

    .line 111
    .local v1, "axisY":F
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x2

    aget v2, v3, v6

    .line 113
    .local v2, "axisZ":F
    float-to-double v6, v0

    const-wide v8, 0x402399999999999aL    # 9.8

    div-double/2addr v6, v8

    double-to-float v0, v6

    .line 114
    float-to-double v6, v1

    const-wide v8, 0x402399999999999aL    # 9.8

    div-double/2addr v6, v8

    double-to-float v1, v6

    .line 115
    float-to-double v6, v2

    const-wide v8, 0x402399999999999aL    # 9.8

    div-double/2addr v6, v8

    double-to-float v2, v6

    .line 117
    float-to-double v6, v0

    const-wide v8, 0x3fe3333333333333L    # 0.6

    cmpl-double v3, v6, v8

    if-gtz v3, :cond_2

    float-to-double v6, v0

    const-wide v8, -0x401ccccccccccccdL    # -0.6

    cmpg-double v3, v6, v8

    if-gez v3, :cond_3

    .line 118
    :cond_2
    iget-object v3, p0, Lcom/lzx/iteam/util/ShakeListener;->mShakeListener:Lcom/lzx/iteam/util/ShakeListener$OnShakeListener;

    if-eqz v3, :cond_3

    .line 119
    iget-object v3, p0, Lcom/lzx/iteam/util/ShakeListener;->mShakeListener:Lcom/lzx/iteam/util/ShakeListener$OnShakeListener;

    invoke-interface {v3, v0, v1, v2}, Lcom/lzx/iteam/util/ShakeListener$OnShakeListener;->onShake(FFF)V

    .line 126
    .end local v0    # "axisX":F
    .end local v1    # "axisY":F
    .end local v2    # "axisZ":F
    :cond_3
    iput-wide v4, p0, Lcom/lzx/iteam/util/ShakeListener;->mLastTime:J

    .line 127
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x0

    aget v3, v3, v6

    iput v3, p0, Lcom/lzx/iteam/util/ShakeListener;->mLastX:F

    .line 128
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x1

    aget v3, v3, v6

    iput v3, p0, Lcom/lzx/iteam/util/ShakeListener;->mLastY:F

    .line 129
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x2

    aget v3, v3, v6

    iput v3, p0, Lcom/lzx/iteam/util/ShakeListener;->mLastZ:F

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lzx/iteam/util/ShakeListener;->mSensorMgr:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/lzx/iteam/util/ShakeListener;->mSensorMgr:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 86
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 74
    iget-object v1, p0, Lcom/lzx/iteam/util/ShakeListener;->mSensorMgr:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/lzx/iteam/util/ShakeListener;->mAccSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x2

    invoke-virtual {v1, p0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    .line 80
    .local v0, "supported":Z
    return-void
.end method

.method public setOnShakeListener(Lcom/lzx/iteam/util/ShakeListener$OnShakeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lzx/iteam/util/ShakeListener$OnShakeListener;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/lzx/iteam/util/ShakeListener;->mShakeListener:Lcom/lzx/iteam/util/ShakeListener$OnShakeListener;

    .line 71
    return-void
.end method
