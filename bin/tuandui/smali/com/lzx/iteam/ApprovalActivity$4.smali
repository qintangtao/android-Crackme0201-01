.class Lcom/lzx/iteam/ApprovalActivity$4;
.super Ljava/lang/Object;
.source "ApprovalActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/ApprovalActivity;->showTeamDialog()V
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
    iput-object p1, p0, Lcom/lzx/iteam/ApprovalActivity$4;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalActivity$4;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    # getter for: Lcom/lzx/iteam/ApprovalActivity;->mTeamDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/lzx/iteam/ApprovalActivity;->access$18(Lcom/lzx/iteam/ApprovalActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 312
    return-void
.end method
