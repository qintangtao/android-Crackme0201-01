.class Lcom/lzx/iteam/ApprovalCreateActivity$5;
.super Ljava/lang/Object;
.source "ApprovalCreateActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/ApprovalCreateActivity;->showMorningAndAfter(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

.field private final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ApprovalCreateActivity;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ApprovalCreateActivity$5;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    iput-object p2, p0, Lcom/lzx/iteam/ApprovalCreateActivity$5;->val$dialog:Landroid/app/AlertDialog;

    .line 657
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 660
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalCreateActivity$5;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 661
    const/4 v0, 0x0

    return v0
.end method
