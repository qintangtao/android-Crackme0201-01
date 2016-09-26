.class Lcom/lzx/iteam/util/AllDialogUtil$21;
.super Ljava/lang/Object;
.source "AllDialogUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/util/AllDialogUtil;->titleEditBtnStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/util/AllDialogUtil;

.field private final synthetic val$ed:Landroid/widget/EditText;

.field private final synthetic val$lDialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/util/AllDialogUtil;Landroid/app/Dialog;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/util/AllDialogUtil$21;->this$0:Lcom/lzx/iteam/util/AllDialogUtil;

    iput-object p2, p0, Lcom/lzx/iteam/util/AllDialogUtil$21;->val$lDialog:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/lzx/iteam/util/AllDialogUtil$21;->val$ed:Landroid/widget/EditText;

    .line 648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 653
    iget-object v0, p0, Lcom/lzx/iteam/util/AllDialogUtil$21;->this$0:Lcom/lzx/iteam/util/AllDialogUtil;

    iget-object v0, v0, Lcom/lzx/iteam/util/AllDialogUtil;->mEditListener:Lcom/lzx/iteam/util/AllDialogUtil$EditDialogOnClickListener;

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/lzx/iteam/util/AllDialogUtil$21;->this$0:Lcom/lzx/iteam/util/AllDialogUtil;

    iget-object v0, v0, Lcom/lzx/iteam/util/AllDialogUtil;->mEditListener:Lcom/lzx/iteam/util/AllDialogUtil$EditDialogOnClickListener;

    iget-object v1, p0, Lcom/lzx/iteam/util/AllDialogUtil$21;->val$lDialog:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/lzx/iteam/util/AllDialogUtil$21;->val$ed:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Lcom/lzx/iteam/util/AllDialogUtil$EditDialogOnClickListener;->onCancelClick(Landroid/app/Dialog;Landroid/widget/EditText;)V

    .line 655
    iget-object v0, p0, Lcom/lzx/iteam/util/AllDialogUtil$21;->this$0:Lcom/lzx/iteam/util/AllDialogUtil;

    iget-object v1, p0, Lcom/lzx/iteam/util/AllDialogUtil$21;->val$ed:Landroid/widget/EditText;

    const/4 v2, 0x0

    # invokes: Lcom/lzx/iteam/util/AllDialogUtil;->setAutoShowKey(Landroid/widget/EditText;Z)V
    invoke-static {v0, v1, v2}, Lcom/lzx/iteam/util/AllDialogUtil;->access$0(Lcom/lzx/iteam/util/AllDialogUtil;Landroid/widget/EditText;Z)V

    .line 657
    :cond_0
    return-void
.end method
