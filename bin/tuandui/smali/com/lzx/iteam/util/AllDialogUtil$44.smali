.class Lcom/lzx/iteam/util/AllDialogUtil$44;
.super Ljava/lang/Object;
.source "AllDialogUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/util/AllDialogUtil;->setAutoShowKey(Landroid/widget/EditText;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/util/AllDialogUtil;

.field private final synthetic val$ed:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/util/AllDialogUtil;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/util/AllDialogUtil$44;->this$0:Lcom/lzx/iteam/util/AllDialogUtil;

    iput-object p2, p0, Lcom/lzx/iteam/util/AllDialogUtil$44;->val$ed:Landroid/widget/EditText;

    .line 1242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1246
    iget-object v1, p0, Lcom/lzx/iteam/util/AllDialogUtil$44;->this$0:Lcom/lzx/iteam/util/AllDialogUtil;

    iget-object v1, v1, Lcom/lzx/iteam/util/AllDialogUtil;->mContext:Landroid/app/Activity;

    .line 1247
    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1246
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1248
    .local v0, "im":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/lzx/iteam/util/AllDialogUtil$44;->val$ed:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1249
    return-void
.end method
