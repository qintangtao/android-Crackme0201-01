.class final Lcom/lzx/iteam/dimensioncode/camera/CameraConfigurationManager;
.super Ljava/lang/Object;
.source "CameraConfigurationManager.java"


# static fields
.field private static final MAX_PREVIEW_PIXELS:I = 0xe1000

.field private static final MIN_PREVIEW_PIXELS:I = 0x24b80

.field private static final TAG:Ljava/lang/String; = "CameraConfiguration"


# instance fields
.field private cameraResolution:Landroid/graphics/Point;

.field private final context:Landroid/content/Context;

.field private screenResolution:Landroid/graphics/Point;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraConfigurationManager;->context:Landroid/content/Context;

    .line 48
    return-void
.end method

.method private findBestPreviewSizeValue(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 22
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p2, "screenResolution"    # Landroid/graphics/Point;

    .prologue
    .line 113
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v13

    .line 114
    .local v13, "rawSupportedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez v13, :cond_0

    .line 115
    const-string v19, "CameraConfiguration"

    const-string v20, "Device returned no supported preview sizes; using default"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v4

    .line 117
    .local v4, "defaultSize":Landroid/hardware/Camera$Size;
    new-instance v6, Landroid/graphics/Point;

    iget v0, v4, Landroid/hardware/Camera$Size;->width:I

    move/from16 v19, v0

    iget v0, v4, Landroid/hardware/Camera$Size;->height:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v6, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 180
    .end local v4    # "defaultSize":Landroid/hardware/Camera$Size;
    :goto_0
    return-object v6

    .line 121
    :cond_0
    new-instance v18, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-direct {v0, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 122
    .local v18, "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v19, Lcom/lzx/iteam/dimensioncode/camera/CameraConfigurationManager$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lzx/iteam/dimensioncode/camera/CameraConfigurationManager$1;-><init>(Lcom/lzx/iteam/dimensioncode/camera/CameraConfigurationManager;)V

    invoke-static/range {v18 .. v19}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 137
    const-string v19, "CameraConfiguration"

    const/16 v20, 0x4

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 138
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .local v12, "previewSizesString":Ljava/lang/StringBuilder;
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_4

    .line 143
    const-string v19, "CameraConfiguration"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Supported preview sizes: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .end local v12    # "previewSizesString":Ljava/lang/StringBuilder;
    :cond_1
    const/4 v3, 0x0

    .line 147
    .local v3, "bestSize":Landroid/graphics/Point;
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v16, v19, v20

    .line 149
    .local v16, "screenAspectRatio":F
    const/high16 v5, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 150
    .local v5, "diff":F
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_2
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_5

    .line 173
    if-nez v3, :cond_3

    .line 174
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v4

    .line 175
    .restart local v4    # "defaultSize":Landroid/hardware/Camera$Size;
    new-instance v3, Landroid/graphics/Point;

    .end local v3    # "bestSize":Landroid/graphics/Point;
    iget v0, v4, Landroid/hardware/Camera$Size;->width:I

    move/from16 v19, v0

    iget v0, v4, Landroid/hardware/Camera$Size;->height:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v3, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 176
    .restart local v3    # "bestSize":Landroid/graphics/Point;
    const-string v19, "CameraConfiguration"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "No suitable preview sizes, using default: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .end local v4    # "defaultSize":Landroid/hardware/Camera$Size;
    :cond_3
    const-string v19, "CameraConfiguration"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Found best approximate preview size: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v3

    .line 180
    goto/16 :goto_0

    .line 139
    .end local v3    # "bestSize":Landroid/graphics/Point;
    .end local v5    # "diff":F
    .end local v16    # "screenAspectRatio":F
    .restart local v12    # "previewSizesString":Ljava/lang/StringBuilder;
    :cond_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/hardware/Camera$Size;

    .line 140
    .local v17, "supportedPreviewSize":Landroid/hardware/Camera$Size;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x78

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 141
    move-object/from16 v0, v17

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x20

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 150
    .end local v12    # "previewSizesString":Ljava/lang/StringBuilder;
    .end local v17    # "supportedPreviewSize":Landroid/hardware/Camera$Size;
    .restart local v3    # "bestSize":Landroid/graphics/Point;
    .restart local v5    # "diff":F
    .restart local v16    # "screenAspectRatio":F
    :cond_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/hardware/Camera$Size;

    .line 151
    .restart local v17    # "supportedPreviewSize":Landroid/hardware/Camera$Size;
    move-object/from16 v0, v17

    iget v15, v0, Landroid/hardware/Camera$Size;->width:I

    .line 152
    .local v15, "realWidth":I
    move-object/from16 v0, v17

    iget v14, v0, Landroid/hardware/Camera$Size;->height:I

    .line 153
    .local v14, "realHeight":I
    mul-int v11, v15, v14

    .line 154
    .local v11, "pixels":I
    const v20, 0x24b80

    move/from16 v0, v20

    if-lt v11, v0, :cond_2

    const v20, 0xe1000

    move/from16 v0, v20

    if-gt v11, v0, :cond_2

    .line 157
    if-ge v15, v14, :cond_6

    const/4 v7, 0x1

    .line 158
    .local v7, "isCandidatePortrait":Z
    :goto_3
    if-eqz v7, :cond_7

    move v9, v14

    .line 159
    .local v9, "maybeFlippedWidth":I
    :goto_4
    if-eqz v7, :cond_8

    move v8, v15

    .line 160
    .local v8, "maybeFlippedHeight":I
    :goto_5
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ne v9, v0, :cond_9

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ne v8, v0, :cond_9

    .line 161
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v15, v14}, Landroid/graphics/Point;-><init>(II)V

    .line 162
    .local v6, "exactPoint":Landroid/graphics/Point;
    const-string v19, "CameraConfiguration"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Found preview size exactly matching screen size: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 157
    .end local v6    # "exactPoint":Landroid/graphics/Point;
    .end local v7    # "isCandidatePortrait":Z
    .end local v8    # "maybeFlippedHeight":I
    .end local v9    # "maybeFlippedWidth":I
    :cond_6
    const/4 v7, 0x0

    goto :goto_3

    .restart local v7    # "isCandidatePortrait":Z
    :cond_7
    move v9, v15

    .line 158
    goto :goto_4

    .restart local v9    # "maybeFlippedWidth":I
    :cond_8
    move v8, v14

    .line 159
    goto :goto_5

    .line 165
    .restart local v8    # "maybeFlippedHeight":I
    :cond_9
    int-to-float v0, v9

    move/from16 v20, v0

    int-to-float v0, v8

    move/from16 v21, v0

    div-float v2, v20, v21

    .line 166
    .local v2, "aspectRatio":F
    sub-float v20, v2, v16

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 167
    .local v10, "newDiff":F
    cmpg-float v20, v10, v5

    if-gez v20, :cond_2

    .line 168
    new-instance v3, Landroid/graphics/Point;

    .end local v3    # "bestSize":Landroid/graphics/Point;
    invoke-direct {v3, v15, v14}, Landroid/graphics/Point;-><init>(II)V

    .line 169
    .restart local v3    # "bestSize":Landroid/graphics/Point;
    move v5, v10

    goto/16 :goto_2
.end method

.method private static varargs findSettableValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "desiredValues"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 185
    .local p0, "supportedValues":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v2, "CameraConfiguration"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Supported values: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v1, 0x0

    .line 187
    .local v1, "result":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 188
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_1

    .line 195
    :cond_0
    :goto_1
    const-string v2, "CameraConfiguration"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Settable value: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-object v1

    .line 188
    :cond_1
    aget-object v0, p1, v2

    .line 189
    .local v0, "desiredValue":Ljava/lang/String;
    invoke-interface {p0, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 190
    move-object v1, v0

    .line 191
    goto :goto_1

    .line 188
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method getCameraResolution()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    return-object v0
.end method

.method getScreenResolution()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    return-object v0
.end method

.method initFromCameraParameters(Landroid/hardware/Camera;)V
    .locals 9
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 55
    .local v3, "parameters":Landroid/hardware/Camera$Parameters;
    iget-object v6, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraConfigurationManager;->context:Landroid/content/Context;

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 56
    .local v2, "manager":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 57
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    .line 58
    .local v5, "width":I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 61
    .local v1, "height":I
    if-ge v5, v1, :cond_0

    .line 62
    const-string v6, "CameraConfiguration"

    const-string v7, "Display reports portrait orientation; assuming this is incorrect"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    move v4, v5

    .line 64
    .local v4, "temp":I
    move v5, v1

    .line 65
    move v1, v4

    .line 67
    .end local v4    # "temp":I
    :cond_0
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v5, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v6, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    .line 68
    const-string v6, "CameraConfiguration"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Screen resolution: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v6, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    invoke-direct {p0, v3, v6}, Lcom/lzx/iteam/dimensioncode/camera/CameraConfigurationManager;->findBestPreviewSizeValue(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v6

    iput-object v6, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    .line 70
    const-string v6, "CameraConfiguration"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Camera resolution: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method

.method setDesiredCameraParameters(Landroid/hardware/Camera;)V
    .locals 7
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 74
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 76
    .local v1, "parameters":Landroid/hardware/Camera$Parameters;
    if-nez v1, :cond_0

    .line 77
    const-string v2, "CameraConfiguration"

    const-string v3, "Device error: no camera parameters are available. Proceeding without configuration."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :goto_0
    return-void

    .line 81
    :cond_0
    const-string v2, "CameraConfiguration"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Initial camera parameters: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, "focusMode":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/String;

    .line 85
    const-string v4, "auto"

    aput-object v4, v3, v5

    .line 84
    invoke-static {v2, v3}, Lcom/lzx/iteam/dimensioncode/camera/CameraConfigurationManager;->findSettableValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    if-nez v0, :cond_1

    .line 88
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    .line 89
    const-string v4, "macro"

    aput-object v4, v3, v5

    .line 90
    const-string v4, "edof"

    aput-object v4, v3, v6

    .line 88
    invoke-static {v2, v3}, Lcom/lzx/iteam/dimensioncode/camera/CameraConfigurationManager;->findSettableValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    :cond_1
    if-eqz v0, :cond_2

    .line 93
    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 96
    :cond_2
    iget-object v2, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 97
    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0
.end method
