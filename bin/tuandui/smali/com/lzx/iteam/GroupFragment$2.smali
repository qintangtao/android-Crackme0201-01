.class Lcom/lzx/iteam/GroupFragment$2;
.super Ljava/lang/Object;
.source "GroupFragment.java"

# interfaces
.implements Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/GroupFragment;->showExitGroupDlg(Lcom/lzx/iteam/bean/ChatGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/GroupFragment;

.field private final synthetic val$chatGroup:Lcom/lzx/iteam/bean/ChatGroup;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/GroupFragment;Lcom/lzx/iteam/bean/ChatGroup;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/GroupFragment$2;->this$0:Lcom/lzx/iteam/GroupFragment;

    iput-object p2, p0, Lcom/lzx/iteam/GroupFragment$2;->val$chatGroup:Lcom/lzx/iteam/bean/ChatGroup;

    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 483
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 485
    return-void
.end method

.method public onConfirmClick(Landroid/app/Dialog;)V
    .locals 2
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 477
    iget-object v0, p0, Lcom/lzx/iteam/GroupFragment$2;->this$0:Lcom/lzx/iteam/GroupFragment;

    iget-object v1, p0, Lcom/lzx/iteam/GroupFragment$2;->val$chatGroup:Lcom/lzx/iteam/bean/ChatGroup;

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/ChatGroup;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/GroupFragment;->exitChatGroup(Ljava/lang/String;)V

    .line 478
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 479
    return-void
.end method
