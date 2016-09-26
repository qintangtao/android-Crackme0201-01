.class Lcom/lzx/iteam/util/AllDialogUtil$37;
.super Ljava/lang/Object;
.source "AllDialogUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/util/AllDialogUtil;->etDialog(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/util/AllDialogUtil;

.field private final synthetic val$et_content:Landroid/widget/EditText;

.field private final synthetic val$lDialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/util/AllDialogUtil;Landroid/app/Dialog;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/util/AllDialogUtil$37;->this$0:Lcom/lzx/iteam/util/AllDialogUtil;

    iput-object p2, p0, Lcom/lzx/iteam/util/AllDialogUtil$37;->val$lDialog:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/lzx/iteam/util/AllDialogUtil$37;->val$et_content:Landroid/widget/EditText;

    .line 1087
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/lzx/iteam/util/AllDialogUtil$37;->this$0:Lcom/lzx/iteam/util/AllDialogUtil;

    iget-object v0, v0, Lcom/lzx/iteam/util/AllDialogUtil;->mEditListener:Lcom/lzx/iteam/util/AllDialogUtil$EditDialogOnClickListener;

    if-eqz v0, :cond_0

    .line 1091
    iget-object v0, p0, Lcom/lzx/iteam/util/AllDialogUtil$37;->this$0:Lcom/lzx/iteam/util/AllDialogUtil;

    iget-object v0, v0, Lcom/lzx/iteam/util/AllDialogUtil;->mEditListener:Lcom/lzx/iteam/util/AllDialogUtil$EditDialogOnClickListener;

    iget-object v1, p0, Lcom/lzx/iteam/util/AllDialogUtil$37;->val$lDialog:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/lzx/iteam/util/AllDialogUtil$37;->val$et_content:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2}, Lcom/lzx/iteam/util/AllDialogUtil$EditDialogOnClickListener;->onConfirmClick(Landroid/app/Dialog;Landroid/widget/EditText;)V

    .line 1093
    :cond_0
    return-void
.end method
