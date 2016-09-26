.class Lcom/lzx/iteam/BatchSendSmsActivity$PersonsAdapter$1;
.super Ljava/lang/Object;
.source "BatchSendSmsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/BatchSendSmsActivity$PersonsAdapter;->bindView(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lzx/iteam/BatchSendSmsActivity$PersonsAdapter;

.field private final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/lzx/iteam/BatchSendSmsActivity$PersonsAdapter;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/BatchSendSmsActivity$PersonsAdapter$1;->this$1:Lcom/lzx/iteam/BatchSendSmsActivity$PersonsAdapter;

    iput p2, p0, Lcom/lzx/iteam/BatchSendSmsActivity$PersonsAdapter$1;->val$pos:I

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 216
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsActivity$PersonsAdapter$1;->this$1:Lcom/lzx/iteam/BatchSendSmsActivity$PersonsAdapter;

    # getter for: Lcom/lzx/iteam/BatchSendSmsActivity$PersonsAdapter;->this$0:Lcom/lzx/iteam/BatchSendSmsActivity;
    invoke-static {v0}, Lcom/lzx/iteam/BatchSendSmsActivity$PersonsAdapter;->access$0(Lcom/lzx/iteam/BatchSendSmsActivity$PersonsAdapter;)Lcom/lzx/iteam/BatchSendSmsActivity;

    move-result-object v0

    # getter for: Lcom/lzx/iteam/BatchSendSmsActivity;->persons:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/BatchSendSmsActivity;->access$0(Lcom/lzx/iteam/BatchSendSmsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 217
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsActivity$PersonsAdapter$1;->this$1:Lcom/lzx/iteam/BatchSendSmsActivity$PersonsAdapter;

    # getter for: Lcom/lzx/iteam/BatchSendSmsActivity$PersonsAdapter;->this$0:Lcom/lzx/iteam/BatchSendSmsActivity;
    invoke-static {v0}, Lcom/lzx/iteam/BatchSendSmsActivity$PersonsAdapter;->access$0(Lcom/lzx/iteam/BatchSendSmsActivity$PersonsAdapter;)Lcom/lzx/iteam/BatchSendSmsActivity;

    move-result-object v0

    const-string v1, "\u81f3\u5c11\u6709\u4e00\u4e2a\u8054\u7cfb\u4eba"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 222
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsActivity$PersonsAdapter$1;->this$1:Lcom/lzx/iteam/BatchSendSmsActivity$PersonsAdapter;

    # getter for: Lcom/lzx/iteam/BatchSendSmsActivity$PersonsAdapter;->this$0:Lcom/lzx/iteam/BatchSendSmsActivity;
    invoke-static {v0}, Lcom/lzx/iteam/BatchSendSmsActivity$PersonsAdapter;->access$0(Lcom/lzx/iteam/BatchSendSmsActivity$PersonsAdapter;)Lcom/lzx/iteam/BatchSendSmsActivity;

    move-result-object v0

    # getter for: Lcom/lzx/iteam/BatchSendSmsActivity;->persons:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/BatchSendSmsActivity;->access$0(Lcom/lzx/iteam/BatchSendSmsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/lzx/iteam/BatchSendSmsActivity$PersonsAdapter$1;->val$pos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 221
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsActivity$PersonsAdapter$1;->this$1:Lcom/lzx/iteam/BatchSendSmsActivity$PersonsAdapter;

    invoke-virtual {v0}, Lcom/lzx/iteam/BatchSendSmsActivity$PersonsAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
