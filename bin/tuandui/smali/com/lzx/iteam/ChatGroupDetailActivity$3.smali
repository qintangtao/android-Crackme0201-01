.class Lcom/lzx/iteam/ChatGroupDetailActivity$3;
.super Ljava/lang/Object;
.source "ChatGroupDetailActivity.java"

# interfaces
.implements Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/ChatGroupDetailActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ChatGroupDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$3;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 401
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 403
    return-void
.end method

.method public onConfirmClick(Landroid/app/Dialog;)V
    .locals 3
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    const/4 v2, 0x1

    .line 393
    iget-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$3;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mMsgDB:Lcom/lzx/iteam/provider/MessageDB;
    invoke-static {v0}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$25(Lcom/lzx/iteam/ChatGroupDetailActivity;)Lcom/lzx/iteam/provider/MessageDB;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$3;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mGroupID:Ljava/lang/String;
    invoke-static {v1}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$7(Lcom/lzx/iteam/ChatGroupDetailActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/provider/MessageDB;->deleteMessagesByGroudID(Ljava/lang/String;)I

    .line 394
    sput-boolean v2, Lcom/lzx/iteam/util/Constants;->IS_DELETE:Z

    .line 395
    iget-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$3;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    const-string v1, "\u804a\u5929\u8bb0\u5f55\u5df2\u6e05\u9664"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 396
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 397
    return-void
.end method
