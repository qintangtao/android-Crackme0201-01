.class Lcom/lzx/iteam/keyboard/SkbContainer$LongPressTimer;
.super Landroid/os/Handler;
.source "SkbContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/keyboard/SkbContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LongPressTimer"
.end annotation


# static fields
.field public static final LONG_PRESS_KEYNUM1:I = 0x1

.field public static final LONG_PRESS_KEYNUM2:I = 0x3

.field public static final LONG_PRESS_TIMEOUT1:I = 0x1f4


# instance fields
.field private mResponseTimes:I

.field mSkbContainer:Lcom/lzx/iteam/keyboard/SkbContainer;

.field final synthetic this$0:Lcom/lzx/iteam/keyboard/SkbContainer;


# direct methods
.method public constructor <init>(Lcom/lzx/iteam/keyboard/SkbContainer;Lcom/lzx/iteam/keyboard/SkbContainer;)V
    .locals 1
    .param p2, "skbContainer"    # Lcom/lzx/iteam/keyboard/SkbContainer;

    .prologue
    .line 623
    iput-object p1, p0, Lcom/lzx/iteam/keyboard/SkbContainer$LongPressTimer;->this$0:Lcom/lzx/iteam/keyboard/SkbContainer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 621
    const/4 v0, 0x0

    iput v0, p0, Lcom/lzx/iteam/keyboard/SkbContainer$LongPressTimer;->mResponseTimes:I

    .line 624
    iput-object p2, p0, Lcom/lzx/iteam/keyboard/SkbContainer$LongPressTimer;->mSkbContainer:Lcom/lzx/iteam/keyboard/SkbContainer;

    .line 625
    return-void
.end method


