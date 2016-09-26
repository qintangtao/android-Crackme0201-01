.class Lcom/lzx/iteam/AlbumActivity$CancelListener;
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
    name = "CancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/AlbumActivity;


# direct methods
.method private constructor <init>(Lcom/lzx/iteam/AlbumActivity;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/lzx/iteam/AlbumActivity$CancelListener;->this$0:Lcom/lzx/iteam/AlbumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 109
    sget-object v0, Lcom/lzx/iteam/selectimage/Bimp;->tempSelectBitmap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 112
    iget-object v0, p0, Lcom/lzx/iteam/AlbumActivity$CancelListener;->this$0:Lcom/lzx/iteam/AlbumActivity;

    invoke-virtual {v0}, Lcom/lzx/iteam/AlbumActivity;->finish()V

    .line 113
    return-void
.end method
