.class Lcom/lzx/iteam/KeyboardHoriFrag$5;
.super Ljava/lang/Object;
.source "KeyboardHoriFrag.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/KeyboardHoriFrag;->setupRootViewInKeyboard()V
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
    iput-object p1, p0, Lcom/lzx/iteam/KeyboardHoriFrag$5;->this$0:Lcom/lzx/iteam/KeyboardHoriFrag;

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 393
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 394
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardHoriFrag$5;->this$0:Lcom/lzx/iteam/KeyboardHoriFrag;

    # getter for: Lcom/lzx/iteam/KeyboardHoriFrag;->mIsDisplayUnderPanel:Z
    invoke-static {v2}, Lcom/lzx/iteam/KeyboardHoriFrag;->access$5(Lcom/lzx/iteam/KeyboardHoriFrag;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 396
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardHoriFrag$5;->this$0:Lcom/lzx/iteam/KeyboardHoriFrag;

    # getter for: Lcom/lzx/iteam/KeyboardHoriFrag;->mT9Board:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/lzx/iteam/KeyboardHoriFrag;->access$2(Lcom/lzx/iteam/KeyboardHoriFrag;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 397
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardHoriFrag$5;->this$0:Lcom/lzx/iteam/KeyboardHoriFrag;

    # getter for: Lcom/lzx/iteam/KeyboardHoriFrag;->mQwertyBoard:Lcom/lzx/iteam/keyboard/SkbContainer;
    invoke-static {v2}, Lcom/lzx/iteam/KeyboardHoriFrag;->access$1(Lcom/lzx/iteam/KeyboardHoriFrag;)Lcom/lzx/iteam/keyboard/SkbContainer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/keyboard/SkbContainer;->setVisibility(I)V

    .line 398
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardHoriFrag$5;->this$0:Lcom/lzx/iteam/KeyboardHoriFrag;

    iget-object v3, p0, Lcom/lzx/iteam/KeyboardHoriFrag$5;->this$0:Lcom/lzx/iteam/KeyboardHoriFrag;

    # getter for: Lcom/lzx/iteam/KeyboardHoriFrag;->mIsDisplayUnderPanel:Z
    invoke-static {v3}, Lcom/lzx/iteam/KeyboardHoriFrag;->access$5(Lcom/lzx/iteam/KeyboardHoriFrag;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    invoke-static {v2, v0}, Lcom/lzx/iteam/KeyboardHoriFrag;->access$6(Lcom/lzx/iteam/KeyboardHoriFrag;Z)V

    .line 400
    :cond_0
    return v1

    :cond_1
    move v0, v1

    .line 398
    goto :goto_0
.end method
