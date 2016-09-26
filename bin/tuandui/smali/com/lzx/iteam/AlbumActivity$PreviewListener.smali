.class Lcom/lzx/iteam/AlbumActivity$PreviewListener;
.super Ljava/lang/Object;
.source "AlbumActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/AlbumActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/AlbumActivity;


# direct methods
.method private constructor <init>(Lcom/lzx/iteam/AlbumActivity;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/lzx/iteam/AlbumActivity$PreviewListener;->this$0:Lcom/lzx/iteam/AlbumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 77
    sget-object v0, Lcom/lzx/iteam/selectimage/Bimp;->tempSelectBitmap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/lzx/iteam/AlbumActivity$PreviewListener;->this$0:Lcom/lzx/iteam/AlbumActivity;

    # getter for: Lcom/lzx/iteam/AlbumActivity;->intent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/lzx/iteam/AlbumActivity;->access$1(Lcom/lzx/iteam/AlbumActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "position"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    iget-object v0, p0, Lcom/lzx/iteam/AlbumActivity$PreviewListener;->this$0:Lcom/lzx/iteam/AlbumActivity;

    iget-object v1, p0, Lcom/lzx/iteam/AlbumActivity$PreviewListener;->this$0:Lcom/lzx/iteam/AlbumActivity;

    # getter for: Lcom/lzx/iteam/AlbumActivity;->intent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/lzx/iteam/AlbumActivity;->access$1(Lcom/lzx/iteam/AlbumActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/AlbumActivity;->startActivity(Landroid/content/Intent;)V

    .line 82
    :cond_0
    return-void
.end method
