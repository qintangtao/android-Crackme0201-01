.class Lcom/lzx/iteam/BaiduMapSearchActivity$1;
.super Ljava/lang/Object;
.source "BaiduMapSearchActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/BaiduMapSearchActivity;->initViews()V
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
.field final synthetic this$0:Lcom/lzx/iteam/BaiduMapSearchActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/BaiduMapSearchActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/BaiduMapSearchActivity$1;->this$0:Lcom/lzx/iteam/BaiduMapSearchActivity;

    .line 70
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
    .line 73
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 74
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "address"

    iget-object v1, p0, Lcom/lzx/iteam/BaiduMapSearchActivity$1;->this$0:Lcom/lzx/iteam/BaiduMapSearchActivity;

    # getter for: Lcom/lzx/iteam/BaiduMapSearchActivity;->addressDatas:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lzx/iteam/BaiduMapSearchActivity;->access$0(Lcom/lzx/iteam/BaiduMapSearchActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 75
    iget-object v1, p0, Lcom/lzx/iteam/BaiduMapSearchActivity$1;->this$0:Lcom/lzx/iteam/BaiduMapSearchActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/lzx/iteam/BaiduMapSearchActivity;->setResult(ILandroid/content/Intent;)V

    .line 76
    iget-object v1, p0, Lcom/lzx/iteam/BaiduMapSearchActivity$1;->this$0:Lcom/lzx/iteam/BaiduMapSearchActivity;

    invoke-virtual {v1}, Lcom/lzx/iteam/BaiduMapSearchActivity;->finish()V

    .line 77
    return-void
.end method
