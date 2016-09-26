.class Lcom/lzx/iteam/ContactsFragment$4;
.super Ljava/lang/Object;
.source "ContactsFragment.java"

# interfaces
.implements Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/ContactsFragment;->showExitGroupDlg(Lcom/lzx/iteam/bean/CloudGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ContactsFragment;

.field private final synthetic val$groupItem:Lcom/lzx/iteam/bean/CloudGroup;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ContactsFragment;Lcom/lzx/iteam/bean/CloudGroup;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ContactsFragment$4;->this$0:Lcom/lzx/iteam/ContactsFragment;

    iput-object p2, p0, Lcom/lzx/iteam/ContactsFragment$4;->val$groupItem:Lcom/lzx/iteam/bean/CloudGroup;

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 385
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 387
    return-void
.end method

.method public onConfirmClick(Landroid/app/Dialog;)V
    .locals 4
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 379
    iget-object v0, p0, Lcom/lzx/iteam/ContactsFragment$4;->this$0:Lcom/lzx/iteam/ContactsFragment;

    iget-object v1, p0, Lcom/lzx/iteam/ContactsFragment$4;->val$groupItem:Lcom/lzx/iteam/bean/CloudGroup;

    iget-wide v2, v1, Lcom/lzx/iteam/bean/CloudGroup;->groupId:J

    iget-object v1, p0, Lcom/lzx/iteam/ContactsFragment$4;->val$groupItem:Lcom/lzx/iteam/bean/CloudGroup;

    iget-object v1, v1, Lcom/lzx/iteam/bean/CloudGroup;->contactId:Ljava/lang/String;

    # invokes: Lcom/lzx/iteam/ContactsFragment;->exitGroup(JLjava/lang/String;)V
    invoke-static {v0, v2, v3, v1}, Lcom/lzx/iteam/ContactsFragment;->access$12(Lcom/lzx/iteam/ContactsFragment;JLjava/lang/String;)V

    .line 380
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 381
    return-void
.end method
