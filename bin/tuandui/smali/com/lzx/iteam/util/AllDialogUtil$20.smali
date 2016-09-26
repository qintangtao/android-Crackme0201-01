.class Lcom/lzx/iteam/util/AllDialogUtil$20;
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
.method constructor <init>(Lcom/lzx/iteam/util/AllDialogUtil;Landroid/widget/EditText;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/util/AllDialogUtil$20;->this$0:Lcom/lzx/iteam/util/AllDialogUtil;

    iput-object p2, p0, Lcom/lzx/iteam/util/AllDialogUtil$20;->val$ed:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/lzx/iteam/util/AllDialogUtil$20;->val$lDialog:Landroid/app/Dialog;

    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 636
    iget-object v1, p0, Lcom/lzx/iteam/util/AllDialogUtil$20;->this$0:Lcom/lzx/iteam/util/AllDialogUtil;

    iget-object v1, v1, Lcom/lzx/iteam/util/AllDialogUtil;->mEditListener:Lcom/lzx/iteam/util/AllDialogUtil$EditDialogOnClickListener;

    if-eqz v1, :cond_0

    .line 637
    iget-object v1, p0, Lcom/lzx/iteam/util/AllDialogUtil$20;->val$ed:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lzx/iteam/util/AllDialogUtil$20;->val$ed:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 638
    iget-object v1, p0, Lcom/lzx/iteam/util/AllDialogUtil$20;->this$0:Lcom/lzx/iteam/util/AllDialogUtil;

    iget-object v1, v1, Lcom/lzx/iteam/util/AllDialogUtil;->mEditListener:Lcom/lzx/iteam/util/AllDialogUtil$EditDialogOnClickListener;

    iget-object v2, p0, Lcom/lzx/iteam/util/AllDialogUtil$20;->val$lDialog:Landroid/app/Dialog;

    iget-object v3, p0, Lcom/lzx/iteam/util/AllDialogUtil$20;->val$ed:Landroid/widget/EditText;

    invoke-interface {v1, v2, v3}, Lcom/lzx/iteam/util/AllDialogUtil$EditDialogOnClickListener;->onConfirmClick(Landroid/app/Dialog;Landroid/widget/EditText;)V

    .line 639
    iget-object v1, p0, Lcom/lzx/iteam/util/AllDialogUtil$20;->this$0:Lcom/lzx/iteam/util/AllDialogUtil;

    iget-object v2, p0, Lcom/lzx/iteam/util/AllDialogUtil$20;->val$ed:Landroid/widget/EditText;

    const/4 v3, 0x0

    # invokes: Lcom/lzx/iteam/util/AllDialogUtil;->setAutoShowKey(Landroid/widget/EditText;Z)V
    invoke-static {v1, v2, v3}, Lcom/lzx/iteam/util/AllDialogUtil;->access$0(Lcom/lzx/iteam/util/AllDialogUtil;Landroid/widget/EditText;Z)V

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 641
    :cond_1
    iget-object v1, p0, Lcom/lzx/iteam/util/AllDialogUtil$20;->this$0:Lcom/lzx/iteam/util/AllDialogUtil;

    iget-object v1, v1, Lcom/lzx/iteam/util/AllDialogUtil;->mContext:Landroid/app/Activity;

    const v2, 0x7f040023

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 642
    .local v0, "shake":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/lzx/iteam/util/AllDialogUtil$20;->val$ed:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
