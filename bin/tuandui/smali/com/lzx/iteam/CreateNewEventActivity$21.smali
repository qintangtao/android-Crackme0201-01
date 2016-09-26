.class Lcom/lzx/iteam/CreateNewEventActivity$21;
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

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/lzx/iteam/CreateNewEventActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/CreateNewEventActivity$21;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    iput p2, p0, Lcom/lzx/iteam/CreateNewEventActivity$21;->val$position:I

    .line 1500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1503
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity$21;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    const-class v2, Lcom/lzx/iteam/ImagePagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1504
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image_origin"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1505
    const-string v1, "image_urls"

    sget-object v2, Lcom/lzx/iteam/selectimage/Bimp;->tempSelectBitmap:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1506
    const-string v1, "image_index"

    iget v2, p0, Lcom/lzx/iteam/CreateNewEventActivity$21;->val$position:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1507
    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity$21;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    invoke-virtual {v1, v0}, Lcom/lzx/iteam/CreateNewEventActivity;->startActivity(Landroid/content/Intent;)V

    .line 1508
    return-void
.end method
