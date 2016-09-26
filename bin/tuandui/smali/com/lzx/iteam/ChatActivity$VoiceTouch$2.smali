.class Lcom/lzx/iteam/ChatActivity$VoiceTouch$2;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/ChatActivity$VoiceTouch;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lzx/iteam/ChatActivity$VoiceTouch;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ChatActivity$VoiceTouch;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ChatActivity$VoiceTouch$2;->this$1:Lcom/lzx/iteam/ChatActivity$VoiceTouch;

    .line 1098
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$VoiceTouch$2;->this$1:Lcom/lzx/iteam/ChatActivity$VoiceTouch;

    # getter for: Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;
    invoke-static {v0}, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->access$0(Lcom/lzx/iteam/ChatActivity$VoiceTouch;)Lcom/lzx/iteam/ChatActivity;

    move-result-object v0

    # getter for: Lcom/lzx/iteam/ChatActivity;->mScaleBigAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v0}, Lcom/lzx/iteam/ChatActivity;->access$38(Lcom/lzx/iteam/ChatActivity;)Landroid/view/animation/ScaleAnimation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1107
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$VoiceTouch$2;->this$1:Lcom/lzx/iteam/ChatActivity$VoiceTouch;

    # getter for: Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;
    invoke-static {v0}, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->access$0(Lcom/lzx/iteam/ChatActivity$VoiceTouch;)Lcom/lzx/iteam/ChatActivity;

    move-result-object v0

    # getter for: Lcom/lzx/iteam/ChatActivity;->mIvRecord:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lzx/iteam/ChatActivity;->access$29(Lcom/lzx/iteam/ChatActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity$VoiceTouch$2;->this$1:Lcom/lzx/iteam/ChatActivity$VoiceTouch;

    # getter for: Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;
    invoke-static {v1}, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->access$0(Lcom/lzx/iteam/ChatActivity$VoiceTouch;)Lcom/lzx/iteam/ChatActivity;

    move-result-object v1

    # getter for: Lcom/lzx/iteam/ChatActivity;->mScaleBigAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v1}, Lcom/lzx/iteam/ChatActivity;->access$38(Lcom/lzx/iteam/ChatActivity;)Landroid/view/animation/ScaleAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1109
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1114
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1102
    return-void
.end method
