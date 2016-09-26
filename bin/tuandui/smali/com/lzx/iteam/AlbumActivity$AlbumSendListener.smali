.class Lcom/lzx/iteam/AlbumActivity$AlbumSendListener;
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
    name = "AlbumSendListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/AlbumActivity;


# direct methods
.method private constructor <init>(Lcom/lzx/iteam/AlbumActivity;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/lzx/iteam/AlbumActivity$AlbumSendListener;->this$0:Lcom/lzx/iteam/AlbumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lzx/iteam/AlbumActivity;Lcom/lzx/iteam/AlbumActivity$AlbumSendListener;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/lzx/iteam/AlbumActivity$AlbumSendListener;-><init>(Lcom/lzx/iteam/AlbumActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/lzx/iteam/AlbumActivity$AlbumSendListener;->this$0:Lcom/lzx/iteam/AlbumActivity;

    invoke-virtual {v0}, Lcom/lzx/iteam/AlbumActivity;->finish()V

    .line 93
    return-void
.end method
