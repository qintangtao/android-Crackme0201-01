.class Lcom/lzx/iteam/CloudContactDetailActivity$10;
.super Ljava/lang/Object;
.source "CloudContactDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/CloudContactDetailActivity;->showPopwindow(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/CloudContactDetailActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/CloudContactDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/CloudContactDetailActivity$10;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    .line 742
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 745
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity$10;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity;->mMoreWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$31(Lcom/lzx/iteam/CloudContactDetailActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 746
    const/4 v0, 0x0

    return v0
.end method