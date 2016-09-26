.class Lcom/lzx/iteam/adapter/ChatMessageAdapter$4;
.super Ljava/lang/Object;
.source "ChatMessageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/adapter/ChatMessageAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

.field private final synthetic val$chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/adapter/ChatMessageAdapter;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$4;->this$0:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    iput-object p2, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$4;->val$chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 426
    const-string v1, "0"

    iget-object v2, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$4;->val$chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    invoke-virtual {v2}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getSenderID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$4;->val$chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getSenderID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 427
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$4;->this$0:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    # getter for: Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->access$7(Lcom/lzx/iteam/adapter/ChatMessageAdapter;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u5bf9\u4e0d\u8d77\uff0c\u8be5\u7528\u6237\u672a\u6ce8\u518c"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 433
    :goto_0
    return-void

    .line 429
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$4;->this$0:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    # getter for: Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->access$7(Lcom/lzx/iteam/adapter/ChatMessageAdapter;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/lzx/iteam/ContactNameCardActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 430
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "user_id"

    iget-object v2, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$4;->val$chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    invoke-virtual {v2}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getSenderID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    iget-object v1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$4;->this$0:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    # getter for: Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->access$7(Lcom/lzx/iteam/adapter/ChatMessageAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
