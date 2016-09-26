.class Lcom/lzx/iteam/CloudContactDetailActivity$5;
.super Ljava/lang/Object;
.source "CloudContactDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/CloudContactDetailActivity;->showPopwindow(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/CloudContactDetailActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/CloudContactDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/CloudContactDetailActivity$5;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    .line 679
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 682
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "\u7535\u8bdd\uff1a"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity$5;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudPhoneNumbers:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$3(Lcom/lzx/iteam/CloudContactDetailActivity;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 683
    .local v6, "phone":Ljava/lang/String;
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity$5;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity;->mShareUtil:Lcom/lzx/iteam/util/ShareUtil;
    invoke-static {v0}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$32(Lcom/lzx/iteam/CloudContactDetailActivity;)Lcom/lzx/iteam/util/ShareUtil;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u59d3\u540d\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lzx/iteam/CloudContactDetailActivity$5;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudContactName:Ljava/lang/String;
    invoke-static {v3}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$20(Lcom/lzx/iteam/CloudContactDetailActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    move-object v3, v1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/util/ShareUtil;->shareToWx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;)V

    .line 684
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity$5;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity;->mMoreWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$31(Lcom/lzx/iteam/CloudContactDetailActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 685
    return-void
.end method
