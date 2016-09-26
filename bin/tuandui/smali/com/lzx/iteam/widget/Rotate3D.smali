.class public Lcom/lzx/iteam/widget/Rotate3D;
.super Landroid/view/animation/Animation;
.source "Rotate3D.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Rotate3d"


# instance fields
.field private mCamera:Landroid/graphics/Camera;

.field private mCenterX:F

.field private mCenterY:F

.field private mFromDegree:F

.field private mLeft:F

.field private mToDegree:F

.field private mTop:F


# direct methods
.method public constructor <init>(FFFFFF)V
    .locals 0
    .param p1, "fromDegree"    # F
    .param p2, "toDegree"    # F
    .param p3, "left"    # F
    .param p4, "top"    # F
    .param p5, "centerX"    # F
    .param p6, "centerY"    # F

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 44
    iput p1, p0, Lcom/lzx/iteam/widget/Rotate3D;->mFromDegree:F

    .line 45
    iput p2, p0, Lcom/lzx/iteam/widget/Rotate3D;->mToDegree:F

    .line 46
    iput p3, p0, Lcom/lzx/iteam/widget/Rotate3D;->mLeft:F

    .line 47
    iput p4, p0, Lcom/lzx/iteam/widget/Rotate3D;->mTop:F

    .line 48
    iput p5, p0, Lcom/lzx/iteam/widget/Rotate3D;->mCenterX:F

    .line 49
    iput p6, p0, Lcom/lzx/iteam/widget/Rotate3D;->mCenterY:F

    .line 50
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 8
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    const/4 v7, 0x0

    .line 60
    iget v0, p0, Lcom/lzx/iteam/widget/Rotate3D;->mFromDegree:F

    .line 61
    .local v0, "FromDegree":F
    iget v5, p0, Lcom/lzx/iteam/widget/Rotate3D;->mToDegree:F

    iget v6, p0, Lcom/lzx/iteam/widget/Rotate3D;->mFromDegree:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, p1

    add-float v3, v0, v5

    .line 62
    .local v3, "degrees":F
    iget v1, p0, Lcom/lzx/iteam/widget/Rotate3D;->mCenterX:F

    .line 63
    .local v1, "centerX":F
    iget v2, p0, Lcom/lzx/iteam/widget/Rotate3D;->mCenterY:F

    .line 64
    .local v2, "centerY":F
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    .line 66
    .local v4, "matrix":Landroid/graphics/Matrix;
    iget-object v5, p0, Lcom/lzx/iteam/widget/Rotate3D;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->save()V

    .line 67
    iget-object v5, p0, Lcom/lzx/iteam/widget/Rotate3D;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5, v7, v7, v7}, Landroid/graphics/Camera;->translate(FFF)V

    .line 68
    iget-object v5, p0, Lcom/lzx/iteam/widget/Rotate3D;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5, v3}, Landroid/graphics/Camera;->rotateY(F)V

    .line 69
    iget-object v5, p0, Lcom/lzx/iteam/widget/Rotate3D;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5, v4}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 70
    iget-object v5, p0, Lcom/lzx/iteam/widget/Rotate3D;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->restore()V

    .line 72
    neg-float v5, v1

    neg-float v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 73
    invoke-virtual {v4, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 74
    return-void
.end method

.method public initialize(IIII)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    .line 54
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 55
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/widget/Rotate3D;->mCamera:Landroid/graphics/Camera;

    .line 56
    return-void
.end method
