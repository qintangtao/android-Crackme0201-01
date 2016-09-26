.class Lcom/lzx/iteam/ManageGroupActivity$4;
.super Ljava/lang/Object;
.source "ManageGroupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/ManageGroupActivity;->showSetPhotoPop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ManageGroupActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ManageGroupActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ManageGroupActivity$4;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    .line 751
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 754
    iget-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity$4;->this$0:Lcom/lzx/iteam/ManageGroupActivity;

    # getter for: Lcom/lzx/iteam/ManageGroupActivity;->mSetPhotoPop:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/lzx/iteam/ManageGroupActivity;->access$22(Lcom/lzx/iteam/ManageGroupActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 755
    return-void
.end method
