.class Lcom/lzx/iteam/FunctionFragment$3;
.super Ljava/lang/Object;
.source "FunctionFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/FunctionFragment;->showSharePopAlert(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/FunctionFragment;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/FunctionFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/FunctionFragment$3;->this$0:Lcom/lzx/iteam/FunctionFragment;

    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 538
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment$3;->this$0:Lcom/lzx/iteam/FunctionFragment;

    # getter for: Lcom/lzx/iteam/FunctionFragment;->mShareWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/lzx/iteam/FunctionFragment;->access$11(Lcom/lzx/iteam/FunctionFragment;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 539
    const/4 v0, 0x0

    return v0
.end method