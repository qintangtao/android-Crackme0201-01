.class Lcom/lzx/iteam/ManageGroupActivity$6;
.super Ljava/lang/Object;
.source "ManageGroupActivity.java"

# interfaces
.implements Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/ManageGroupActivity;->showExitGroupDlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ManageGroupActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ManageGroupActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ManageGroupActivity$6;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    .line 1004
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 1013
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1015
    return-void
.end method

.method public onConfirmClick(Landroid/app/Dialog;)V
    .locals 2
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity$6;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    iget-object v1, p0, Lcom/lzx/iteam/ManageGroupActivity$6;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    # getter for: Lcom/lzx/iteam/ManageGroupActivity;->mGroupId:Ljava/lang/String;
    invoke-static {v1}, Lcom/lzx/iteam/ManageGroupActivity;->access$0(Lcom/lzx/iteam/ManageGroupActivity;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/lzx/iteam/ManageGroupActivity;->exitGroup(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/lzx/iteam/ManageGroupActivity;->access$23(Lcom/lzx/iteam/ManageGroupActivity;Ljava/lang/String;)V

    .line 1008
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1009
    return-void
.end method
