.class Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;
.super Landroid/os/Handler;
.source "BalloonHint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/keyboard/BalloonHint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BalloonTimer"
.end annotation


# static fields
.field public static final ACTION_HIDE:I = 0x2

.field public static final ACTION_SHOW:I = 0x1

.field public static final ACTION_UPDATE:I = 0x3


# instance fields
.field private mAction:I

.field private mHeight:I

.field private mPositionInParent:[I

.field private mTimerPending:Z

.field private mWidth:I

.field final synthetic this$0:Lcom/lzx/iteam/keyboard/BalloonHint;


# direct methods
.method private constructor <init>(Lcom/lzx/iteam/keyboard/BalloonHint;)V
    .locals 1

    .prologue
    .line 269
    iput-object p1, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;->this$0:Lcom/lzx/iteam/keyboard/BalloonHint;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 279
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;->mPositionInParent:[I

    .line 283
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;->mTimerPending:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/lzx/iteam/keyboard/BalloonHint;Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;)V
    .locals 0

    .prologue
    .line 269
    invoke-direct {p0, p1}, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;-><init>(Lcom/lzx/iteam/keyboard/BalloonHint;)V

    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;->mAction:I

    return v0
.end method

.method public isPending()Z
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;->mTimerPending:Z

    return v0
.end method

.method public removeTimer()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 303
    iget-boolean v1, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;->mTimerPending:Z

    if-eqz v1, :cond_0

    .line 304
    iput-boolean v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;->mTimerPending:Z

    .line 305
    invoke-virtual {p0, p0}, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 306
    const/4 v0, 0x1

    .line 309
    :cond_0
    return v0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 317
    iget v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;->mAction:I

    packed-switch v0, :pswitch_data_0

    .line 332
    :goto_0
    iput-boolean v7, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;->mTimerPending:Z

    .line 333
    return-void

    .line 319
    :pswitch_0
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;->this$0:Lcom/lzx/iteam/keyboard/BalloonHint;

    # getter for: Lcom/lzx/iteam/keyboard/BalloonHint;->mParent:Landroid/view/View;
    invoke-static {v0}, Lcom/lzx/iteam/keyboard/BalloonHint;->access$0(Lcom/lzx/iteam/keyboard/BalloonHint;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;->this$0:Lcom/lzx/iteam/keyboard/BalloonHint;

    # getter for: Lcom/lzx/iteam/keyboard/BalloonHint;->mParentLocationInWindow:[I
    invoke-static {v1}, Lcom/lzx/iteam/keyboard/BalloonHint;->access$1(Lcom/lzx/iteam/keyboard/BalloonHint;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 320
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;->this$0:Lcom/lzx/iteam/keyboard/BalloonHint;

    iget-object v1, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;->this$0:Lcom/lzx/iteam/keyboard/BalloonHint;

    # getter for: Lcom/lzx/iteam/keyboard/BalloonHint;->mParent:Landroid/view/View;
    invoke-static {v1}, Lcom/lzx/iteam/keyboard/BalloonHint;->access$0(Lcom/lzx/iteam/keyboard/BalloonHint;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x33

    .line 321
    iget-object v3, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;->mPositionInParent:[I

    aget v3, v3, v7

    iget-object v4, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;->mPositionInParent:[I

    aget v4, v4, v6

    .line 322
    iget-object v5, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;->this$0:Lcom/lzx/iteam/keyboard/BalloonHint;

    # getter for: Lcom/lzx/iteam/keyboard/BalloonHint;->mParentLocationInWindow:[I
    invoke-static {v5}, Lcom/lzx/iteam/keyboard/BalloonHint;->access$1(Lcom/lzx/iteam/keyboard/BalloonHint;)[I

    move-result-object v5

    aget v5, v5, v6

    add-int/2addr v4, v5

    .line 320
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lzx/iteam/keyboard/BalloonHint;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 325
    :pswitch_1
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;->this$0:Lcom/lzx/iteam/keyboard/BalloonHint;

    invoke-virtual {v0}, Lcom/lzx/iteam/keyboard/BalloonHint;->dismiss()V

    goto :goto_0

    .line 328
    :pswitch_2
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;->this$0:Lcom/lzx/iteam/keyboard/BalloonHint;

    # getter for: Lcom/lzx/iteam/keyboard/BalloonHint;->mParent:Landroid/view/View;
    invoke-static {v0}, Lcom/lzx/iteam/keyboard/BalloonHint;->access$0(Lcom/lzx/iteam/keyboard/BalloonHint;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;->this$0:Lcom/lzx/iteam/keyboard/BalloonHint;

    # getter for: Lcom/lzx/iteam/keyboard/BalloonHint;->mParentLocationInWindow:[I
    invoke-static {v1}, Lcom/lzx/iteam/keyboard/BalloonHint;->access$1(Lcom/lzx/iteam/keyboard/BalloonHint;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 329
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;->this$0:Lcom/lzx/iteam/keyboard/BalloonHint;

    iget-object v1, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;->mPositionInParent:[I

    aget v1, v1, v7

    iget-object v2, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;->mPositionInParent:[I

    aget v2, v2, v6

    .line 330
    iget-object v3, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;->this$0:Lcom/lzx/iteam/keyboard/BalloonHint;

    # getter for: Lcom/lzx/iteam/keyboard/BalloonHint;->mParentLocationInWindow:[I
    invoke-static {v3}, Lcom/lzx/iteam/keyboard/BalloonHint;->access$1(Lcom/lzx/iteam/keyboard/BalloonHint;)[I

    move-result-object v3

    aget v3, v3, v6

    add-int/2addr v2, v3

    iget v3, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;->mWidth:I

    iget v4, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;->mHeight:I

    .line 329
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lzx/iteam/keyboard/BalloonHint;->update(IIII)V

    goto :goto_0

    .line 317
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public startTimer(JI[III)V
    .locals 5
    .param p1, "time"    # J
    .param p3, "action"    # I
    .param p4, "positionInParent"    # [I
    .param p5, "width"    # I
    .param p6, "height"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 287
    iput p3, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;->mAction:I

    .line 288
    const/4 v0, 0x2

    if-eq v0, p3, :cond_0

    .line 289
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;->mPositionInParent:[I

    aget v1, p4, v3

    aput v1, v0, v3

    .line 290
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;->mPositionInParent:[I

    aget v1, p4, v2

    aput v1, v0, v2

    .line 292
    :cond_0
    iput p5, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;->mWidth:I

    .line 293
    iput p6, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;->mHeight:I

    .line 294
    invoke-virtual {p0, p0, p1, p2}, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 295
    iput-boolean v2, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonTimer;->mTimerPending:Z

    .line 296
    return-void
.end method
