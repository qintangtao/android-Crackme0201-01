.class Lcom/lzx/iteam/ChatGroupDetailActivity$4;
.super Ljava/lang/Object;
.source "ChatGroupDetailActivity.java"

# interfaces
.implements Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/ChatGroupDetailActivity;->showExitGroupDlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ChatGroupDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$4;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 454
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 456
    return-void
.end method

.method public onConfirmClick(Landroid/app/Dialog;)V
    .locals 1
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 448
    iget-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$4;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # invokes: Lcom/lzx/iteam/ChatGroupDetailActivity;->exitChatGroup()V
    invoke-static {v0}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$28(Lcom/lzx/iteam/ChatGroupDetailActivity;)V

    .line 449
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 450
    return-void
.end method
