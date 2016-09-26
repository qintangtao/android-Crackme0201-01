.class Lcom/lzx/iteam/EditMyCardActivity$8;
.super Ljava/lang/Object;
.source "EditMyCardActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/EditMyCardActivity;->showSetSexPop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/EditMyCardActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/EditMyCardActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/EditMyCardActivity$8;->this$0:Lcom/lzx/iteam/EditMyCardActivity;

    .line 674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 677
    iget-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity$8;->this$0:Lcom/lzx/iteam/EditMyCardActivity;

    # getter for: Lcom/lzx/iteam/EditMyCardActivity;->mSex:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lzx/iteam/EditMyCardActivity;->access$16(Lcom/lzx/iteam/EditMyCardActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u5973"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 678
    iget-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity$8;->this$0:Lcom/lzx/iteam/EditMyCardActivity;

    # getter for: Lcom/lzx/iteam/EditMyCardActivity;->mSex:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lzx/iteam/EditMyCardActivity;->access$16(Lcom/lzx/iteam/EditMyCardActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/EditMyCardActivity$8;->this$0:Lcom/lzx/iteam/EditMyCardActivity;

    invoke-virtual {v1}, Lcom/lzx/iteam/EditMyCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 679
    iget-object v0, p0, Lcom/lzx/iteam/EditMyCardActivity$8;->this$0:Lcom/lzx/iteam/EditMyCardActivity;

    # getter for: Lcom/lzx/iteam/EditMyCardActivity;->mSetSexPop:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/lzx/iteam/EditMyCardActivity;->access$17(Lcom/lzx/iteam/EditMyCardActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 680
    return-void
.end method
