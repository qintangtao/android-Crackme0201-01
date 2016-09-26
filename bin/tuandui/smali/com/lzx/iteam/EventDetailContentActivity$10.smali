.class Lcom/lzx/iteam/EventDetailContentActivity$10;
.super Ljava/lang/Object;
.source "EventDetailContentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/EventDetailContentActivity;->showClickPop(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/EventDetailContentActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/EventDetailContentActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/EventDetailContentActivity$10;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    .line 867
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 870
    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity$10;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/EventDetailContentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 872
    .local v0, "clip":Landroid/text/ClipboardManager;
    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity$10;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mEventContent1:Ljava/lang/String;
    invoke-static {v1}, Lcom/lzx/iteam/EventDetailContentActivity;->access$59(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 873
    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity$10;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mTvContent1:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lzx/iteam/EventDetailContentActivity;->access$60(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0a000a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 874
    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity$10;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    const-string v2, "\u5df2\u590d\u5236\u5230\u7c98\u8d34\u677f"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 875
    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity$10;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mMoreWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/lzx/iteam/EventDetailContentActivity;->access$61(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 876
    return-void
.end method
