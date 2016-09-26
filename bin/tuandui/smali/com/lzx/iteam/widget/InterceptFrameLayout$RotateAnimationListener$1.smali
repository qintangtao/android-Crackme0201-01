.class Lcom/lzx/iteam/widget/InterceptFrameLayout$RotateAnimationListener$1;
.super Ljava/lang/Object;
.source "InterceptFrameLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/widget/InterceptFrameLayout$RotateAnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lzx/iteam/widget/InterceptFrameLayout$RotateAnimationListener;

.field private final synthetic val$first:Landroid/view/ViewGroup;

.field private final synthetic val$second:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/widget/InterceptFrameLayout$RotateAnimationListener;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout$RotateAnimationListener$1;->this$1:Lcom/lzx/iteam/widget/InterceptFrameLayout$RotateAnimationListener;

    iput-object p2, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout$RotateAnimationListener$1;->val$first:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout$RotateAnimationListener$1;->val$second:Landroid/view/ViewGroup;

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout$RotateAnimationListener$1;->this$1:Lcom/lzx/iteam/widget/InterceptFrameLayout$RotateAnimationListener;

    iget-object v1, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout$RotateAnimationListener$1;->val$first:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/InterceptFrameLayout$RotateAnimationListener;->destroyDrawingCache(Landroid/view/ViewGroup;)V

    .line 232
    iget-object v0, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout$RotateAnimationListener$1;->this$1:Lcom/lzx/iteam/widget/InterceptFrameLayout$RotateAnimationListener;

    iget-object v1, p0, Lcom/lzx/iteam/widget/InterceptFrameLayout$RotateAnimationListener$1;->val$second:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/InterceptFrameLayout$RotateAnimationListener;->destroyDrawingCache(Landroid/view/ViewGroup;)V

    .line 234
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 235
    return-void
.end method
