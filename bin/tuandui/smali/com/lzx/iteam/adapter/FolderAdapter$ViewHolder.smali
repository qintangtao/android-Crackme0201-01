.class Lcom/lzx/iteam/adapter/FolderAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "FolderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/adapter/FolderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public backImage:Landroid/widget/ImageView;

.field public choose_back:Landroid/widget/ImageView;

.field public fileNum:Landroid/widget/TextView;

.field public folderName:Landroid/widget/TextView;

.field public imageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/lzx/iteam/adapter/FolderAdapter;


# direct methods
.method private constructor <init>(Lcom/lzx/iteam/adapter/FolderAdapter;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/lzx/iteam/adapter/FolderAdapter$ViewHolder;->this$0:Lcom/lzx/iteam/adapter/FolderAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lzx/iteam/adapter/FolderAdapter;Lcom/lzx/iteam/adapter/FolderAdapter$ViewHolder;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/lzx/iteam/adapter/FolderAdapter$ViewHolder;-><init>(Lcom/lzx/iteam/adapter/FolderAdapter;)V

    return-void
.end method
