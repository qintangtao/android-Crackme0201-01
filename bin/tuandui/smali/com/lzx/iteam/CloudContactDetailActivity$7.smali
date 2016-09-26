.class Lcom/lzx/iteam/CloudContactDetailActivity$7;
.super Ljava/lang/Object;
.source "CloudContactDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/CloudContactDetailActivity;->showPopwindow(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/CloudContactDetailActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/CloudContactDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/CloudContactDetailActivity$7;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    .line 698
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 701
    const-string v0, "0"

    iget-object v1, p0, Lcom/lzx/iteam/CloudContactDetailActivity$7;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity;->mUserId:Ljava/lang/String;
    invoke-static {v1}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$33(Lcom/lzx/iteam/CloudContactDetailActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity$7;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    const-string v1, "\u5bf9\u4e0d\u8d77\uff0c\u8be5\u7528\u6237\u672a\u6ce8\u518c,\u65e0\u6cd5\u8fdb\u884c\u4ee5\u4e0b\u64cd\u4f5c"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 706
    :goto_0
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity$7;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity;->mMoreWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$31(Lcom/lzx/iteam/CloudContactDetailActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 707
    return-void

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity$7;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    iget-object v1, p0, Lcom/lzx/iteam/CloudContactDetailActivity$7;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    iget-object v2, p0, Lcom/lzx/iteam/CloudContactDetailActivity$7;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$11(Lcom/lzx/iteam/CloudContactDetailActivity;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x2714

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    # invokes: Lcom/lzx/iteam/CloudContactDetailActivity;->getAuthAccess(Landroid/content/Context;Landroid/os/Message;)V
    invoke-static {v0, v1, v2}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$34(Lcom/lzx/iteam/CloudContactDetailActivity;Landroid/content/Context;Landroid/os/Message;)V

    goto :goto_0
.end method
