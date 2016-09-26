.class final Lcom/lzx/iteam/dimensioncode/DecodeHandler;
.super Landroid/os/Handler;
.source "DecodeHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Lcom/lzx/iteam/dimensioncode/CaptureActivity;

.field private final multiFormatReader:Lcom/google/zxing/MultiFormatReader;

.field private running:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/lzx/iteam/dimensioncode/DecodeHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lzx/iteam/dimensioncode/DecodeHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/lzx/iteam/dimensioncode/CaptureActivity;Ljava/util/Map;)V
    .locals 1
    .param p1, "activity"    # Lcom/lzx/iteam/dimensioncode/CaptureActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzx/iteam/dimensioncode/CaptureActivity;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lzx/iteam/dimensioncode/DecodeHandler;->running:Z

    .line 41
    new-instance v0, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/dimensioncode/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    .line 42
    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v0, p2}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 43
    iput-object p1, p0, Lcom/lzx/iteam/dimensioncode/DecodeHandler;->activity:Lcom/lzx/iteam/dimensioncode/CaptureActivity;

    .line 44
    return-void
.end method

.method private static bundleThumbnail(Lcom/google/zxing/PlanarYUVLuminanceSource;Landroid/os/Bundle;)V
    .locals 8
    .param p0, "source"    # Lcom/google/zxing/PlanarYUVLuminanceSource;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->renderThumbnail()[I

    move-result-object v0

    .line 115
    .local v0, "pixels":[I
    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getThumbnailWidth()I

    move-result v2

    .line 116
    .local v2, "width":I
    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getThumbnailHeight()I

    move-result v4

    .line 117
    .local v4, "height":I
    const/4 v1, 0x0

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move v3, v2

    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 118
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 119
    .local v7, "out":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x32

    invoke-virtual {v6, v1, v3, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 120
    const-string v1, "barcode_bitmap"

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 121
    const-string v1, "barcode_scaled_factor"

    int-to-float v3, v2

    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 122
    return-void
.end method

.method private decode([BII)V
    .locals 18
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 72
    .local v12, "start":J
    const/4 v10, 0x0

    .line 73
    .local v10, "rawResult":Lcom/google/zxing/Result;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/dimensioncode/DecodeHandler;->activity:Lcom/lzx/iteam/dimensioncode/CaptureActivity;

    invoke-virtual {v14}, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->getCameraManager()Lcom/lzx/iteam/dimensioncode/camera/CameraManager;

    move-result-object v14

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v14, v0, v1, v2}, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->buildLuminanceSource([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;

    move-result-object v11

    .line 74
    .local v11, "source":Lcom/google/zxing/PlanarYUVLuminanceSource;
    if-eqz v11, :cond_0

    .line 75
    new-instance v4, Lcom/google/zxing/BinaryBitmap;

    new-instance v14, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v14, v11}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v4, v14}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 77
    .local v4, "bitmap":Lcom/google/zxing/BinaryBitmap;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/dimensioncode/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v14, v4}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 81
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/dimensioncode/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v14}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 85
    .end local v4    # "bitmap":Lcom/google/zxing/BinaryBitmap;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/dimensioncode/DecodeHandler;->activity:Lcom/lzx/iteam/dimensioncode/CaptureActivity;

    invoke-virtual {v14}, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->getHandler()Landroid/os/Handler;

    move-result-object v8

    .line 86
    .local v8, "handler":Landroid/os/Handler;
    if-eqz v10, :cond_2

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 89
    .local v6, "end":J
    sget-object v14, Lcom/lzx/iteam/dimensioncode/DecodeHandler;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Found barcode in "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v16, v6, v12

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ms"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    if-eqz v8, :cond_1

    .line 91
    const v14, 0x7f0e000f

    invoke-static {v8, v14, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 92
    .local v9, "message":Landroid/os/Message;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 93
    .local v5, "bundle":Landroid/os/Bundle;
    invoke-static {v11, v5}, Lcom/lzx/iteam/dimensioncode/DecodeHandler;->bundleThumbnail(Lcom/google/zxing/PlanarYUVLuminanceSource;Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {v9, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 103
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v6    # "end":J
    .end local v9    # "message":Landroid/os/Message;
    :cond_1
    :goto_1
    return-void

    .end local v8    # "handler":Landroid/os/Handler;
    .restart local v4    # "bitmap":Lcom/google/zxing/BinaryBitmap;
    :catch_0
    move-exception v14

    .line 81
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/dimensioncode/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v14}, Lcom/google/zxing/MultiFormatReader;->reset()V

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v14

    .line 81
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lzx/iteam/dimensioncode/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v15}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 82
    throw v14

    .line 98
    .end local v4    # "bitmap":Lcom/google/zxing/BinaryBitmap;
    .restart local v8    # "handler":Landroid/os/Handler;
    :cond_2
    if-eqz v8, :cond_1

    .line 99
    const v14, 0x7f0e000e

    invoke-static {v8, v14}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v9

    .line 100
    .restart local v9    # "message":Landroid/os/Message;
    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method

.method private static toBitmap(Lcom/google/zxing/LuminanceSource;[I)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "source"    # Lcom/google/zxing/LuminanceSource;
    .param p1, "pixels"    # [I

    .prologue
    const/4 v2, 0x0

    .line 106
    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v3

    .line 107
    .local v3, "width":I
    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    move-result v7

    .line 108
    .local v7, "height":I
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    move-object v1, p1

    move v4, v2

    move v5, v2

    move v6, v3

    .line 109
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 110
    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/lzx/iteam/dimensioncode/DecodeHandler;->running:Z

    if-nez v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 51
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 53
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2}, Lcom/lzx/iteam/dimensioncode/DecodeHandler;->decode([BII)V

    goto :goto_0

    .line 56
    :sswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lzx/iteam/dimensioncode/DecodeHandler;->running:Z

    .line 57
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 51
    :sswitch_data_0
    .sparse-switch
        0x7f0e000d -> :sswitch_0
        0x7f0e0011 -> :sswitch_1
    .end sparse-switch
.end method
