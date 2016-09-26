.class public final Lcom/lzx/iteam/dimensioncode/camera/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# static fields
.field private static final MAX_FRAME_HEIGHT:I = 0x190

.field private static final MAX_FRAME_WIDTH:I = 0x258

.field private static final MIN_FRAME_HEIGHT:I = 0xf0

.field private static final MIN_FRAME_WIDTH:I = 0xf0

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private autoFocusManager:Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;

.field private camera:Landroid/hardware/Camera;

.field private final configManager:Lcom/lzx/iteam/dimensioncode/camera/CameraConfigurationManager;

.field private final context:Landroid/content/Context;

.field private framingRect:Landroid/graphics/Rect;

.field private framingRectInPreview:Landroid/graphics/Rect;

.field private initialized:Z

.field private final previewCallback:Lcom/lzx/iteam/dimensioncode/camera/PreviewCallback;

.field private previewing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->TAG:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->context:Landroid/content/Context;

    .line 62
    new-instance v0, Lcom/lzx/iteam/dimensioncode/camera/CameraConfigurationManager;

    invoke-direct {v0, p1}, Lcom/lzx/iteam/dimensioncode/camera/CameraConfigurationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->configManager:Lcom/lzx/iteam/dimensioncode/camera/CameraConfigurationManager;

    .line 63
    new-instance v0, Lcom/lzx/iteam/dimensioncode/camera/PreviewCallback;

    iget-object v1, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->configManager:Lcom/lzx/iteam/dimensioncode/camera/CameraConfigurationManager;

    invoke-direct {v0, v1}, Lcom/lzx/iteam/dimensioncode/camera/PreviewCallback;-><init>(Lcom/lzx/iteam/dimensioncode/camera/CameraConfigurationManager;)V

    iput-object v0, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->previewCallback:Lcom/lzx/iteam/dimensioncode/camera/PreviewCallback;

    .line 64
    return-void
.end method


