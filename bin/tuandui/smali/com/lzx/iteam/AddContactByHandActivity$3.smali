.class Lcom/lzx/iteam/AddContactByHandActivity$3;
.super Ljava/lang/Object;
.source "AddContactByHandActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/AddContactByHandActivity;->showSetSexPop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/AddContactByHandActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/AddContactByHandActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/AddContactByHandActivity$3;->this$0:Lcom/lzx/iteam/AddContactByHandActivity;

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/lzx/iteam/AddContactByHandActivity$3;->this$0:Lcom/lzx/iteam/AddContactByHandActivity;

    const-string v1, "2"

    invoke-static {v0, v1}, Lcom/lzx/iteam/AddContactByHandActivity;->access$2(Lcom/lzx/iteam/AddContactByHandActivity;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/lzx/iteam/AddContactByHandActivity$3;->this$0:Lcom/lzx/iteam/AddContactByHandActivity;

    # getter for: Lcom/lzx/iteam/AddContactByHandActivity;->mSex:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lzx/iteam/AddContactByHandActivity;->access$3(Lcom/lzx/iteam/AddContactByHandActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u5973"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v0, p0, Lcom/lzx/iteam/AddContactByHandActivity$3;->this$0:Lcom/lzx/iteam/AddContactByHandActivity;

    # getter for: Lcom/lzx/iteam/AddContactByHandActivity;->mSex:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lzx/iteam/AddContactByHandActivity;->access$3(Lcom/lzx/iteam/AddContactByHandActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/AddContactByHandActivity$3;->this$0:Lcom/lzx/iteam/AddContactByHandActivity;

    invoke-virtual {v1}, Lcom/lzx/iteam/AddContactByHandActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 290
    iget-object v0, p0, Lcom/lzx/iteam/AddContactByHandActivity$3;->this$0:Lcom/lzx/iteam/AddContactByHandActivity;

    # getter for: Lcom/lzx/iteam/AddContactByHandActivity;->mSetSexPop:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/lzx/iteam/AddContactByHandActivity;->access$4(Lcom/lzx/iteam/AddContactByHandActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 291
    return-void
.end method
