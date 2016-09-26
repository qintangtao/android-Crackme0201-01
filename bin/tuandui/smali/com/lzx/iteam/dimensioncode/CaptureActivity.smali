.class public final Lcom/lzx/iteam/dimensioncode/CaptureActivity;
.super Landroid/app/Activity;
.source "CaptureActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static synthetic $SWITCH_TABLE$com$lzx$iteam$dimensioncode$IntentSource:[I = null

.field private static final BULK_MODE_SCAN_DELAY_MS:J = 0x3e8L

.field private static final DEFAULT_INTENT_RESULT_DURATION_MS:J = 0x5dcL

.field private static final DISPLAYABLE_METADATA_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/zxing/ResultMetadataType;",
            ">;"
        }
    .end annotation
.end field

.field public static final HISTORY_REQUEST_CODE:I = 0xbacc

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.google.zxing.client.android"

.field private static final PRODUCT_SEARCH_URL_PREFIX:Ljava/lang/String; = "http://www.google"

.field private static final PRODUCT_SEARCH_URL_SUFFIX:Ljava/lang/String; = "/m/products/scan"

.field private static final RAW_PARAM:Ljava/lang/String; = "raw"

.field private static final RETURN_CODE_PLACEHOLDER:Ljava/lang/String; = "{CODE}"

.field private static final RETURN_URL_PARAM:Ljava/lang/String; = "ret"

.field private static final TAG:Ljava/lang/String;

