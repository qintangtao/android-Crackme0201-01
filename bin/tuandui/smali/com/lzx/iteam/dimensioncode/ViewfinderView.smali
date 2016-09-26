.class public final Lcom/lzx/iteam/dimensioncode/ViewfinderView;
.super Landroid/view/View;
.source "ViewfinderView.java"


# static fields
.field private static final ANIMATION_DELAY:J = 0x50L

.field private static final CURRENT_POINT_OPACITY:I = 0xa0

.field private static final MAX_RESULT_POINTS:I = 0x14

.field private static final POINT_SIZE:I = 0x6

.field private static final SCANNER_ALPHA:[I


# instance fields
.field private cameraManager:Lcom/lzx/iteam/dimensioncode/camera/CameraManager;

.field private final laserColor:I

.field private lastPossibleResultPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final maskColor:I

.field private final paint:Landroid/graphics/Paint;

.field private possibleResultPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private resultBitmap:Landroid/graphics/Bitmap;

.field private final resultColor:I

.field private final resultPointColor:I

.field private scannerAlpha:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0xc0

    const/16 v4, 0x80

    const/16 v3, 0x40

    .line 42
    const/16 v0, 0x8

    new-array v0, v0, [I

    const/4 v1, 0x1

    aput v3, v0, v1

    const/4 v1, 0x2

    aput v4, v0, v1

    const/4 v1, 0x3

    aput v5, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0xff

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v5, v0, v1

    const/4 v1, 0x6

    aput v4, v0, v1

    const/4 v1, 0x7

    aput v3, v0, v1

    sput-object v0, Lcom/lzx/iteam/dimensioncode/ViewfinderView;->SCANNER_ALPHA:[I

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/lzx/iteam/dimensioncode/ViewfinderView;->paint:Landroid/graphics/Paint;

    .line 65
    invoke-virtual {p0}, Lcom/lzx/iteam/dimensioncode/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 66
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0a0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/dimensioncode/ViewfinderView;->maskColor:I

    .line 67
    const v1, 0x7f0a0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/dimensioncode/ViewfinderView;->resultColor:I

    .line 68
    const v1, 0x7f0a0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/dimensioncode/ViewfinderView;->laserColor:I

    .line 69
    const v1, 0x7f0a001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/dimensioncode/ViewfinderView;->resultPointColor:I

    .line 70
    const/4 v1, 0x0

    iput v1, p0, Lcom/lzx/iteam/dimensioncode/ViewfinderView;->scannerAlpha:I

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/lzx/iteam/dimensioncode/ViewfinderView;->possibleResultPoints:Ljava/util/List;

    .line 72
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lzx/iteam/dimensioncode/ViewfinderView;->lastPossibleResultPoints:Ljava/util/List;

    .line 73
    return-void
.end method


# virtual methods
.method public addPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .locals 4
    .param p1, "point"    # Lcom/google/zxing/ResultPoint;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/ViewfinderView;->possibleResultPoints:Ljava/util/List;

    .line 178
    .local v0, "points":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/ResultPoint;>;"
    monitor-enter v0

    .line 179
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 181
    .local v1, "size":I
    const/16 v2, 0x14

    if-le v1, v2, :cond_0

    .line 183
    const/4 v2, 0x0

    add-int/lit8 v3, v1, -0xa

    invoke-interface {v0, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 178
    :cond_0
    monitor-exit v0

    .line 186
    return-void

    .line 178
    .end local v1    # "size":I
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public drawResultBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "barcode"    # Landroid/graphics/Bitmap;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/lzx/iteam/dimensioncode/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    .line 173
    invoke-virtual {p0}, Lcom/lzx/iteam/dimensioncode/ViewfinderView;->invalidate()V

    .line 174
    return-void
.end method

.method public drawViewfinder()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    .line 159
    .local v0, "resultBitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lzx/iteam/dimensioncode/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    .line 160
    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/lzx/iteam/dimensioncode/ViewfinderView;->invalidate()V

    .line 164
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 81
    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/ViewfinderView;->cameraManager:Lcom/lzx/iteam/dimensioncode/camera/CameraManager;

    if-nez v0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/ViewfinderView;->cameraManager:Lcom/lzx/iteam/dimensioncode/camera/CameraManager;

    invoke-virtual {v0}, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v6

    .line 85
    .local v6, "frame":Landroid/graphics/Rect;
    if-eqz v6, :cond_0

    .line 88
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    .line 89
    .local v7, "width":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    .line 92
    iget-object v2, p0, Lcom/lzx/iteam/dimensioncode/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/lzx/iteam/dimensioncode/ViewfinderView;->resultColor:I

    :goto_1
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    int-to-float v3, v7

    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lzx/iteam/dimensioncode/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 98
    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 101
    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lzx/iteam/dimensioncode/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 92
    :cond_2
    iget v0, p0, Lcom/lzx/iteam/dimensioncode/ViewfinderView;->maskColor:I

    goto :goto_1
.end method

.method public setCameraManager(Lcom/lzx/iteam/dimensioncode/camera/CameraManager;)V
    .locals 0
    .param p1, "cameraManager"    # Lcom/lzx/iteam/dimensioncode/camera/CameraManager;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/lzx/iteam/dimensioncode/ViewfinderView;->cameraManager:Lcom/lzx/iteam/dimensioncode/camera/CameraManager;

    .line 77
    return-void
.end method
