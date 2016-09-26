.class Lcom/lzx/iteam/util/AllDialogUtil$31;
.super Ljava/lang/Object;
.source "AllDialogUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/util/AllDialogUtil;->styleProgress(Ljava/lang/String;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/util/AllDialogUtil;

.field private final synthetic val$progress:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/util/AllDialogUtil;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/util/AllDialogUtil$31;->this$0:Lcom/lzx/iteam/util/AllDialogUtil;

    iput-object p2, p0, Lcom/lzx/iteam/util/AllDialogUtil$31;->val$progress:Landroid/widget/ImageView;

    .line 882
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v7, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 886
    iget-object v2, p0, Lcom/lzx/iteam/util/AllDialogUtil$31;->val$progress:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v5, v2, v3

    .line 887
    .local v5, "centerX":F
    iget-object v2, p0, Lcom/lzx/iteam/util/AllDialogUtil$31;->val$progress:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v6, v2, v3

    .line 888
    .local v6, "centerY":F
    new-instance v0, Lcom/lzx/iteam/widget/Rotate3D;

    const/high16 v2, 0x43b40000    # 360.0f

    move v3, v1

    move v4, v1

    invoke-direct/range {v0 .. v6}, Lcom/lzx/iteam/widget/Rotate3D;-><init>(FFFFFF)V

    .line 889
    .local v0, "rotate3d":Lcom/lzx/iteam/widget/Rotate3D;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Lcom/lzx/iteam/widget/Rotate3D;->setDuration(J)V

    .line 890
    invoke-virtual {v0, v7}, Lcom/lzx/iteam/widget/Rotate3D;->setRepeatMode(I)V

    .line 891
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/Rotate3D;->setRepeatCount(I)V

    .line 892
    invoke-virtual {v0, v7}, Lcom/lzx/iteam/widget/Rotate3D;->setFillAfter(Z)V

    .line 893
    iget-object v1, p0, Lcom/lzx/iteam/util/AllDialogUtil$31;->val$progress:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 895
    return-void
.end method
