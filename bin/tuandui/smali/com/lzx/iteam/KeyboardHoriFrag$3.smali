.class Lcom/lzx/iteam/KeyboardHoriFrag$3;
.super Ljava/lang/Object;
.source "KeyboardHoriFrag.java"

# interfaces
.implements Lcom/lzx/iteam/widget/HInterceptFrameLayout$DoubleScrollListener;


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
    iput-object p1, p0, Lcom/lzx/iteam/KeyboardHoriFrag$3;->this$0:Lcom/lzx/iteam/KeyboardHoriFrag;

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDobleScrollUp()V
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag$3;->this$0:Lcom/lzx/iteam/KeyboardHoriFrag;

    # getter for: Lcom/lzx/iteam/KeyboardHoriFrag;->mActivity:Lcom/lzx/iteam/CloudDialerActivity;
    invoke-static {v0}, Lcom/lzx/iteam/KeyboardHoriFrag;->access$4(Lcom/lzx/iteam/KeyboardHoriFrag;)Lcom/lzx/iteam/CloudDialerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzx/iteam/CloudDialerActivity;->saveHoriKbLastPosition()V

    .line 366
    return-void
.end method

.method public onDoubleScroll(F)V
    .locals 3
    .param p1, "dis"    # F

    .prologue
    .line 359
    const-string v0, "doubleSs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag$3;->this$0:Lcom/lzx/iteam/KeyboardHoriFrag;

    # getter for: Lcom/lzx/iteam/KeyboardHoriFrag;->mActivity:Lcom/lzx/iteam/CloudDialerActivity;
    invoke-static {v0}, Lcom/lzx/iteam/KeyboardHoriFrag;->access$4(Lcom/lzx/iteam/KeyboardHoriFrag;)Lcom/lzx/iteam/CloudDialerActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lzx/iteam/CloudDialerActivity;->scrollHoriPadView(F)V

    .line 361
    return-void
.end method
