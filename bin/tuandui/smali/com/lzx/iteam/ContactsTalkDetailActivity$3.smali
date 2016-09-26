.class Lcom/lzx/iteam/ContactsTalkDetailActivity$3;
.super Ljava/lang/Object;
.source "ContactsTalkDetailActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/ContactsTalkDetailActivity;->addHeaderView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ContactsTalkDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity$3;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 432
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity$3;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    const-class v2, Lcom/lzx/iteam/ImagePagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 433
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image_origin"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 434
    const-string v1, "image_urls"

    iget-object v2, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity$3;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    # getter for: Lcom/lzx/iteam/ContactsTalkDetailActivity;->mOriImages:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->access$21(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 435
    const-string v1, "image_index"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 436
    iget-object v1, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity$3;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    invoke-virtual {v1, v0}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 438
    return-void
.end method
