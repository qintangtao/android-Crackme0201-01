.class Lcom/lzx/iteam/dimensioncode/camera/CameraConfigurationManager$1;
.super Ljava/lang/Object;
.source "CameraConfigurationManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/dimensioncode/camera/CameraConfigurationManager;->findBestPreviewSizeValue(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/hardware/Camera$Size;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/dimensioncode/camera/CameraConfigurationManager;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/dimensioncode/camera/CameraConfigurationManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/dimensioncode/camera/CameraConfigurationManager$1;->this$0:Lcom/lzx/iteam/dimensioncode/camera/CameraConfigurationManager;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I
    .locals 4
    .param p1, "a"    # Landroid/hardware/Camera$Size;
    .param p2, "b"    # Landroid/hardware/Camera$Size;

    .prologue
    .line 125
    iget v2, p1, Landroid/hardware/Camera$Size;->height:I

    iget v3, p1, Landroid/hardware/Camera$Size;->width:I

    mul-int v0, v2, v3

    .line 126
    .local v0, "aPixels":I
    iget v2, p2, Landroid/hardware/Camera$Size;->height:I

    iget v3, p2, Landroid/hardware/Camera$Size;->width:I

    mul-int v1, v2, v3

    .line 127
    .local v1, "bPixels":I
    if-ge v1, v0, :cond_0

    .line 128
    const/4 v2, -0x1

    .line 133
    :goto_0
    return v2

    .line 130
    :cond_0
    if-le v1, v0, :cond_1

    .line 131
    const/4 v2, 0x1

    goto :goto_0

    .line 133
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Landroid/hardware/Camera$Size;

    check-cast p2, Landroid/hardware/Camera$Size;

    invoke-virtual {p0, p1, p2}, Lcom/lzx/iteam/dimensioncode/camera/CameraConfigurationManager$1;->compare(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I

    move-result v0

    return v0
.end method
