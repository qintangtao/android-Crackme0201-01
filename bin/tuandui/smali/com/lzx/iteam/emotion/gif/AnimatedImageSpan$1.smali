.class Lcom/lzx/iteam/emotion/gif/AnimatedImageSpan$1;
.super Ljava/lang/Object;
.source "AnimatedImageSpan.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/emotion/gif/AnimatedImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/emotion/gif/AnimatedImageSpan;

.field private final synthetic val$mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/emotion/gif/AnimatedImageSpan;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/emotion/gif/AnimatedImageSpan$1;->this$0:Lcom/lzx/iteam/emotion/gif/AnimatedImageSpan;

    iput-object p2, p0, Lcom/lzx/iteam/emotion/gif/AnimatedImageSpan$1;->val$mHandler:Landroid/os/Handler;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lzx/iteam/emotion/gif/AnimatedImageSpan$1;->this$0:Lcom/lzx/iteam/emotion/gif/AnimatedImageSpan;

    # getter for: Lcom/lzx/iteam/emotion/gif/AnimatedImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/lzx/iteam/emotion/gif/AnimatedImageSpan;->access$0(Lcom/lzx/iteam/emotion/gif/AnimatedImageSpan;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/emotion/gif/AnimatedGifDrawable;

    invoke-virtual {v0}, Lcom/lzx/iteam/emotion/gif/AnimatedGifDrawable;->nextFrame()V

    .line 23
    iget-object v1, p0, Lcom/lzx/iteam/emotion/gif/AnimatedImageSpan$1;->val$mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/lzx/iteam/emotion/gif/AnimatedImageSpan$1;->this$0:Lcom/lzx/iteam/emotion/gif/AnimatedImageSpan;

    # getter for: Lcom/lzx/iteam/emotion/gif/AnimatedImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/lzx/iteam/emotion/gif/AnimatedImageSpan;->access$0(Lcom/lzx/iteam/emotion/gif/AnimatedImageSpan;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/emotion/gif/AnimatedGifDrawable;

    invoke-virtual {v0}, Lcom/lzx/iteam/emotion/gif/AnimatedGifDrawable;->getFrameDuration()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 24
    return-void
.end method
