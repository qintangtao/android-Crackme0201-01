.class Lcom/lzx/iteam/CreateNewEventActivity$20;
.super Ljava/lang/Object;
.source "CreateNewEventActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/CreateNewEventActivity;->setImageMsg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/CreateNewEventActivity;

.field private final synthetic val$image:Ljava/lang/String;

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/CreateNewEventActivity;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/CreateNewEventActivity$20;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    iput-object p2, p0, Lcom/lzx/iteam/CreateNewEventActivity$20;->val$image:Ljava/lang/String;

    iput-object p3, p0, Lcom/lzx/iteam/CreateNewEventActivity$20;->val$view:Landroid/view/View;

    .line 1485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1489
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity$20;->val$image:Ljava/lang/String;

    invoke-static {v0}, Lcom/lzx/iteam/selectimage/Bimp;->deletePhoto(Ljava/lang/String;)V

    .line 1490
    sget-object v0, Lcom/lzx/iteam/selectimage/Bimp;->tempSelectBitmap:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity$20;->val$image:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1491
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity$20;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mImageHLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/lzx/iteam/CreateNewEventActivity;->access$62(Lcom/lzx/iteam/CreateNewEventActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity$20;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1493
    sget-object v0, Lcom/lzx/iteam/selectimage/Bimp;->tempSelectBitmap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 1494
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity$20;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/CreateNewEventActivity;->showImageLayout(Z)V

    .line 1498
    :goto_0
    return-void

    .line 1496
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity$20;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/CreateNewEventActivity;->showImageLayout(Z)V

    goto :goto_0
.end method
