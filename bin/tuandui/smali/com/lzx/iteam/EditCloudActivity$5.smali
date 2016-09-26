.class Lcom/lzx/iteam/EditCloudActivity$5;
.super Ljava/lang/Object;
.source "EditCloudActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/EditCloudActivity;->showSetSexPop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/EditCloudActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/EditCloudActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/EditCloudActivity$5;->this$0:Lcom/lzx/iteam/EditCloudActivity;

    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 474
    iget-object v0, p0, Lcom/lzx/iteam/EditCloudActivity$5;->this$0:Lcom/lzx/iteam/EditCloudActivity;

    # getter for: Lcom/lzx/iteam/EditCloudActivity;->mSetSexPop:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/lzx/iteam/EditCloudActivity;->access$2(Lcom/lzx/iteam/EditCloudActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 475
    const/4 v0, 0x0

    return v0
.end method
