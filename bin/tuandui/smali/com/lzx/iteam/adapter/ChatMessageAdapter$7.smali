.class Lcom/lzx/iteam/adapter/ChatMessageAdapter$7;
.super Ljava/lang/Object;
.source "ChatMessageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/adapter/ChatMessageAdapter;->showCopyPop(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

.field private final synthetic val$context:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/adapter/ChatMessageAdapter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$7;->this$0:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    iput-object p2, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$7;->val$context:Ljava/lang/String;

    .line 611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 614
    iget-object v1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$7;->this$0:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    # getter for: Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->access$7(Lcom/lzx/iteam/adapter/ChatMessageAdapter;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 616
    .local v0, "clip":Landroid/text/ClipboardManager;
    iget-object v1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$7;->val$context:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 617
    iget-object v1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$7;->this$0:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    # getter for: Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->access$7(Lcom/lzx/iteam/adapter/ChatMessageAdapter;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u5df2\u590d\u5236\u5230\u7c98\u8d34\u677f"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 618
    iget-object v1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$7;->this$0:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    # getter for: Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mCopyPop:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->access$11(Lcom/lzx/iteam/adapter/ChatMessageAdapter;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 619
    return-void
.end method
