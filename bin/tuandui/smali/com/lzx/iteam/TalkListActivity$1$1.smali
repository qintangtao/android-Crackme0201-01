.class Lcom/lzx/iteam/TalkListActivity$1$1;
.super Ljava/lang/Object;
.source "TalkListActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/TalkListActivity$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lzx/iteam/TalkListActivity$1;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/TalkListActivity$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/TalkListActivity$1$1;->this$1:Lcom/lzx/iteam/TalkListActivity$1;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity$1$1;->this$1:Lcom/lzx/iteam/TalkListActivity$1;

    # getter for: Lcom/lzx/iteam/TalkListActivity$1;->this$0:Lcom/lzx/iteam/TalkListActivity;
    invoke-static {v0}, Lcom/lzx/iteam/TalkListActivity$1;->access$0(Lcom/lzx/iteam/TalkListActivity$1;)Lcom/lzx/iteam/TalkListActivity;

    move-result-object v0

    # getter for: Lcom/lzx/iteam/TalkListActivity;->mNewMessage:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lzx/iteam/TalkListActivity;->access$6(Lcom/lzx/iteam/TalkListActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 128
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 125
    return-void
.end method
