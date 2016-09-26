.class Lcom/lzx/iteam/CloudDialerActivity$9;
.super Ljava/lang/Object;
.source "CloudDialerActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/CloudDialerActivity;->exchangeViewToRight()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/CloudDialerActivity;

.field private final synthetic val$v:Landroid/view/ViewGroup;

.field private final synthetic val$v2:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/CloudDialerActivity;Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/CloudDialerActivity$9;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iput-object p2, p0, Lcom/lzx/iteam/CloudDialerActivity$9;->val$v2:Landroid/view/View;

    iput-object p3, p0, Lcom/lzx/iteam/CloudDialerActivity$9;->val$v:Landroid/view/ViewGroup;

    .line 2335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 2353
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$9;->val$v:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 2354
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$9;->val$v:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity$9;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mMainLayout:Lcom/lzx/iteam/widget/ContactInfoActionButtonsLayout;
    invoke-static {v1}, Lcom/lzx/iteam/CloudDialerActivity;->access$54(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/widget/ContactInfoActionButtonsLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lzx/iteam/widget/ContactInfoActionButtonsLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity$9;->val$v:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity$9;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mMainLayout:Lcom/lzx/iteam/widget/ContactInfoActionButtonsLayout;
    invoke-static {v3}, Lcom/lzx/iteam/CloudDialerActivity;->access$54(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/widget/ContactInfoActionButtonsLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lzx/iteam/widget/ContactInfoActionButtonsLayout;->getWidth()I

    move-result v3

    .line 2355
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity$9;->val$v:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    .line 2354
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 2356
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 2349
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 5
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v3, 0x0

    .line 2339
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$9;->val$v2:Landroid/view/View;

    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity$9;->val$v2:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity$9;->val$v2:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 2341
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$9;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->mSkinCommon:Lcom/lzx/iteam/bean/SkinCommonData;

    if-eqz v0, :cond_0

    .line 2342
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$9;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity$9;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v1, v1, Lcom/lzx/iteam/CloudDialerActivity;->player:Lcom/lzx/iteam/widget/Mp3Player;

    iget-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity$9;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v2, v2, Lcom/lzx/iteam/CloudDialerActivity;->mSkinCommon:Lcom/lzx/iteam/bean/SkinCommonData;

    iget-object v2, v2, Lcom/lzx/iteam/bean/SkinCommonData;->def_lock:Landroid/content/res/AssetFileDescriptor;

    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity$9;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v3, v3, Lcom/lzx/iteam/CloudDialerActivity;->lockPlayerId:Ljava/lang/String;

    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity$9;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v4, v4, Lcom/lzx/iteam/CloudDialerActivity;->mSkinCommon:Lcom/lzx/iteam/bean/SkinCommonData;

    iget-object v4, v4, Lcom/lzx/iteam/bean/SkinCommonData;->lock:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lzx/iteam/CloudDialerActivity;->playPhone(Lcom/lzx/iteam/widget/Mp3Player;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Ljava/lang/String;)V

    .line 2344
    :cond_0
    return-void
.end method
