.class Lcom/lzx/iteam/SendTalkActivity$3;
.super Ljava/lang/Object;
.source "SendTalkActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/SendTalkActivity;->setImageMsg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/SendTalkActivity;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/lzx/iteam/SendTalkActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/SendTalkActivity$3;->this$0:Lcom/lzx/iteam/SendTalkActivity;

    iput p2, p0, Lcom/lzx/iteam/SendTalkActivity$3;->val$position:I

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 437
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lzx/iteam/SendTalkActivity$3;->this$0:Lcom/lzx/iteam/SendTalkActivity;

    const-class v2, Lcom/lzx/iteam/ImagePagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 438
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image_origin"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 439
    const-string v1, "image_urls"

    sget-object v2, Lcom/lzx/iteam/selectimage/Bimp;->tempSelectBitmap:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 440
    const-string v1, "image_index"

    iget v2, p0, Lcom/lzx/iteam/SendTalkActivity$3;->val$position:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 441
    iget-object v1, p0, Lcom/lzx/iteam/SendTalkActivity$3;->this$0:Lcom/lzx/iteam/SendTalkActivity;

    invoke-virtual {v1, v0}, Lcom/lzx/iteam/SendTalkActivity;->startActivity(Landroid/content/Intent;)V

    .line 442
    return-void
.end method
