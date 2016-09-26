.class Lcom/lzx/iteam/BatchSendSmsActivity$1;
.super Ljava/lang/Object;
.source "BatchSendSmsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/BatchSendSmsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/BatchSendSmsActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/BatchSendSmsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/BatchSendSmsActivity$1;->this$0:Lcom/lzx/iteam/BatchSendSmsActivity;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsActivity$1;->this$0:Lcom/lzx/iteam/BatchSendSmsActivity;

    # getter for: Lcom/lzx/iteam/BatchSendSmsActivity;->cg:Lcom/lzx/iteam/widget/ChatGroupLayout;
    invoke-static {v0}, Lcom/lzx/iteam/BatchSendSmsActivity;->access$2(Lcom/lzx/iteam/BatchSendSmsActivity;)Lcom/lzx/iteam/widget/ChatGroupLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/ChatGroupLayout;->setSelect(I)V

    .line 68
    return-void
.end method
