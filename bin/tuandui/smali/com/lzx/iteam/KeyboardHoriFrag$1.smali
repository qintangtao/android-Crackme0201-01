.class Lcom/lzx/iteam/KeyboardHoriFrag$1;
.super Ljava/lang/Object;
.source "KeyboardHoriFrag.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/KeyboardHoriFrag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/KeyboardHoriFrag;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/KeyboardHoriFrag;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/KeyboardHoriFrag$1;->this$0:Lcom/lzx/iteam/KeyboardHoriFrag;

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 618
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag$1;->this$0:Lcom/lzx/iteam/KeyboardHoriFrag;

    # getter for: Lcom/lzx/iteam/KeyboardHoriFrag;->mIsT9:Z
    invoke-static {v0}, Lcom/lzx/iteam/KeyboardHoriFrag;->access$0(Lcom/lzx/iteam/KeyboardHoriFrag;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag$1;->this$0:Lcom/lzx/iteam/KeyboardHoriFrag;

    # getter for: Lcom/lzx/iteam/KeyboardHoriFrag;->mQwertyBoard:Lcom/lzx/iteam/keyboard/SkbContainer;
    invoke-static {v0}, Lcom/lzx/iteam/KeyboardHoriFrag;->access$1(Lcom/lzx/iteam/KeyboardHoriFrag;)Lcom/lzx/iteam/keyboard/SkbContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzx/iteam/keyboard/SkbContainer;->clearAnimation()V

    .line 620
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag$1;->this$0:Lcom/lzx/iteam/KeyboardHoriFrag;

    # getter for: Lcom/lzx/iteam/KeyboardHoriFrag;->mQwertyBoard:Lcom/lzx/iteam/keyboard/SkbContainer;
    invoke-static {v0}, Lcom/lzx/iteam/KeyboardHoriFrag;->access$1(Lcom/lzx/iteam/KeyboardHoriFrag;)Lcom/lzx/iteam/keyboard/SkbContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/keyboard/SkbContainer;->setVisibility(I)V

    .line 621
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag$1;->this$0:Lcom/lzx/iteam/KeyboardHoriFrag;

    # getter for: Lcom/lzx/iteam/KeyboardHoriFrag;->mT9Board:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/lzx/iteam/KeyboardHoriFrag;->access$2(Lcom/lzx/iteam/KeyboardHoriFrag;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 628
    :goto_0
    return-void

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag$1;->this$0:Lcom/lzx/iteam/KeyboardHoriFrag;

    # getter for: Lcom/lzx/iteam/KeyboardHoriFrag;->mT9Board:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/lzx/iteam/KeyboardHoriFrag;->access$2(Lcom/lzx/iteam/KeyboardHoriFrag;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 624
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag$1;->this$0:Lcom/lzx/iteam/KeyboardHoriFrag;

    # getter for: Lcom/lzx/iteam/KeyboardHoriFrag;->mT9Board:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/lzx/iteam/KeyboardHoriFrag;->access$2(Lcom/lzx/iteam/KeyboardHoriFrag;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 625
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag$1;->this$0:Lcom/lzx/iteam/KeyboardHoriFrag;

    # getter for: Lcom/lzx/iteam/KeyboardHoriFrag;->mQwertyBoard:Lcom/lzx/iteam/keyboard/SkbContainer;
    invoke-static {v0}, Lcom/lzx/iteam/KeyboardHoriFrag;->access$1(Lcom/lzx/iteam/KeyboardHoriFrag;)Lcom/lzx/iteam/keyboard/SkbContainer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/keyboard/SkbContainer;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 612
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 608
    return-void
.end method