# virtual methods
.method public removeTimer()Z
    .locals 1

    .prologue
    .line 633
    invoke-virtual {p0, p0}, Lcom/lzx/iteam/keyboard/SkbContainer$LongPressTimer;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 634
    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 638
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SkbContainer$LongPressTimer;->this$0:Lcom/lzx/iteam/keyboard/SkbContainer;

    # getter for: Lcom/lzx/iteam/keyboard/SkbContainer;->mWaitForTouchUp:Z
    invoke-static {v0}, Lcom/lzx/iteam/keyboard/SkbContainer;->access$0(Lcom/lzx/iteam/keyboard/SkbContainer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    iget v0, p0, Lcom/lzx/iteam/keyboard/SkbContainer$LongPressTimer;->mResponseTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lzx/iteam/keyboard/SkbContainer$LongPressTimer;->mResponseTimes:I

    .line 640
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SkbContainer$LongPressTimer;->this$0:Lcom/lzx/iteam/keyboard/SkbContainer;

    # getter for: Lcom/lzx/iteam/keyboard/SkbContainer;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;
    invoke-static {v0}, Lcom/lzx/iteam/keyboard/SkbContainer;->access$1(Lcom/lzx/iteam/keyboard/SkbContainer;)Lcom/lzx/iteam/keyboard/SoftKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzx/iteam/keyboard/SoftKey;->repeatable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 641
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SkbContainer$LongPressTimer;->this$0:Lcom/lzx/iteam/keyboard/SkbContainer;

    # getter for: Lcom/lzx/iteam/keyboard/SkbContainer;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;
    invoke-static {v0}, Lcom/lzx/iteam/keyboard/SkbContainer;->access$1(Lcom/lzx/iteam/keyboard/SkbContainer;)Lcom/lzx/iteam/keyboard/SoftKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzx/iteam/keyboard/SoftKey;->isUserDefKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 642
    iget v0, p0, Lcom/lzx/iteam/keyboard/SkbContainer$LongPressTimer;->mResponseTimes:I

    if-ne v2, v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SkbContainer$LongPressTimer;->this$0:Lcom/lzx/iteam/keyboard/SkbContainer;

    # getter for: Lcom/lzx/iteam/keyboard/SkbContainer;->mInputModeSwitcher:Lcom/lzx/iteam/keyboard/InputModeSwitcher;
    invoke-static {v0}, Lcom/lzx/iteam/keyboard/SkbContainer;->access$2(Lcom/lzx/iteam/keyboard/SkbContainer;)Lcom/lzx/iteam/keyboard/InputModeSwitcher;

    move-result-object v0

    .line 644
    iget-object v1, p0, Lcom/lzx/iteam/keyboard/SkbContainer$LongPressTimer;->this$0:Lcom/lzx/iteam/keyboard/SkbContainer;

    # getter for: Lcom/lzx/iteam/keyboard/SkbContainer;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;
    invoke-static {v1}, Lcom/lzx/iteam/keyboard/SkbContainer;->access$1(Lcom/lzx/iteam/keyboard/SkbContainer;)Lcom/lzx/iteam/keyboard/SoftKey;

    move-result-object v1

    iget v1, v1, Lcom/lzx/iteam/keyboard/SoftKey;->mKeyCode:I

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/keyboard/InputModeSwitcher;->tryHandleLongPressSwitch(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SkbContainer$LongPressTimer;->this$0:Lcom/lzx/iteam/keyboard/SkbContainer;

    invoke-static {v0, v2}, Lcom/lzx/iteam/keyboard/SkbContainer;->access$3(Lcom/lzx/iteam/keyboard/SkbContainer;Z)V

    .line 646
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SkbContainer$LongPressTimer;->this$0:Lcom/lzx/iteam/keyboard/SkbContainer;

    const-wide/16 v2, 0x0

    # invokes: Lcom/lzx/iteam/keyboard/SkbContainer;->resetKeyPress(J)V
    invoke-static {v0, v2, v3}, Lcom/lzx/iteam/keyboard/SkbContainer;->access$4(Lcom/lzx/iteam/keyboard/SkbContainer;J)V

    .line 668
    :cond_0
    :goto_0
    return-void

    .line 650
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SkbContainer$LongPressTimer;->this$0:Lcom/lzx/iteam/keyboard/SkbContainer;

    iget-object v1, p0, Lcom/lzx/iteam/keyboard/SkbContainer$LongPressTimer;->this$0:Lcom/lzx/iteam/keyboard/SkbContainer;

    # getter for: Lcom/lzx/iteam/keyboard/SkbContainer;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;
    invoke-static {v1}, Lcom/lzx/iteam/keyboard/SkbContainer;->access$1(Lcom/lzx/iteam/keyboard/SkbContainer;)Lcom/lzx/iteam/keyboard/SoftKey;

    move-result-object v1

    # invokes: Lcom/lzx/iteam/keyboard/SkbContainer;->responseSoftKeyLongclick(Lcom/lzx/iteam/keyboard/SoftKey;)V
    invoke-static {v0, v1}, Lcom/lzx/iteam/keyboard/SkbContainer;->access$5(Lcom/lzx/iteam/keyboard/SkbContainer;Lcom/lzx/iteam/keyboard/SoftKey;)V

    goto :goto_0

    .line 663
    :cond_2
    iget v0, p0, Lcom/lzx/iteam/keyboard/SkbContainer$LongPressTimer;->mResponseTimes:I

    if-ne v2, v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SkbContainer$LongPressTimer;->this$0:Lcom/lzx/iteam/keyboard/SkbContainer;

    # invokes: Lcom/lzx/iteam/keyboard/SkbContainer;->popupSymbols()V
    invoke-static {v0}, Lcom/lzx/iteam/keyboard/SkbContainer;->access$6(Lcom/lzx/iteam/keyboard/SkbContainer;)V

    goto :goto_0
.end method

.method public startTimer()V
    .locals 4

    .prologue
    .line 628
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    add-long/2addr v0, v2

    invoke-virtual {p0, p0, v0, v1}, Lcom/lzx/iteam/keyboard/SkbContainer$LongPressTimer;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 629
    const/4 v0, 0x0

    iput v0, p0, Lcom/lzx/iteam/keyboard/SkbContainer$LongPressTimer;->mResponseTimes:I

    .line 630
    return-void
.end method
