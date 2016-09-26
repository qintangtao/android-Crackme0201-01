.class Lcom/lzx/iteam/AlbumActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "AlbumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/AlbumActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/AlbumActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/AlbumActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/AlbumActivity$1;->this$0:Lcom/lzx/iteam/AlbumActivity;

    .line 64
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/lzx/iteam/AlbumActivity$1;->this$0:Lcom/lzx/iteam/AlbumActivity;

    # getter for: Lcom/lzx/iteam/AlbumActivity;->gridImageAdapter:Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/AlbumActivity;->access$0(Lcom/lzx/iteam/AlbumActivity;)Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;->notifyDataSetChanged()V

    .line 71
    return-void
.end method