.field private static final ZXING_URLS:[Ljava/lang/String;


# instance fields
.field private cameraManager:Lcom/lzx/iteam/dimensioncode/camera/CameraManager;

.field private characterSet:Ljava/lang/String;

.field private copyToClipboard:Z

.field private decodeFormats:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;

.field private hasSurface:Z

.field private inactivityTimer:Lcom/lzx/iteam/dimensioncode/InactivityTimer;

.field private lastResult:Lcom/google/zxing/Result;

.field private mGroupId:Ljava/lang/String;

.field private mIsCloudMode:Z

.field private returnRaw:Z

.field private returnUrlTemplate:Ljava/lang/String;

.field private savedResultToShow:Lcom/google/zxing/Result;

.field private source:Lcom/lzx/iteam/dimensioncode/IntentSource;

.field private sourceUrl:Ljava/lang/String;

.field private statusView:Landroid/widget/TextView;

.field private viewfinderView:Lcom/lzx/iteam/dimensioncode/ViewfinderView;


# direct methods
.method static synthetic $SWITCH_TABLE$com$lzx$iteam$dimensioncode$IntentSource()[I
    .locals 3

    .prologue
    .line 62
    sget-object v0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->$SWITCH_TABLE$com$lzx$iteam$dimensioncode$IntentSource:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/lzx/iteam/dimensioncode/IntentSource;->values()[Lcom/lzx/iteam/dimensioncode/IntentSource;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/lzx/iteam/dimensioncode/IntentSource;->NATIVE_APP_INTENT:Lcom/lzx/iteam/dimensioncode/IntentSource;

    invoke-virtual {v1}, Lcom/lzx/iteam/dimensioncode/IntentSource;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/lzx/iteam/dimensioncode/IntentSource;->NONE:Lcom/lzx/iteam/dimensioncode/IntentSource;

    invoke-virtual {v1}, Lcom/lzx/iteam/dimensioncode/IntentSource;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/lzx/iteam/dimensioncode/IntentSource;->PRODUCT_SEARCH_LINK:Lcom/lzx/iteam/dimensioncode/IntentSource;

    invoke-virtual {v1}, Lcom/lzx/iteam/dimensioncode/IntentSource;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/lzx/iteam/dimensioncode/IntentSource;->ZXING_LINK:Lcom/lzx/iteam/dimensioncode/IntentSource;

    invoke-virtual {v1}, Lcom/lzx/iteam/dimensioncode/IntentSource;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->$SWITCH_TABLE$com$lzx$iteam$dimensioncode$IntentSource:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 64
    const-class v0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->TAG:Ljava/lang/String;

    .line 72
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http://zxing.appspot.com/scan"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "zxing://scan/"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->ZXING_URLS:[Ljava/lang/String;

    .line 82
    sget-object v0, Lcom/google/zxing/ResultMetadataType;->ISSUE_NUMBER:Lcom/google/zxing/ResultMetadataType;

    .line 83
    sget-object v1, Lcom/google/zxing/ResultMetadataType;->SUGGESTED_PRICE:Lcom/google/zxing/ResultMetadataType;

    .line 84
    sget-object v2, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    .line 85
    sget-object v3, Lcom/google/zxing/ResultMetadataType;->POSSIBLE_COUNTRY:Lcom/google/zxing/ResultMetadataType;

    .line 82
    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 81
    sput-object v0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->DISPLAYABLE_METADATA_TYPES:Ljava/util/Set;

    .line 85
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/dimensioncode/CaptureActivity;)Lcom/lzx/iteam/dimensioncode/camera/CameraManager;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->cameraManager:Lcom/lzx/iteam/dimensioncode/camera/CameraManager;

    return-object v0
.end method

.method private decodeOrStoreSavedBitmap(Landroid/graphics/Bitmap;Lcom/google/zxing/Result;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "result"    # Lcom/google/zxing/Result;

    .prologue
    .line 305
    iget-object v1, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->handler:Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;

    if-nez v1, :cond_0

    .line 306
    iput-object p2, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->savedResultToShow:Lcom/google/zxing/Result;

    .line 317
    :goto_0
    return-void

    .line 308
    :cond_0
    if-eqz p2, :cond_1

    .line 309
    iput-object p2, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->savedResultToShow:Lcom/google/zxing/Result;

    .line 311
    :cond_1
    iget-object v1, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->savedResultToShow:Lcom/google/zxing/Result;

    if-eqz v1, :cond_2

    .line 312
    iget-object v1, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->handler:Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;

    const v2, 0x7f0e000f

    iget-object v3, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->savedResultToShow:Lcom/google/zxing/Result;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 313
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->handler:Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;

    invoke-virtual {v1, v0}, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;->sendMessage(Landroid/os/Message;)Z

    .line 315
    .end local v0    # "message":Landroid/os/Message;
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->savedResultToShow:Lcom/google/zxing/Result;

    goto :goto_0
.end method

.method private static drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V
    .locals 6
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "a"    # Lcom/google/zxing/ResultPoint;
    .param p3, "b"    # Lcom/google/zxing/ResultPoint;

    .prologue
    .line 430
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 431
    return-void
.end method

.method private drawResultPoints(Landroid/graphics/Bitmap;Lcom/google/zxing/Result;)V
    .locals 9
    .param p1, "barcode"    # Landroid/graphics/Bitmap;
    .param p2, "rawResult"    # Lcom/google/zxing/Result;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 406
    invoke-virtual {p2}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v3

    .line 407
    .local v3, "points":[Lcom/google/zxing/ResultPoint;
    if-eqz v3, :cond_0

    array-length v5, v3

    if-lez v5, :cond_0

    .line 408
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 409
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 410
    .local v1, "paint":Landroid/graphics/Paint;
    invoke-virtual {p0}, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a001e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 411
    array-length v5, v3

    if-ne v5, v8, :cond_1

    .line 412
    const/high16 v5, 0x40800000    # 4.0f

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 413
    aget-object v4, v3, v4

    aget-object v5, v3, v7

    invoke-static {v0, v1, v4, v5}, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

    .line 427
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v1    # "paint":Landroid/graphics/Paint;
    :cond_0
    :goto_0
    return-void

    .line 414
    .restart local v0    # "canvas":Landroid/graphics/Canvas;
    .restart local v1    # "paint":Landroid/graphics/Paint;
    :cond_1
    array-length v5, v3

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    .line 415
    invoke-virtual {p2}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v5

    sget-object v6, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    if-eq v5, v6, :cond_2

    .line 416
    invoke-virtual {p2}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v5

    sget-object v6, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    if-ne v5, v6, :cond_3

    .line 418
    :cond_2
    aget-object v4, v3, v4

    aget-object v5, v3, v7

    invoke-static {v0, v1, v4, v5}, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

    .line 419
    aget-object v4, v3, v8

    const/4 v5, 0x3

    aget-object v5, v3, v5

    invoke-static {v0, v1, v4, v5}, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

    goto :goto_0

    .line 421
    :cond_3
    const/high16 v5, 0x41200000    # 10.0f

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 422
    array-length v5, v3

    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v2, v3, v4

    .line 423
    .local v2, "point":Lcom/google/zxing/ResultPoint;
    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    invoke-virtual {v0, v6, v7, v1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 422
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private handleDecodeExternally(Lcom/google/zxing/Result;Lcom/lzx/iteam/dimensioncode/result/ResultHandler;Landroid/graphics/Bitmap;)V
    .locals 24
    .param p1, "rawResult"    # Lcom/google/zxing/Result;
    .param p2, "resultHandler"    # Lcom/lzx/iteam/dimensioncode/result/ResultHandler;
    .param p3, "barcode"    # Landroid/graphics/Bitmap;

    .prologue
    .line 436
    if-eqz p3, :cond_0

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->viewfinderView:Lcom/lzx/iteam/dimensioncode/ViewfinderView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/dimensioncode/ViewfinderView;->drawResultBitmap(Landroid/graphics/Bitmap;)V

    .line 441
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v19

    if-nez v19, :cond_8

    .line 442
    const-wide/16 v16, 0x5dc

    .line 455
    .local v16, "resultDurationMS":J
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->copyToClipboard:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/lzx/iteam/dimensioncode/result/ResultHandler;->areContentsSecure()Z

    move-result v19

    if-nez v19, :cond_1

    .line 456
    const-string v19, "clipboard"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/text/ClipboardManager;

    .line 457
    .local v6, "clipboard":Landroid/text/ClipboardManager;
    invoke-virtual/range {p2 .. p2}, Lcom/lzx/iteam/dimensioncode/result/ResultHandler;->getDisplayContents()Ljava/lang/CharSequence;

    move-result-object v18

    .line 458
    .local v18, "text":Ljava/lang/CharSequence;
    if-eqz v18, :cond_1

    .line 459
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 463
    .end local v6    # "clipboard":Landroid/text/ClipboardManager;
    .end local v18    # "text":Ljava/lang/CharSequence;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->source:Lcom/lzx/iteam/dimensioncode/IntentSource;

    move-object/from16 v19, v0

    sget-object v20, Lcom/lzx/iteam/dimensioncode/IntentSource;->NATIVE_APP_INTENT:Lcom/lzx/iteam/dimensioncode/IntentSource;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 467
    new-instance v11, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 468
    .local v11, "intent":Landroid/content/Intent;
    const/high16 v19, 0x80000

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 469
    const-string v19, "SCAN_RESULT"

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/Result;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    const-string v19, "SCAN_RESULT_FORMAT"

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/Result;->getRawBytes()[B

    move-result-object v14

    .line 472
    .local v14, "rawBytes":[B
    if-eqz v14, :cond_2

    array-length v0, v14

    move/from16 v19, v0

    if-lez v19, :cond_2

    .line 473
    const-string v19, "SCAN_RESULT_BYTES"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 475
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v12

    .line 476
    .local v12, "metadata":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;*>;"
    if-eqz v12, :cond_6

    .line 477
    sget-object v19, Lcom/google/zxing/ResultMetadataType;->UPC_EAN_EXTENSION:Lcom/google/zxing/ResultMetadataType;

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 478
    const-string v19, "SCAN_RESULT_UPC_EAN_EXTENSION"

    .line 479
    sget-object v20, Lcom/google/zxing/ResultMetadataType;->UPC_EAN_EXTENSION:Lcom/google/zxing/ResultMetadataType;

    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    .line 478
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    :cond_3
    sget-object v19, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 482
    .local v13, "orientation":Ljava/lang/Integer;
    if-eqz v13, :cond_4

    .line 483
    const-string v19, "SCAN_RESULT_ORIENTATION"

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 485
    :cond_4
    sget-object v19, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 486
    .local v8, "ecLevel":Ljava/lang/String;
    if-eqz v8, :cond_5

    .line 487
    const-string v19, "SCAN_RESULT_ERROR_CORRECTION_LEVEL"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 489
    :cond_5
    sget-object v19, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    .line 490
    .local v5, "byteSegments":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[B>;"
    if-eqz v5, :cond_6

    .line 491
    const/4 v10, 0x0

    .line 492
    .local v10, "i":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_9

    .line 498
    .end local v5    # "byteSegments":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[B>;"
    .end local v8    # "ecLevel":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v13    # "orientation":Ljava/lang/Integer;
    :cond_6
    const v19, 0x7f0e0013

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-wide/from16 v2, v16

    invoke-direct {v0, v1, v11, v2, v3}, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->sendReplyMessage(ILjava/lang/Object;J)V

    .line 524
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v12    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;*>;"
    .end local v14    # "rawBytes":[B
    :cond_7
    :goto_2
    return-void

    .line 444
    .end local v16    # "resultDurationMS":J
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v19

    const-string v20, "RESULT_DISPLAY_DURATION_MS"

    .line 445
    const-wide/16 v22, 0x5dc

    .line 444
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    .restart local v16    # "resultDurationMS":J
    goto/16 :goto_0

    .line 492
    .restart local v5    # "byteSegments":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[B>;"
    .restart local v8    # "ecLevel":Ljava/lang/String;
    .restart local v10    # "i":I
    .restart local v11    # "intent":Landroid/content/Intent;
    .restart local v12    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;*>;"
    .restart local v13    # "orientation":Ljava/lang/Integer;
    .restart local v14    # "rawBytes":[B
    :cond_9
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 493
    .local v4, "byteSegment":[B
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "SCAN_RESULT_BYTE_SEGMENTS_"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 494
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 500
    .end local v4    # "byteSegment":[B
    .end local v5    # "byteSegments":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[B>;"
    .end local v8    # "ecLevel":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v12    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;*>;"
    .end local v13    # "orientation":Ljava/lang/Integer;
    .end local v14    # "rawBytes":[B
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->source:Lcom/lzx/iteam/dimensioncode/IntentSource;

    move-object/from16 v19, v0

    sget-object v20, Lcom/lzx/iteam/dimensioncode/IntentSource;->PRODUCT_SEARCH_LINK:Lcom/lzx/iteam/dimensioncode/IntentSource;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->sourceUrl:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "/scan"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 505
    .local v9, "end":I
    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->sourceUrl:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "?q="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Lcom/lzx/iteam/dimensioncode/result/ResultHandler;->getDisplayContents()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "&source=zxing"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 506
    .local v15, "replyURL":Ljava/lang/String;
    const v19, 0x7f0e0010

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-wide/from16 v2, v16

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->sendReplyMessage(ILjava/lang/Object;J)V

    goto/16 :goto_2

    .line 508
    .end local v9    # "end":I
    .end local v15    # "replyURL":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->source:Lcom/lzx/iteam/dimensioncode/IntentSource;

    move-object/from16 v19, v0

    sget-object v20, Lcom/lzx/iteam/dimensioncode/IntentSource;->ZXING_LINK:Lcom/lzx/iteam/dimensioncode/IntentSource;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->returnUrlTemplate:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    .line 513
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->returnRaw:Z

    move/from16 v19, v0

    if-eqz v19, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v7

    .line 515
    .local v7, "codeReplacement":Ljava/lang/CharSequence;
    :goto_3
    :try_start_0
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "UTF-8"

    invoke-static/range {v19 .. v20}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 519
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->returnUrlTemplate:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "{CODE}"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 520
    .restart local v15    # "replyURL":Ljava/lang/String;
    const v19, 0x7f0e0010

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-wide/from16 v2, v16

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->sendReplyMessage(ILjava/lang/Object;J)V

    goto/16 :goto_2

    .line 513
    .end local v7    # "codeReplacement":Ljava/lang/CharSequence;
    .end local v15    # "replyURL":Ljava/lang/String;
    :cond_c
    invoke-virtual/range {p2 .. p2}, Lcom/lzx/iteam/dimensioncode/result/ResultHandler;->getDisplayContents()Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_3

    .restart local v7    # "codeReplacement":Ljava/lang/CharSequence;
    :catch_0
    move-exception v19

    goto :goto_4
.end method

.method private initCamera(Landroid/view/SurfaceHolder;)V
    .locals 6
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 542
    if-nez p1, :cond_0

    .line 543
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No SurfaceHolder provided"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 545
    :cond_0
    iget-object v2, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->cameraManager:Lcom/lzx/iteam/dimensioncode/camera/CameraManager;

    invoke-virtual {v2}, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 546
    sget-object v2, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->TAG:Ljava/lang/String;

    const-string v3, "initCamera() while already open -- late SurfaceView callback?"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :goto_0
    return-void

    .line 550
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->cameraManager:Lcom/lzx/iteam/dimensioncode/camera/CameraManager;

    invoke-virtual {v2, p1}, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->openDriver(Landroid/view/SurfaceHolder;)V

    .line 552
    iget-object v2, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->handler:Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;

    if-nez v2, :cond_2

    .line 553
    new-instance v2, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;

    iget-object v3, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->decodeFormats:Ljava/util/Collection;

    iget-object v4, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->characterSet:Ljava/lang/String;

    iget-object v5, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->cameraManager:Lcom/lzx/iteam/dimensioncode/camera/CameraManager;

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;-><init>(Lcom/lzx/iteam/dimensioncode/CaptureActivity;Ljava/util/Collection;Ljava/lang/String;Lcom/lzx/iteam/dimensioncode/camera/CameraManager;)V

    iput-object v2, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->handler:Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;

    .line 555
    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->decodeOrStoreSavedBitmap(Landroid/graphics/Bitmap;Lcom/google/zxing/Result;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 556
    :catch_0
    move-exception v1

    .line 557
    .local v1, "ioe":Ljava/io/IOException;
    sget-object v2, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 558
    .end local v1    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 561
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v2, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->TAG:Ljava/lang/String;

    const-string v3, "Unexpected error initializing camera"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static isZXingURL(Ljava/lang/String;)Z
    .locals 6
    .param p0, "dataString"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 233
    if-nez p0, :cond_1

    .line 241
    :cond_0
    :goto_0
    return v1

    .line 236
    :cond_1
    sget-object v3, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->ZXING_URLS:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 237
    .local v0, "url":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 238
    const/4 v1, 0x1

    goto :goto_0

    .line 236
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private resetStatusView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 574
    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->statusView:Landroid/widget/TextView;

    const v1, 0x7f080163

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 575
    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->statusView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 576
    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->viewfinderView:Lcom/lzx/iteam/dimensioncode/ViewfinderView;

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/dimensioncode/ViewfinderView;->setVisibility(I)V

    .line 577
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->lastResult:Lcom/google/zxing/Result;

    .line 578
    return-void
.end method

.method private sendReplyMessage(ILjava/lang/Object;J)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "arg"    # Ljava/lang/Object;
    .param p3, "delayMS"    # J

    .prologue
    .line 527
    iget-object v1, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->handler:Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;

    invoke-static {v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 528
    .local v0, "message":Landroid/os/Message;
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-lez v1, :cond_0

    .line 529
    iget-object v1, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->handler:Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;

    invoke-virtual {v1, v0, p3, p4}, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 533
    :goto_0
    return-void

    .line 531
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->handler:Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;

    invoke-virtual {v1, v0}, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method public drawViewfinder()V
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->viewfinderView:Lcom/lzx/iteam/dimensioncode/ViewfinderView;

    invoke-virtual {v0}, Lcom/lzx/iteam/dimensioncode/ViewfinderView;->drawViewfinder()V

    .line 582
    return-void
.end method

.method getCameraManager()Lcom/lzx/iteam/dimensioncode/camera/CameraManager;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->cameraManager:Lcom/lzx/iteam/dimensioncode/camera/CameraManager;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->handler:Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;

    return-object v0
.end method

.method getViewfinderView()Lcom/lzx/iteam/dimensioncode/ViewfinderView;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->viewfinderView:Lcom/lzx/iteam/dimensioncode/ViewfinderView;

    return-object v0
.end method

.method public handleDecode(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "rawResult"    # Lcom/google/zxing/Result;
    .param p2, "barcode"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 347
    iget-object v4, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->inactivityTimer:Lcom/lzx/iteam/dimensioncode/InactivityTimer;

    invoke-virtual {v4}, Lcom/lzx/iteam/dimensioncode/InactivityTimer;->onActivity()V

    .line 348
    iput-object p1, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->lastResult:Lcom/google/zxing/Result;

    .line 349
    const-string v4, "lastResult"

    iget-object v5, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->lastResult:Lcom/google/zxing/Result;

    invoke-virtual {v5}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v4, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->lastResult:Lcom/google/zxing/Result;

    invoke-virtual {v4}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v4

    const-string v5, "http"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 353
    iget-object v4, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->lastResult:Lcom/google/zxing/Result;

    invoke-virtual {v4}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ituandui.cn:7000"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->lastResult:Lcom/google/zxing/Result;

    invoke-virtual {v4}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v4

    const-string v5, "qrcode?event_id="

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 354
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/lzx/iteam/CodeResultActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 355
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "reg_url"

    iget-object v5, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->lastResult:Lcom/google/zxing/Result;

    invoke-virtual {v5}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    invoke-virtual {p0, v2}, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->startActivity(Landroid/content/Intent;)V

    .line 365
    :goto_0
    invoke-virtual {p0}, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->finish()V

    .line 397
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_1
    :pswitch_0
    return-void

    .line 359
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 360
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    iget-object v4, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->lastResult:Lcom/google/zxing/Result;

    invoke-virtual {v4}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 362
    .local v0, "content_Uri":Landroid/net/Uri;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 363
    invoke-virtual {p0, v2}, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 367
    .end local v0    # "content_Uri":Landroid/net/Uri;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v4, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->lastResult:Lcom/google/zxing/Result;

    invoke-virtual {v4}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v4

    const-string v5, "END:VCARD"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 368
    invoke-static {p0, p1}, Lcom/lzx/iteam/dimensioncode/result/ResultHandlerFactory;->makeResultHandler(Lcom/lzx/iteam/dimensioncode/CaptureActivity;Lcom/google/zxing/Result;)Lcom/lzx/iteam/dimensioncode/result/ResultHandler;

    move-result-object v3

    .line 370
    .local v3, "resultHandler":Lcom/lzx/iteam/dimensioncode/result/ResultHandler;
    if-eqz p2, :cond_2

    const/4 v1, 0x1

    .line 371
    .local v1, "fromLiveScan":Z
    :cond_2
    if-eqz v1, :cond_3

    .line 372
    invoke-direct {p0, p2, p1}, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->drawResultPoints(Landroid/graphics/Bitmap;Lcom/google/zxing/Result;)V

    .line 375
    :cond_3
    invoke-static {}, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->$SWITCH_TABLE$com$lzx$iteam$dimensioncode$IntentSource()[I

    move-result-object v4

    iget-object v5, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->source:Lcom/lzx/iteam/dimensioncode/IntentSource;

    invoke-virtual {v5}, Lcom/lzx/iteam/dimensioncode/IntentSource;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 378
    :pswitch_1
    invoke-direct {p0, p1, v3, p2}, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->handleDecodeExternally(Lcom/google/zxing/Result;Lcom/lzx/iteam/dimensioncode/result/ResultHandler;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 392
    .end local v1    # "fromLiveScan":Z
    .end local v3    # "resultHandler":Lcom/lzx/iteam/dimensioncode/result/ResultHandler;
    :cond_4
    iget-object v4, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->lastResult:Lcom/google/zxing/Result;

    invoke-virtual {v4}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 393
    iget-object v4, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->lastResult:Lcom/google/zxing/Result;

    invoke-virtual {v4}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 395
    :cond_5
    invoke-virtual {p0}, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->finish()V

    goto :goto_1

    .line 375
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 292
    if-ne p2, v1, :cond_0

    .line 293
    const v0, 0xbacc

    if-ne p1, v0, :cond_0

    .line 294
    const-string v0, "ITEM_NUMBER"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 298
    :cond_0
    const/16 v0, 0xc59

    if-ne p1, v0, :cond_1

    .line 299
    invoke-virtual {p0}, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->finish()V

    .line 301
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 119
    invoke-virtual {p0}, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 120
    .local v0, "window":Landroid/view/Window;
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 121
    const v1, 0x7f030034

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->setContentView(I)V

    .line 123
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->hasSurface:Z

    .line 124
    new-instance v1, Lcom/lzx/iteam/dimensioncode/InactivityTimer;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/dimensioncode/InactivityTimer;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->inactivityTimer:Lcom/lzx/iteam/dimensioncode/InactivityTimer;

    .line 127
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->inactivityTimer:Lcom/lzx/iteam/dimensioncode/InactivityTimer;

    invoke-virtual {v0}, Lcom/lzx/iteam/dimensioncode/InactivityTimer;->shutdown()V

    .line 263
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 264
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 268
    sparse-switch p1, :sswitch_data_0

    .line 286
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    :sswitch_0
    return v0

    .line 270
    :sswitch_1
    iget-object v1, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->source:Lcom/lzx/iteam/dimensioncode/IntentSource;

    sget-object v2, Lcom/lzx/iteam/dimensioncode/IntentSource;->NATIVE_APP_INTENT:Lcom/lzx/iteam/dimensioncode/IntentSource;

    if-ne v1, v2, :cond_1

    .line 271
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->setResult(I)V

    .line 272
    invoke-virtual {p0}, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->finish()V

    goto :goto_0

    .line 275
    :cond_1
    iget-object v1, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->source:Lcom/lzx/iteam/dimensioncode/IntentSource;

    sget-object v2, Lcom/lzx/iteam/dimensioncode/IntentSource;->NONE:Lcom/lzx/iteam/dimensioncode/IntentSource;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->source:Lcom/lzx/iteam/dimensioncode/IntentSource;

    sget-object v2, Lcom/lzx/iteam/dimensioncode/IntentSource;->ZXING_LINK:Lcom/lzx/iteam/dimensioncode/IntentSource;

    if-ne v1, v2, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->lastResult:Lcom/google/zxing/Result;

    if-eqz v1, :cond_0

    .line 276
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->restartPreviewAfterDelay(J)V

    goto :goto_0

    .line 268
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x1b -> :sswitch_0
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 246
    iget-object v2, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->handler:Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;

    if-eqz v2, :cond_0

    .line 247
    iget-object v2, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->handler:Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;

    invoke-virtual {v2}, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;->quitSynchronously()V

    .line 248
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->handler:Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;

    .line 250
    :cond_0
    iget-object v2, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->inactivityTimer:Lcom/lzx/iteam/dimensioncode/InactivityTimer;

    invoke-virtual {v2}, Lcom/lzx/iteam/dimensioncode/InactivityTimer;->onPause()V

    .line 251
    iget-object v2, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->cameraManager:Lcom/lzx/iteam/dimensioncode/camera/CameraManager;

    invoke-virtual {v2}, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->closeDriver()V

    .line 252
    iget-boolean v2, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->hasSurface:Z

    if-nez v2, :cond_1

    .line 253
    const v2, 0x7f0e0150

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    .line 254
    .local v1, "surfaceView":Landroid/view/SurfaceView;
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 255
    .local v0, "surfaceHolder":Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 257
    .end local v0    # "surfaceHolder":Landroid/view/SurfaceHolder;
    .end local v1    # "surfaceView":Landroid/view/SurfaceView;
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 258
    return-void
.end method

.method protected onResume()V
    .locals 14

    .prologue
    const/4 v11, 0x1

    const/4 v13, 0x0

    const/4 v10, 0x0

    .line 131
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 137
    new-instance v9, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;

    invoke-virtual {p0}, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->getApplication()Landroid/app/Application;

    move-result-object v12

    invoke-direct {v9, v12}, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->cameraManager:Lcom/lzx/iteam/dimensioncode/camera/CameraManager;

    .line 139
    const v9, 0x7f0e0151

    invoke-virtual {p0, v9}, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/lzx/iteam/dimensioncode/ViewfinderView;

    iput-object v9, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->viewfinderView:Lcom/lzx/iteam/dimensioncode/ViewfinderView;

    .line 140
    iget-object v9, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->viewfinderView:Lcom/lzx/iteam/dimensioncode/ViewfinderView;

    iget-object v12, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->cameraManager:Lcom/lzx/iteam/dimensioncode/camera/CameraManager;

    invoke-virtual {v9, v12}, Lcom/lzx/iteam/dimensioncode/ViewfinderView;->setCameraManager(Lcom/lzx/iteam/dimensioncode/camera/CameraManager;)V

    .line 142
    const v9, 0x7f0e0156

    invoke-virtual {p0, v9}, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->statusView:Landroid/widget/TextView;

    .line 144
    iput-object v13, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->handler:Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;

    .line 145
    iput-object v13, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->lastResult:Lcom/google/zxing/Result;

    .line 147
    invoke-direct {p0}, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->resetStatusView()V

    .line 149
    const v9, 0x7f0e0150

    invoke-virtual {p0, v9}, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/SurfaceView;

    .line 150
    .local v7, "surfaceView":Landroid/view/SurfaceView;
    new-instance v9, Lcom/lzx/iteam/dimensioncode/CaptureActivity$1;

    invoke-direct {v9, p0}, Lcom/lzx/iteam/dimensioncode/CaptureActivity$1;-><init>(Lcom/lzx/iteam/dimensioncode/CaptureActivity;)V

    invoke-virtual {v7, v9}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 157
    invoke-virtual {v7}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v6

    .line 158
    .local v6, "surfaceHolder":Landroid/view/SurfaceHolder;
    iget-boolean v9, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->hasSurface:Z

    if-eqz v9, :cond_3

    .line 161
    invoke-direct {p0, v6}, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    .line 169
    :goto_0
    iget-object v9, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->inactivityTimer:Lcom/lzx/iteam/dimensioncode/InactivityTimer;

    invoke-virtual {v9}, Lcom/lzx/iteam/dimensioncode/InactivityTimer;->onResume()V

    .line 171
    invoke-virtual {p0}, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 172
    .local v5, "intent":Landroid/content/Intent;
    const-string v9, "group_id"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->mGroupId:Ljava/lang/String;

    .line 173
    const-string v9, "cloud_mode"

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->mIsCloudMode:Z

    .line 174
    iget-object v9, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->mGroupId:Ljava/lang/String;

    iget-boolean v12, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->mIsCloudMode:Z

    invoke-static {v9, v12}, Lcom/lzx/iteam/dimensioncode/result/ResultHandlerFactory;->setCloudMode(Ljava/lang/String;Z)V

    .line 175
    if-eqz v5, :cond_4

    const-string v9, "SAVE_HISTORY"

    invoke-virtual {v5, v9, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_4

    move v9, v10

    :goto_1
    iput-boolean v9, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->copyToClipboard:Z

    .line 177
    sget-object v9, Lcom/lzx/iteam/dimensioncode/IntentSource;->NONE:Lcom/lzx/iteam/dimensioncode/IntentSource;

    iput-object v9, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->source:Lcom/lzx/iteam/dimensioncode/IntentSource;

    .line 178
    iput-object v13, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->decodeFormats:Ljava/util/Collection;

    .line 179
    iput-object v13, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->characterSet:Ljava/lang/String;

    .line 181
    if-eqz v5, :cond_2

    .line 183
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, "dataString":Ljava/lang/String;
    const-string v9, "com.google.zxing.client.android.SCAN"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 189
    sget-object v9, Lcom/lzx/iteam/dimensioncode/IntentSource;->NATIVE_APP_INTENT:Lcom/lzx/iteam/dimensioncode/IntentSource;

    iput-object v9, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->source:Lcom/lzx/iteam/dimensioncode/IntentSource;

    .line 190
    invoke-static {v5}, Lcom/lzx/iteam/dimensioncode/DecodeFormatManager;->parseDecodeFormats(Landroid/content/Intent;)Ljava/util/Collection;

    move-result-object v9

    iput-object v9, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->decodeFormats:Ljava/util/Collection;

    .line 192
    const-string v9, "SCAN_WIDTH"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "SCAN_HEIGHT"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 193
    const-string v9, "SCAN_WIDTH"

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 194
    .local v8, "width":I
    const-string v9, "SCAN_HEIGHT"

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 195
    .local v3, "height":I
    if-lez v8, :cond_0

    if-lez v3, :cond_0

    .line 196
    iget-object v9, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->cameraManager:Lcom/lzx/iteam/dimensioncode/camera/CameraManager;

    invoke-virtual {v9, v8, v3}, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->setManualFramingRect(II)V

    .line 200
    .end local v3    # "height":I
    .end local v8    # "width":I
    :cond_0
    const-string v9, "PROMPT_MESSAGE"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "customPromptMessage":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 202
    iget-object v9, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->statusView:Landroid/widget/TextView;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    .end local v1    # "customPromptMessage":Ljava/lang/String;
    :cond_1
    :goto_2
    const-string v9, "CHARACTER_SET"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->characterSet:Ljava/lang/String;

    .line 230
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "dataString":Ljava/lang/String;
    :cond_2
    return-void

    .line 164
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-interface {v6, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 165
    const/4 v9, 0x3

    invoke-interface {v6, v9}, Landroid/view/SurfaceHolder;->setType(I)V

    goto/16 :goto_0

    .restart local v5    # "intent":Landroid/content/Intent;
    :cond_4
    move v9, v11

    .line 175
    goto :goto_1

    .line 205
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v2    # "dataString":Ljava/lang/String;
    :cond_5
    if-eqz v2, :cond_6

    .line 206
    const-string v9, "http://www.google"

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 207
    const-string v9, "/m/products/scan"

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 210
    sget-object v9, Lcom/lzx/iteam/dimensioncode/IntentSource;->PRODUCT_SEARCH_LINK:Lcom/lzx/iteam/dimensioncode/IntentSource;

    iput-object v9, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->source:Lcom/lzx/iteam/dimensioncode/IntentSource;

    .line 211
    iput-object v2, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->sourceUrl:Ljava/lang/String;

    .line 212
    sget-object v9, Lcom/lzx/iteam/dimensioncode/DecodeFormatManager;->PRODUCT_FORMATS:Ljava/util/Collection;

    iput-object v9, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->decodeFormats:Ljava/util/Collection;

    goto :goto_2

    .line 214
    :cond_6
    invoke-static {v2}, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->isZXingURL(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 218
    sget-object v9, Lcom/lzx/iteam/dimensioncode/IntentSource;->ZXING_LINK:Lcom/lzx/iteam/dimensioncode/IntentSource;

    iput-object v9, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->source:Lcom/lzx/iteam/dimensioncode/IntentSource;

    .line 219
    iput-object v2, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->sourceUrl:Ljava/lang/String;

    .line 220
    iget-object v9, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->sourceUrl:Ljava/lang/String;

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 221
    .local v4, "inputUri":Landroid/net/Uri;
    const-string v9, "ret"

    invoke-virtual {v4, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->returnUrlTemplate:Ljava/lang/String;

    .line 222
    const-string v9, "raw"

    invoke-virtual {v4, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    :goto_3
    iput-boolean v11, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->returnRaw:Z

    .line 223
    invoke-static {v4}, Lcom/lzx/iteam/dimensioncode/DecodeFormatManager;->parseDecodeFormats(Landroid/net/Uri;)Ljava/util/Collection;

    move-result-object v9

    iput-object v9, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->decodeFormats:Ljava/util/Collection;

    goto :goto_2

    :cond_7
    move v11, v10

    .line 222
    goto :goto_3
.end method

.method public restartPreviewAfterDelay(J)V
    .locals 3
    .param p1, "delayMS"    # J

    .prologue
    .line 567
    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->handler:Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->handler:Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;

    const v1, 0x7f0e0012

    invoke-virtual {v0, v1, p1, p2}, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 570
    :cond_0
    invoke-direct {p0}, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->resetStatusView()V

    .line 571
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 338
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 321
    if-nez p1, :cond_0

    .line 322
    sget-object v0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->TAG:Ljava/lang/String;

    const-string v1, "*** WARNING *** surfaceCreated() gave us a null surface!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_0
    iget-boolean v0, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->hasSurface:Z

    if-nez v0, :cond_1

    .line 325
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->hasSurface:Z

    .line 326
    invoke-direct {p0, p1}, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    .line 328
    :cond_1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 332
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->hasSurface:Z

    .line 333
    return-void
.end method
