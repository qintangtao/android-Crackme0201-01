.class Lcom/lzx/iteam/CloudDialerActivity$6;
.super Ljava/lang/Object;
.source "CloudDialerActivity.java"

# interfaces
.implements Lcom/lzx/iteam/util/ShakeListener$OnShakeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/CloudDialerActivity;->setupShakeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/CloudDialerActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/CloudDialerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/CloudDialerActivity$6;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    .line 2234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShake(FFF)V
    .locals 3
    .param p1, "axisX"    # F
    .param p2, "axisY"    # F
    .param p3, "axisZ"    # F

    .prologue
    const/4 v2, 0x0

    .line 2241
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$6;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardOri:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2242
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$6;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-boolean v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->mIsKeyBoardLock:Z

    if-nez v0, :cond_0

    .line 2244
    cmpl-float v0, p1, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$6;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mKeypadAtRight:Z
    invoke-static {v0}, Lcom/lzx/iteam/CloudDialerActivity;->access$51(Lcom/lzx/iteam/CloudDialerActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2257
    :cond_0
    :goto_0
    return-void

    .line 2246
    :cond_1
    cmpg-float v0, p1, v2

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$6;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mKeypadAtRight:Z
    invoke-static {v0}, Lcom/lzx/iteam/CloudDialerActivity;->access$51(Lcom/lzx/iteam/CloudDialerActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2250
    :cond_2
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$6;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mKeypadAtRight:Z
    invoke-static {v0}, Lcom/lzx/iteam/CloudDialerActivity;->access$51(Lcom/lzx/iteam/CloudDialerActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$6;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->isLeftAnimation:Z
    invoke-static {v0}, Lcom/lzx/iteam/CloudDialerActivity;->access$52(Lcom/lzx/iteam/CloudDialerActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2251
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$6;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v0}, Lcom/lzx/iteam/CloudDialerActivity;->exchangeViewToLeft()V

    goto :goto_0

    .line 2252
    :cond_3
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$6;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mKeypadAtRight:Z
    invoke-static {v0}, Lcom/lzx/iteam/CloudDialerActivity;->access$51(Lcom/lzx/iteam/CloudDialerActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$6;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->isRightAnimation:Z
    invoke-static {v0}, Lcom/lzx/iteam/CloudDialerActivity;->access$53(Lcom/lzx/iteam/CloudDialerActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2253
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$6;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v0}, Lcom/lzx/iteam/CloudDialerActivity;->exchangeViewToRight()V

    goto :goto_0
.end method
