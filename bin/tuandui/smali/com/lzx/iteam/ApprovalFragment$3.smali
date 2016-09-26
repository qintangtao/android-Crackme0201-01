.class Lcom/lzx/iteam/ApprovalFragment$3;
.super Ljava/lang/Object;
.source "ApprovalFragment.java"

# interfaces
.implements Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/ApprovalFragment;->showDeleteTalkDlg(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ApprovalFragment;

.field private final synthetic val$appId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ApprovalFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ApprovalFragment$3;->this$0:Lcom/lzx/iteam/ApprovalFragment;

    iput-object p2, p0, Lcom/lzx/iteam/ApprovalFragment$3;->val$appId:Ljava/lang/String;

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 218
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 219
    return-void
.end method

.method public onConfirmClick(Landroid/app/Dialog;)V
    .locals 2
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalFragment$3;->this$0:Lcom/lzx/iteam/ApprovalFragment;

    # invokes: Lcom/lzx/iteam/ApprovalFragment;->httpReqDlgShow()V
    invoke-static {v0}, Lcom/lzx/iteam/ApprovalFragment;->access$12(Lcom/lzx/iteam/ApprovalFragment;)V

    .line 212
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalFragment$3;->this$0:Lcom/lzx/iteam/ApprovalFragment;

    iget-object v1, p0, Lcom/lzx/iteam/ApprovalFragment$3;->val$appId:Ljava/lang/String;

    # invokes: Lcom/lzx/iteam/ApprovalFragment;->deleteApprovalData(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/lzx/iteam/ApprovalFragment;->access$13(Lcom/lzx/iteam/ApprovalFragment;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 214
    return-void
.end method
