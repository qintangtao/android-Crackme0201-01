.class Lcom/lzx/iteam/widget/RotateAnimation$MyCamera;
.super Landroid/graphics/Camera;
.source "RotateAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/widget/RotateAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyCamera"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/widget/RotateAnimation;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/widget/RotateAnimation;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/lzx/iteam/widget/RotateAnimation$MyCamera;->this$0:Lcom/lzx/iteam/widget/RotateAnimation;

    invoke-direct {p0}, Landroid/graphics/Camera;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 97
    :try_start_0
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/RotateAnimation$MyCamera;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 104
    invoke-super {p0}, Landroid/graphics/Camera;->finalize()V

    .line 105
    return-void
.end method
