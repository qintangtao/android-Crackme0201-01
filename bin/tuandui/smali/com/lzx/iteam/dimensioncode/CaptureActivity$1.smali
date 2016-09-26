.class Lcom/lzx/iteam/dimensioncode/CaptureActivity$1;
.super Ljava/lang/Object;
.source "CaptureActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/dimensioncode/CaptureActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/dimensioncode/CaptureActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/dimensioncode/CaptureActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity$1;->this$0:Lcom/lzx/iteam/dimensioncode/CaptureActivity;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivity$1;->this$0:Lcom/lzx/iteam/dimensioncode/CaptureActivity;

    # getter for: Lcom/lzx/iteam/dimensioncode/CaptureActivity;->cameraManager:Lcom/lzx/iteam/dimensioncode/camera/CameraManager;
    invoke-static {v0}, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->access$0(Lcom/lzx/iteam/dimensioncode/CaptureActivity;)Lcom/lzx/iteam/dimensioncode/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->resetAutoFocus()V

    .line 154
    const/4 v0, 0x0

    return v0
.end method
