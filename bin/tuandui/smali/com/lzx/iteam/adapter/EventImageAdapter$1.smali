.class Lcom/lzx/iteam/adapter/EventImageAdapter$1;
.super Ljava/lang/Object;
.source "EventImageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/adapter/EventImageAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/adapter/EventImageAdapter;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/lzx/iteam/adapter/EventImageAdapter;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/adapter/EventImageAdapter$1;->this$0:Lcom/lzx/iteam/adapter/EventImageAdapter;

    iput p2, p0, Lcom/lzx/iteam/adapter/EventImageAdapter$1;->val$position:I

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 105
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lzx/iteam/adapter/EventImageAdapter$1;->this$0:Lcom/lzx/iteam/adapter/EventImageAdapter;

    # getter for: Lcom/lzx/iteam/adapter/EventImageAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lzx/iteam/adapter/EventImageAdapter;->access$0(Lcom/lzx/iteam/adapter/EventImageAdapter;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/lzx/iteam/ImagePagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image_origin"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    const-string v1, "image_urls"

    iget-object v2, p0, Lcom/lzx/iteam/adapter/EventImageAdapter$1;->this$0:Lcom/lzx/iteam/adapter/EventImageAdapter;

    # getter for: Lcom/lzx/iteam/adapter/EventImageAdapter;->mOriImages:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lzx/iteam/adapter/EventImageAdapter;->access$1(Lcom/lzx/iteam/adapter/EventImageAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 108
    const-string v1, "thume_images"

    iget-object v2, p0, Lcom/lzx/iteam/adapter/EventImageAdapter$1;->this$0:Lcom/lzx/iteam/adapter/EventImageAdapter;

    # getter for: Lcom/lzx/iteam/adapter/EventImageAdapter;->mThumeImages:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/adapter/EventImageAdapter;->access$2(Lcom/lzx/iteam/adapter/EventImageAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string v1, "image_index"

    iget v2, p0, Lcom/lzx/iteam/adapter/EventImageAdapter$1;->val$position:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    iget-object v1, p0, Lcom/lzx/iteam/adapter/EventImageAdapter$1;->this$0:Lcom/lzx/iteam/adapter/EventImageAdapter;

    # getter for: Lcom/lzx/iteam/adapter/EventImageAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lzx/iteam/adapter/EventImageAdapter;->access$0(Lcom/lzx/iteam/adapter/EventImageAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 111
    return-void
.end method
