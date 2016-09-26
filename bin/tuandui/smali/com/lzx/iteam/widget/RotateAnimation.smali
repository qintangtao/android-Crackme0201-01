.class public Lcom/lzx/iteam/widget/RotateAnimation;
.super Landroid/view/animation/Animation;
.source "RotateAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/widget/RotateAnimation$MyCamera;
    }
.end annotation


# instance fields
.field private camera:Lcom/lzx/iteam/widget/RotateAnimation$MyCamera;

.field private centerx:I

.field private centery:I

.field private context:Landroid/content/Context;

.field private fromDegree:F

.field private isY:Z

.field private toDegree:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/lzx/iteam/widget/RotateAnimation;->context:Landroid/content/Context;

    .line 25
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 7
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    const/4 v6, 0x0

    .line 42
    iget v3, p0, Lcom/lzx/iteam/widget/RotateAnimation;->fromDegree:F

    iget v4, p0, Lcom/lzx/iteam/widget/RotateAnimation;->toDegree:F

    iget v5, p0, Lcom/lzx/iteam/widget/RotateAnimation;->fromDegree:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float v1, v3, v4

    .line 43
    .local v1, "degree":F
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 45
    .local v2, "matrix":Landroid/graphics/Matrix;
    const/high16 v3, 0x42980000    # 76.0f

    cmpl-float v3, v1, v3

    if-lez v3, :cond_1

    .line 46
    const/high16 v1, 0x42b40000    # 90.0f

    .line 47
    iget-object v3, p0, Lcom/lzx/iteam/widget/RotateAnimation;->camera:Lcom/lzx/iteam/widget/RotateAnimation$MyCamera;

    invoke-virtual {v3}, Lcom/lzx/iteam/widget/RotateAnimation$MyCamera;->save()V

    .line 48
    iget-boolean v3, p0, Lcom/lzx/iteam/widget/RotateAnimation;->isY:Z

    if-eqz v3, :cond_0

    .line 49
    iget-object v3, p0, Lcom/lzx/iteam/widget/RotateAnimation;->camera:Lcom/lzx/iteam/widget/RotateAnimation$MyCamera;

    invoke-virtual {v3, v1}, Lcom/lzx/iteam/widget/RotateAnimation$MyCamera;->rotateY(F)V

    .line 53
    :goto_0
    iget-object v3, p0, Lcom/lzx/iteam/widget/RotateAnimation;->camera:Lcom/lzx/iteam/widget/RotateAnimation$MyCamera;

    invoke-virtual {v3, v2}, Lcom/lzx/iteam/widget/RotateAnimation$MyCamera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 54
    iget-object v3, p0, Lcom/lzx/iteam/widget/RotateAnimation;->camera:Lcom/lzx/iteam/widget/RotateAnimation$MyCamera;

    invoke-virtual {v3}, Lcom/lzx/iteam/widget/RotateAnimation$MyCamera;->restore()V

    .line 83
    :goto_1
    iget v3, p0, Lcom/lzx/iteam/widget/RotateAnimation;->centerx:I

    neg-int v3, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/lzx/iteam/widget/RotateAnimation;->centery:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 84
    iget v3, p0, Lcom/lzx/iteam/widget/RotateAnimation;->centerx:I

    int-to-float v3, v3

    iget v4, p0, Lcom/lzx/iteam/widget/RotateAnimation;->centery:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 85
    return-void

    .line 51
    :cond_0
    iget-object v3, p0, Lcom/lzx/iteam/widget/RotateAnimation;->camera:Lcom/lzx/iteam/widget/RotateAnimation$MyCamera;

    invoke-virtual {v3, v1}, Lcom/lzx/iteam/widget/RotateAnimation$MyCamera;->rotateX(F)V

    goto :goto_0

    .line 55
    :cond_1
    const/high16 v3, -0x3d680000    # -76.0f

    cmpg-float v3, v1, v3

    if-gez v3, :cond_3

    .line 56
    const/high16 v1, -0x3d4c0000    # -90.0f

    .line 57
    iget-object v3, p0, Lcom/lzx/iteam/widget/RotateAnimation;->camera:Lcom/lzx/iteam/widget/RotateAnimation$MyCamera;

    invoke-virtual {v3}, Lcom/lzx/iteam/widget/RotateAnimation$MyCamera;->save()V

    .line 58
    iget-boolean v3, p0, Lcom/lzx/iteam/widget/RotateAnimation;->isY:Z

    if-eqz v3, :cond_2

    .line 59
    iget-object v3, p0, Lcom/lzx/iteam/widget/RotateAnimation;->camera:Lcom/lzx/iteam/widget/RotateAnimation$MyCamera;

    invoke-virtual {v3, v1}, Lcom/lzx/iteam/widget/RotateAnimation$MyCamera;->rotateY(F)V

    .line 63
    :goto_2
    iget-object v3, p0, Lcom/lzx/iteam/widget/RotateAnimation;->camera:Lcom/lzx/iteam/widget/RotateAnimation$MyCamera;

    invoke-virtual {v3, v2}, Lcom/lzx/iteam/widget/RotateAnimation$MyCamera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 64
    iget-object v3, p0, Lcom/lzx/iteam/widget/RotateAnimation;->camera:Lcom/lzx/iteam/widget/RotateAnimation$MyCamera;

    invoke-virtual {v3}, Lcom/lzx/iteam/widget/RotateAnimation$MyCamera;->restore()V

    goto :goto_1

    .line 61
    :cond_2
    iget-object v3, p0, Lcom/lzx/iteam/widget/RotateAnimation;->camera:Lcom/lzx/iteam/widget/RotateAnimation$MyCamera;

    invoke-virtual {v3, v1}, Lcom/lzx/iteam/widget/RotateAnimation$MyCamera;->rotateX(F)V

    goto :goto_2

    .line 66
    :cond_3
    iget-object v3, p0, Lcom/lzx/iteam/widget/RotateAnimation;->camera:Lcom/lzx/iteam/widget/RotateAnimation$MyCamera;

    invoke-virtual {v3}, Lcom/lzx/iteam/widget/RotateAnimation$MyCamera;->save()V

    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "center":F
    iget-boolean v3, p0, Lcom/lzx/iteam/widget/RotateAnimation;->isY:Z

    if-eqz v3, :cond_4

    .line 69
    iget v3, p0, Lcom/lzx/iteam/widget/RotateAnimation;->centerx:I

    int-to-float v0, v3

    .line 73
    :goto_3
    iget-object v3, p0, Lcom/lzx/iteam/widget/RotateAnimation;->camera:Lcom/lzx/iteam/widget/RotateAnimation$MyCamera;

    invoke-virtual {v3, v6, v6, v0}, Lcom/lzx/iteam/widget/RotateAnimation$MyCamera;->translate(FFF)V

    .line 74
    iget-boolean v3, p0, Lcom/lzx/iteam/widget/RotateAnimation;->isY:Z

    if-eqz v3, :cond_5

    .line 75
    iget-object v3, p0, Lcom/lzx/iteam/widget/RotateAnimation;->camera:Lcom/lzx/iteam/widget/RotateAnimation$MyCamera;

    invoke-virtual {v3, v1}, Lcom/lzx/iteam/widget/RotateAnimation$MyCamera;->rotateY(F)V

    .line 79
    :goto_4
    iget-object v3, p0, Lcom/lzx/iteam/widget/RotateAnimation;->camera:Lcom/lzx/iteam/widget/RotateAnimation$MyCamera;

    neg-float v4, v0

    invoke-virtual {v3, v6, v6, v4}, Lcom/lzx/iteam/widget/RotateAnimation$MyCamera;->translate(FFF)V

    .line 80
    iget-object v3, p0, Lcom/lzx/iteam/widget/RotateAnimation;->camera:Lcom/lzx/iteam/widget/RotateAnimation$MyCamera;

    invoke-virtual {v3, v2}, Lcom/lzx/iteam/widget/RotateAnimation$MyCamera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 81
    iget-object v3, p0, Lcom/lzx/iteam/widget/RotateAnimation;->camera:Lcom/lzx/iteam/widget/RotateAnimation$MyCamera;

    invoke-virtual {v3}, Lcom/lzx/iteam/widget/RotateAnimation$MyCamera;->restore()V

    goto :goto_1

    .line 71
    :cond_4
    iget v3, p0, Lcom/lzx/iteam/widget/RotateAnimation;->centery:I

    int-to-float v0, v3

    goto :goto_3

    .line 77
    :cond_5
    iget-object v3, p0, Lcom/lzx/iteam/widget/RotateAnimation;->camera:Lcom/lzx/iteam/widget/RotateAnimation$MyCamera;

    invoke-virtual {v3, v1}, Lcom/lzx/iteam/widget/RotateAnimation$MyCamera;->rotateX(F)V

    goto :goto_4
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/widget/RotateAnimation;->camera:Lcom/lzx/iteam/widget/RotateAnimation$MyCamera;

    .line 89
    iget-object v0, p0, Lcom/lzx/iteam/widget/RotateAnimation;->camera:Lcom/lzx/iteam/widget/RotateAnimation$MyCamera;

    invoke-virtual {v0}, Lcom/lzx/iteam/widget/RotateAnimation$MyCamera;->destroy()V

    .line 90
    return-void
