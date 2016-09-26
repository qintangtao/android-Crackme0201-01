.class public Lcom/lzx/iteam/util/SendCardShakeListener;
.super Ljava/lang/Object;
.source "SendCardShakeListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/util/SendCardShakeListener$OnShakeListener;
    }
.end annotation


# static fields
.field private static final LAST_ONSHAKE_TIME:I = 0x3e8

.field private static SPEED_SHRESHOLD:I = 0x0

.field private static final UPTATE_INTERVAL_TIME:I = 0x46


# instance fields
.field private lastOnShake:J

.field private lastUpdateTime:J

.field private lastX:F

.field private lastY:F

.field private lastZ:F

.field mAxisX:F

.field mAxisY:F

.field mAxisZ:F

.field private mContext:Landroid/content/Context;

.field private mSensorMgr:Landroid/hardware/SensorManager;

.field private mShakeListener:Lcom/lzx/iteam/util/SendCardShakeListener$OnShakeListener;

.field private mTotalForcePrev:D

.field private vibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/16 v0, 0x7d0

    sput v0, Lcom/lzx/iteam/util/SendCardShakeListener;->SPEED_SHRESHOLD:I

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v2, 0x352

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/lzx/iteam/util/SendCardShakeListener;->mContext:Landroid/content/Context;

    .line 63
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/lzx/iteam/util/SendCardShakeListener;->vibrator:Landroid/os/Vibrator;

    .line 64
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    const/16 v0, 0x5dc

    sput v0, Lcom/lzx/iteam/util/SendCardShakeListener;->SPEED_SHRESHOLD:I

    .line 76
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/lzx/iteam/util/SendCardShakeListener;->resume()V

    .line 77
    return-void

    .line 66
    :cond_1
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Coolpad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 67
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "htc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 68
    :cond_2
    const/16 v0, 0xdac

    sput v0, Lcom/lzx/iteam/util/SendCardShakeListener;->SPEED_SHRESHOLD:I

    goto :goto_0

    .line 69
    :cond_3
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 70
    sput v2, Lcom/lzx/iteam/util/SendCardShakeListener;->SPEED_SHRESHOLD:I

    goto :goto_0

    .line 71
    :cond_4
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "google"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 72
    const/16 v0, 0x60e

    sput v0, Lcom/lzx/iteam/util/SendCardShakeListener;->SPEED_SHRESHOLD:I

    goto :goto_0

    .line 73
    :cond_5
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HUAWEI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    sput v2, Lcom/lzx/iteam/util/SendCardShakeListener;->SPEED_SHRESHOLD:I

    goto :goto_0
.end method


# virtual methods
.method public getAxisX()F
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/lzx/iteam/util/SendCardShakeListener;->mAxisX:F

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 161
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 20
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 108
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v14}, Landroid/hardware/Sensor;->getType()I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 115
    .local v2, "currentUpdateTime":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/lzx/iteam/util/SendCardShakeListener;->lastUpdateTime:J

    sub-long v10, v2, v14

    .line 117
    .local v10, "timeInterval":J
    const-wide/16 v14, 0x46

    cmp-long v14, v10, v14

    if-ltz v14, :cond_0

    .line 120
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lzx/iteam/util/SendCardShakeListener;->lastUpdateTime:J

    .line 122
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v15, 0x0

    aget v7, v14, v15

    .line 123
    .local v7, "x":F
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v15, 0x1

    aget v12, v14, v15

    .line 124
    .local v12, "y":F
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v15, 0x2

    aget v13, v14, v15

    .line 126
    .local v13, "z":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/lzx/iteam/util/SendCardShakeListener;->lastX:F

    sub-float v4, v7, v14

    .line 127
    .local v4, "deltaX":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/lzx/iteam/util/SendCardShakeListener;->lastY:F

    sub-float v5, v12, v14

    .line 128
    .local v5, "deltaY":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/lzx/iteam/util/SendCardShakeListener;->lastZ:F

    sub-float v6, v13, v14

    .line 130
    .local v6, "deltaZ":F
    move-object/from16 v0, p0

    iput v7, v0, Lcom/lzx/iteam/util/SendCardShakeListener;->lastX:F

    .line 131
    move-object/from16 v0, p0

    iput v12, v0, Lcom/lzx/iteam/util/SendCardShakeListener;->lastY:F

    .line 132
    move-object/from16 v0, p0

    iput v13, v0, Lcom/lzx/iteam/util/SendCardShakeListener;->lastZ:F

    .line 133
    mul-float v14, v4, v4

    mul-float v15, v5, v5

    add-float/2addr v14, v15

    float-to-double v14, v14

    const-wide v16, 0x3fc999999999999aL    # 0.2

    float-to-double v0, v6

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    float-to-double v0, v6

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    add-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    .line 134
    long-to-double v0, v10

    move-wide/from16 v16, v0

    .line 133
    div-double v14, v14, v16

    .line 134
    const-wide v16, 0x40c3880000000000L    # 10000.0

    .line 133
    mul-double v8, v14, v16

    .line 136
    .local v8, "speed":D
    sget v14, Lcom/lzx/iteam/util/SendCardShakeListener;->SPEED_SHRESHOLD:I

    int-to-double v14, v14

    cmpl-double v14, v8, v14

    if-ltz v14, :cond_0

    .line 137
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/lzx/iteam/util/SendCardShakeListener;->lastOnShake:J

    sub-long v14, v2, v14

    const-wide/16 v16, 0x3e8

    cmp-long v14, v14, v16

    if-lez v14, :cond_0

    .line 138
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/util/SendCardShakeListener;->vibrator:Landroid/os/Vibrator;

    const-wide/16 v16, 0x1f4

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    .line 139
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/util/SendCardShakeListener;->mShakeListener:Lcom/lzx/iteam/util/SendCardShakeListener$OnShakeListener;

    invoke-interface {v14}, Lcom/lzx/iteam/util/SendCardShakeListener$OnShakeListener;->onShake()V

    .line 140
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lzx/iteam/util/SendCardShakeListener;->lastOnShake:J

    goto/16 :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lzx/iteam/util/SendCardShakeListener;->mSensorMgr:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/lzx/iteam/util/SendCardShakeListener;->mSensorMgr:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/util/SendCardShakeListener;->mSensorMgr:Landroid/hardware/SensorManager;

    .line 103
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 84
    iget-object v1, p0, Lcom/lzx/iteam/util/SendCardShakeListener;->mContext:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/lzx/iteam/util/SendCardShakeListener;->mSensorMgr:Landroid/hardware/SensorManager;

    .line 85
    iget-object v1, p0, Lcom/lzx/iteam/util/SendCardShakeListener;->mSensorMgr:Landroid/hardware/SensorManager;

    if-nez v1, :cond_0

    .line 86
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Sensors not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/util/SendCardShakeListener;->mSensorMgr:Landroid/hardware/SensorManager;

    .line 90
    iget-object v2, p0, Lcom/lzx/iteam/util/SendCardShakeListener;->mSensorMgr:Landroid/hardware/SensorManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 91
    const/4 v3, 0x2

    .line 89
    invoke-virtual {v1, p0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    .line 96
    .local v0, "supported":Z
    return-void
.end method

.method public setOnShakeListener(Lcom/lzx/iteam/util/SendCardShakeListener$OnShakeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lzx/iteam/util/SendCardShakeListener$OnShakeListener;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/lzx/iteam/util/SendCardShakeListener;->mShakeListener:Lcom/lzx/iteam/util/SendCardShakeListener$OnShakeListener;

    .line 81
    return-void
.end method
