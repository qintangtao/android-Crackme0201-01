.class Lcom/lzx/iteam/adapter/AlbumGridViewAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AlbumGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public choosetoggle:Landroid/widget/ImageView;

.field public imageView:Landroid/widget/ImageView;

.field public textView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;

.field public toggleButton:Landroid/widget/ToggleButton;


# direct methods
.method private constructor <init>(Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter$ViewHolder;->this$0:Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;Lcom/lzx/iteam/adapter/AlbumGridViewAdapter$ViewHolder;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter$ViewHolder;-><init>(Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;)V

    return-void
.end method