.end method

.method public initialize(IIII)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    .line 36
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 37
    new-instance v0, Lcom/lzx/iteam/widget/RotateAnimation$MyCamera;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/widget/RotateAnimation$MyCamera;-><init>(Lcom/lzx/iteam/widget/RotateAnimation;)V

    iput-object v0, p0, Lcom/lzx/iteam/widget/RotateAnimation;->camera:Lcom/lzx/iteam/widget/RotateAnimation$MyCamera;

    .line 38
    return-void
.end method

.method public setConfig(IIFFZ)V
    .locals 0
    .param p1, "centerx"    # I
    .param p2, "centery"    # I
    .param p3, "fromDegree"    # F
    .param p4, "toDegree"    # F
    .param p5, "isY"    # Z

    .prologue
    .line 27
    iput p1, p0, Lcom/lzx/iteam/widget/RotateAnimation;->centerx:I

    .line 28
    iput p2, p0, Lcom/lzx/iteam/widget/RotateAnimation;->centery:I

    .line 29
    iput p3, p0, Lcom/lzx/iteam/widget/RotateAnimation;->fromDegree:F

    .line 30
    iput p4, p0, Lcom/lzx/iteam/widget/RotateAnimation;->toDegree:F

    .line 31
    iput-boolean p5, p0, Lcom/lzx/iteam/widget/RotateAnimation;->isY:Z

    .line 32
    return-void
.end method
