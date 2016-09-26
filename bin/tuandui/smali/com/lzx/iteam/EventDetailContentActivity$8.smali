.class Lcom/lzx/iteam/EventDetailContentActivity$8;
.super Ljava/lang/Object;
.source "EventDetailContentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/EventDetailContentActivity;->showCopyPop(Landroid/view/View;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/EventDetailContentActivity;

.field private final synthetic val$context:Ljava/lang/String;

.field private final synthetic val$v:Landroid/view/View;

.field private final synthetic val$window:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/EventDetailContentActivity;Ljava/lang/String;Landroid/view/View;Landroid/widget/PopupWindow;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/EventDetailContentActivity$8;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    iput-object p2, p0, Lcom/lzx/iteam/EventDetailContentActivity$8;->val$context:Ljava/lang/String;

    iput-object p3, p0, Lcom/lzx/iteam/EventDetailContentActivity$8;->val$v:Landroid/view/View;

    iput-object p4, p0, Lcom/lzx/iteam/EventDetailContentActivity$8;->val$window:Landroid/widget/PopupWindow;

    .line 836
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 839
    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity$8;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/EventDetailContentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 841
    .local v0, "clip":Landroid/text/ClipboardManager;
    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity$8;->val$context:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 842
    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity$8;->val$v:Landroid/view/View;

    const v2, 0x7f0a000a

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 843
    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity$8;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    const-string v2, "\u5df2\u590d\u5236\u5230\u7c98\u8d34\u677f"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 844
    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity$8;->val$window:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 845
    return-void
.end method
