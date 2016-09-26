.class Lcom/lzx/iteam/ApprovalActivity$7;
.super Ljava/lang/Object;
.source "ApprovalActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/ApprovalActivity;->showCreatePop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ApprovalActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ApprovalActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ApprovalActivity$7;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 344
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalActivity$7;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    # getter for: Lcom/lzx/iteam/ApprovalActivity;->mCreatePop:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/lzx/iteam/ApprovalActivity;->access$21(Lcom/lzx/iteam/ApprovalActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 345
    return-void
.end method
