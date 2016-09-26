.class Lcom/lzx/iteam/util/AllDialogUtil$8;
.super Ljava/lang/Object;
.source "AllDialogUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/util/AllDialogUtil;->titleMsgBtnClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/util/AllDialogUtil;

.field private final synthetic val$lDialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/util/AllDialogUtil;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/util/AllDialogUtil$8;->this$0:Lcom/lzx/iteam/util/AllDialogUtil;

    iput-object p2, p0, Lcom/lzx/iteam/util/AllDialogUtil$8;->val$lDialog:Landroid/app/Dialog;

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 352
    iget-object v0, p0, Lcom/lzx/iteam/util/AllDialogUtil$8;->this$0:Lcom/lzx/iteam/util/AllDialogUtil;

    iget-object v0, v0, Lcom/lzx/iteam/util/AllDialogUtil;->mListener:Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/lzx/iteam/util/AllDialogUtil$8;->this$0:Lcom/lzx/iteam/util/AllDialogUtil;

    iget-object v0, v0, Lcom/lzx/iteam/util/AllDialogUtil;->mListener:Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;

    iget-object v1, p0, Lcom/lzx/iteam/util/AllDialogUtil$8;->val$lDialog:Landroid/app/Dialog;

    invoke-interface {v0, v1}, Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;->onConfirmClick(Landroid/app/Dialog;)V

    .line 355
    :cond_0
    return-void
.end method
