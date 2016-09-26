.class Lcom/lzx/iteam/util/AllDialogUtil$23;
.super Ljava/lang/Object;
.source "AllDialogUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/util/AllDialogUtil;->titleMsgBtnStyleTextClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/util/AllDialogUtil;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/util/AllDialogUtil;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/util/AllDialogUtil$23;->this$0:Lcom/lzx/iteam/util/AllDialogUtil;

    .line 694
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 697
    iget-object v0, p0, Lcom/lzx/iteam/util/AllDialogUtil$23;->this$0:Lcom/lzx/iteam/util/AllDialogUtil;

    iget-object v0, v0, Lcom/lzx/iteam/util/AllDialogUtil;->mDialogTextOnClick:Lcom/lzx/iteam/util/AllDialogUtil$DialogTextOnClick;

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/lzx/iteam/util/AllDialogUtil$23;->this$0:Lcom/lzx/iteam/util/AllDialogUtil;

    iget-object v0, v0, Lcom/lzx/iteam/util/AllDialogUtil;->mDialogTextOnClick:Lcom/lzx/iteam/util/AllDialogUtil$DialogTextOnClick;

    invoke-interface {v0}, Lcom/lzx/iteam/util/AllDialogUtil$DialogTextOnClick;->onClick()V

    .line 700
    :cond_0
    return-void
.end method
