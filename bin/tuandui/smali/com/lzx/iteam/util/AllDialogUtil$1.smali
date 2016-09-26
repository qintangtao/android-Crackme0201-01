.class Lcom/lzx/iteam/util/AllDialogUtil$1;
.super Landroid/os/Handler;
.source "AllDialogUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/util/AllDialogUtil;
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
    iput-object p1, p0, Lcom/lzx/iteam/util/AllDialogUtil$1;->this$0:Lcom/lzx/iteam/util/AllDialogUtil;

    .line 61
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 64
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 66
    :pswitch_0
    if-eqz p1, :cond_0

    .line 67
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/widget/EditText;

    .line 68
    .local v0, "editText":Landroid/widget/EditText;
    iget-object v2, p0, Lcom/lzx/iteam/util/AllDialogUtil$1;->this$0:Lcom/lzx/iteam/util/AllDialogUtil;

    iget-object v2, v2, Lcom/lzx/iteam/util/AllDialogUtil;->mContext:Landroid/app/Activity;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 69
    .local v1, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x14d
        :pswitch_0
    .end packed-switch
.end method