# virtual methods
.method public buildLuminanceSource([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;
    .locals 10
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->getFramingRectInPreview()Landroid/graphics/Rect;

    move-result-object v9

    .line 275
    .local v9, "rect":Landroid/graphics/Rect;
    if-nez v9, :cond_0

    .line 276
    const/4 v0, 0x0

    .line 279
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/zxing/PlanarYUVLuminanceSource;

    iget v4, v9, Landroid/graphics/Rect;->left:I

    iget v5, v9, Landroid/graphics/Rect;->top:I

    .line 280
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v7

    const/4 v8, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 279
    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    goto :goto_0
.end method

.method public declared-synchronized closeDriver()V
    .locals 1

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_0
    monitor-exit p0

    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFramingRect()Landroid/graphics/Rect;
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/16 v5, 0xf0

    .line 184
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    if-nez v4, :cond_4

    .line 185
    iget-object v4, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->camera:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    .line 211
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v3

    .line 188
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->configManager:Lcom/lzx/iteam/dimensioncode/camera/CameraConfigurationManager;

    invoke-virtual {v4}, Lcom/lzx/iteam/dimensioncode/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v1

    .line 189
    .local v1, "screenResolution":Landroid/graphics/Point;
    if-eqz v1, :cond_0

    .line 194
    iget v3, v1, Landroid/graphics/Point;->x:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v2, v3, 0x4

    .line 195
    .local v2, "width":I
    if-ge v2, v5, :cond_5

    .line 196
    const/16 v2, 0xf0

    .line 200
    :cond_2
    :goto_1
    iget v3, v1, Landroid/graphics/Point;->y:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v0, v3, 0x4

    .line 201
    .local v0, "height":I
    if-ge v0, v5, :cond_6

    .line 202
    const/16 v0, 0xf0

    .line 206
    :cond_3
    :goto_2
    iget v3, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    .line 207
    iget v3, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    .line 208
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, v1, Landroid/graphics/Point;->x:I

    iget v7, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    .line 209
    sget-object v3, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Calculated framing rect: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .end local v0    # "height":I
    .end local v1    # "screenResolution":Landroid/graphics/Point;
    .end local v2    # "width":I
    :cond_4
    iget-object v3, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->framingRect:Landroid/graphics/Rect;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 197
    .restart local v1    # "screenResolution":Landroid/graphics/Point;
    .restart local v2    # "width":I
    :cond_5
    const/16 v3, 0x258

    if-le v2, v3, :cond_2

    .line 198
    const/16 v2, 0x258

    goto :goto_1

    .line 203
    .restart local v0    # "height":I
    :cond_6
    const/16 v3, 0x190

    if-le v0, v3, :cond_3

    .line 204
    const/16 v0, 0x190

    goto :goto_2

    .line 184
    .end local v0    # "height":I
    .end local v1    # "screenResolution":Landroid/graphics/Point;
    .end local v2    # "width":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getFramingRectInPreview()Landroid/graphics/Rect;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 219
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    if-nez v5, :cond_2

    .line 220
    invoke-virtual {p0}, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->getFramingRect()Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 221
    .local v1, "framingRect":Landroid/graphics/Rect;
    if-nez v1, :cond_1

    .line 237
    .end local v1    # "framingRect":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v4

    .line 224
    .restart local v1    # "framingRect":Landroid/graphics/Rect;
    :cond_1
    :try_start_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 225
    .local v2, "rect":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->configManager:Lcom/lzx/iteam/dimensioncode/camera/CameraConfigurationManager;

    invoke-virtual {v5}, Lcom/lzx/iteam/dimensioncode/camera/CameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v0

    .line 226
    .local v0, "cameraResolution":Landroid/graphics/Point;
    iget-object v5, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->configManager:Lcom/lzx/iteam/dimensioncode/camera/CameraConfigurationManager;

    invoke-virtual {v5}, Lcom/lzx/iteam/dimensioncode/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v3

    .line 227
    .local v3, "screenResolution":Landroid/graphics/Point;
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    .line 231
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v4, v5

    iget v5, v3, Landroid/graphics/Point;->x:I

    div-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 232
    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v4, v5

    iget v5, v3, Landroid/graphics/Point;->x:I

    div-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 233
    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v4, v5

    iget v5, v3, Landroid/graphics/Point;->y:I

    div-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 234
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v4, v5

    iget v5, v3, Landroid/graphics/Point;->y:I

    div-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 235
    iput-object v2, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    .line 237
    .end local v0    # "cameraResolution":Landroid/graphics/Point;
    .end local v1    # "framingRect":Landroid/graphics/Rect;
    .end local v2    # "rect":Landroid/graphics/Rect;
    .end local v3    # "screenResolution":Landroid/graphics/Point;
    :cond_2
    iget-object v4, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 219
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized isOpen()Z
    .locals 1

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->camera:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized openDriver(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_2

    .line 73
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 74
    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 77
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 78
    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->camera:Landroid/hardware/Camera;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 80
    iget-boolean v0, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->initialized:Z

    if-nez v0, :cond_1

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->initialized:Z

    .line 82
    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->configManager:Lcom/lzx/iteam/dimensioncode/camera/CameraConfigurationManager;

    iget-object v1, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/dimensioncode/camera/CameraConfigurationManager;->initFromCameraParameters(Landroid/hardware/Camera;)V

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->configManager:Lcom/lzx/iteam/dimensioncode/camera/CameraConfigurationManager;

    iget-object v1, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/dimensioncode/camera/CameraConfigurationManager;->setDesiredCameraParameters(Landroid/hardware/Camera;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public requestAutoFocus(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "message"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->previewing:Z

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->autoFocusManager:Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;

    invoke-virtual {v0, p1, p2}, Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;->setHandler(Landroid/os/Handler;I)V

    .line 172
    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->autoFocusManager:Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 174
    :cond_0
    return-void
.end method

.method public declared-synchronized requestPreviewFrame(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "message"    # I

    .prologue
    .line 161
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 162
    .local v0, "theCamera":Landroid/hardware/Camera;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->previewing:Z

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->previewCallback:Lcom/lzx/iteam/dimensioncode/camera/PreviewCallback;

    invoke-virtual {v1, p1, p2}, Lcom/lzx/iteam/dimensioncode/camera/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 164
    iget-object v1, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->previewCallback:Lcom/lzx/iteam/dimensioncode/camera/PreviewCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :cond_0
    monitor-exit p0

    return-void

    .line 161
    .end local v0    # "theCamera":Landroid/hardware/Camera;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized resetAutoFocus()V
    .locals 2

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 126
    .local v0, "theCamera":Landroid/hardware/Camera;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->previewing:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->autoFocusManager:Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->autoFocusManager:Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;

    invoke-virtual {v1}, Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;->stop()V

    .line 129
    iget-object v1, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->autoFocusManager:Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :cond_0
    monitor-exit p0

    return-void

    .line 125
    .end local v0    # "theCamera":Landroid/hardware/Camera;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setManualFramingRect(II)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 248
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->initialized:Z

    if-eqz v3, :cond_2

    .line 249
    iget-object v3, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->configManager:Lcom/lzx/iteam/dimensioncode/camera/CameraConfigurationManager;

    invoke-virtual {v3}, Lcom/lzx/iteam/dimensioncode/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v1

    .line 250
    .local v1, "screenResolution":Landroid/graphics/Point;
    iget v3, v1, Landroid/graphics/Point;->x:I

    if-le p1, v3, :cond_0

    .line 251
    iget p1, v1, Landroid/graphics/Point;->x:I

    .line 253
    :cond_0
    iget v3, v1, Landroid/graphics/Point;->y:I

    if-le p2, v3, :cond_1

    .line 254
    iget p2, v1, Landroid/graphics/Point;->y:I

    .line 256
    :cond_1
    iget v3, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, p1

    div-int/lit8 v0, v3, 0x2

    .line 257
    .local v0, "leftOffset":I
    iget v3, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, p2

    div-int/lit8 v2, v3, 0x2

    .line 258
    .local v2, "topOffset":I
    new-instance v3, Landroid/graphics/Rect;

    add-int v4, v0, p1

    add-int v5, v2, p2

    invoke-direct {v3, v0, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    .line 259
    sget-object v3, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Calculated manual framing rect: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    .end local v0    # "leftOffset":I
    .end local v1    # "screenResolution":Landroid/graphics/Point;
    .end local v2    # "topOffset":I
    :cond_2
    monitor-exit p0

    return-void

    .line 248
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized startPreview()V
    .locals 4

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 116
    .local v0, "theCamera":Landroid/hardware/Camera;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->previewing:Z

    if-nez v1, :cond_0

    .line 117
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 118
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->previewing:Z

    .line 119
    new-instance v1, Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;

    iget-object v2, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-direct {v1, v2, v3}, Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;-><init>(Landroid/content/Context;Landroid/hardware/Camera;)V

    iput-object v1, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->autoFocusManager:Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;

    .line 120
    iget-object v1, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->autoFocusManager:Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :cond_0
    monitor-exit p0

    return-void

    .line 115
    .end local v0    # "theCamera":Landroid/hardware/Camera;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stopPreview()V
    .locals 3

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->autoFocusManager:Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->autoFocusManager:Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;

    invoke-virtual {v0}, Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;->stop()V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->autoFocusManager:Lcom/lzx/iteam/dimensioncode/camera/AutoFocusManager;

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->previewing:Z

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 143
    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->previewCallback:Lcom/lzx/iteam/dimensioncode/camera/PreviewCallback;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/dimensioncode/camera/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->previewing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :cond_1
    monitor-exit p0

    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
