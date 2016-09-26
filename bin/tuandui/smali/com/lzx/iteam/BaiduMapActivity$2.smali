.class Lcom/lzx/iteam/BaiduMapActivity$2;
.super Ljava/lang/Object;
.source "BaiduMapActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/BaiduMapActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/BaiduMapActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/BaiduMapActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/BaiduMapActivity$2;->this$0:Lcom/lzx/iteam/BaiduMapActivity;

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 265
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lzx/iteam/BaiduMapActivity$2;->this$0:Lcom/lzx/iteam/BaiduMapActivity;

    const-class v2, Lcom/lzx/iteam/BaiduMapSearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 266
    .local v0, "channle_intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lzx/iteam/BaiduMapActivity$2;->this$0:Lcom/lzx/iteam/BaiduMapActivity;

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Lcom/lzx/iteam/BaiduMapActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 267
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 261
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 256
    return-void
.end method
