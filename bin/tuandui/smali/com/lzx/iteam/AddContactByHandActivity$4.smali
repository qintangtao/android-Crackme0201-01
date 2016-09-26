.class Lcom/lzx/iteam/AddContactByHandActivity$4;
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
    iput-object p1, p0, Lcom/lzx/iteam/AddContactByHandActivity$4;->this$0:Lcom/lzx/iteam/AddContactByHandActivity;

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 297
    iget-object v0, p0, Lcom/lzx/iteam/AddContactByHandActivity$4;->this$0:Lcom/lzx/iteam/AddContactByHandActivity;

    # getter for: Lcom/lzx/iteam/AddContactByHandActivity;->mSetSexPop:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/lzx/iteam/AddContactByHandActivity;->access$4(Lcom/lzx/iteam/AddContactByHandActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 298
    return-void
.end method
