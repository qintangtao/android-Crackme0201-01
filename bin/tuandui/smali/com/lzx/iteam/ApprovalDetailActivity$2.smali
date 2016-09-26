.class Lcom/lzx/iteam/ApprovalDetailActivity$2;
.super Ljava/lang/Object;
.source "ApprovalDetailActivity.java"

# interfaces
.implements Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/ApprovalDetailActivity;->showDialogMsg(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ApprovalDetailActivity;

.field private final synthetic val$action:I


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ApprovalDetailActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ApprovalDetailActivity$2;->this$0:Lcom/lzx/iteam/ApprovalDetailActivity;

    iput p2, p0, Lcom/lzx/iteam/ApprovalDetailActivity$2;->val$action:I

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 337
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 338
    return-void
.end method

.method public onConfirmClick(Landroid/app/Dialog;)V
    .locals 2
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 330
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalDetailActivity$2;->this$0:Lcom/lzx/iteam/ApprovalDetailActivity;

    # invokes: Lcom/lzx/iteam/ApprovalDetailActivity;->httpReqDlgShow()V
    invoke-static {v0}, Lcom/lzx/iteam/ApprovalDetailActivity;->access$14(Lcom/lzx/iteam/ApprovalDetailActivity;)V

    .line 331
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalDetailActivity$2;->this$0:Lcom/lzx/iteam/ApprovalDetailActivity;

    iget v1, p0, Lcom/lzx/iteam/ApprovalDetailActivity$2;->val$action:I

    # invokes: Lcom/lzx/iteam/ApprovalDetailActivity;->setApprovalData(I)V
    invoke-static {v0, v1}, Lcom/lzx/iteam/ApprovalDetailActivity;->access$15(Lcom/lzx/iteam/ApprovalDetailActivity;I)V

    .line 332
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 333
    return-void
.end method
