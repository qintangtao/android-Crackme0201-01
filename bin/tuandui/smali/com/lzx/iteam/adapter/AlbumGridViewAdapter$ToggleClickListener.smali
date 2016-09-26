.class Lcom/lzx/iteam/adapter/AlbumGridViewAdapter$ToggleClickListener;
.super Ljava/lang/Object;
.source "AlbumGridViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToggleClickListener"
.end annotation


# instance fields
.field chooseBt:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;


# direct methods
.method public constructor <init>(Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;Landroid/widget/ImageView;)V
    .locals 0
    .param p2, "choosebt"    # Landroid/widget/ImageView;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter$ToggleClickListener;->this$0:Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p2, p0, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter$ToggleClickListener;->chooseBt:Landroid/widget/ImageView;

    .line 139
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 143
    instance-of v2, p1, Landroid/widget/ToggleButton;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 144
    check-cast v1, Landroid/widget/ToggleButton;

    .line 145
    .local v1, "toggleButton":Landroid/widget/ToggleButton;
    invoke-virtual {v1}, Landroid/widget/ToggleButton;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 146
    .local v0, "position":I
    iget-object v2, p0, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter$ToggleClickListener;->this$0:Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;

    # getter for: Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;->dataList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;->access$0(Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter$ToggleClickListener;->this$0:Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;

    # getter for: Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;->mOnItemClickListener:Lcom/lzx/iteam/adapter/AlbumGridViewAdapter$OnItemClickListener;
    invoke-static {v2}, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;->access$1(Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;)Lcom/lzx/iteam/adapter/AlbumGridViewAdapter$OnItemClickListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 147
    iget-object v2, p0, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter$ToggleClickListener;->this$0:Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;

    # getter for: Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;->dataList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;->access$0(Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 148
    iget-object v2, p0, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter$ToggleClickListener;->this$0:Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;

    # getter for: Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;->mOnItemClickListener:Lcom/lzx/iteam/adapter/AlbumGridViewAdapter$OnItemClickListener;
    invoke-static {v2}, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;->access$1(Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;)Lcom/lzx/iteam/adapter/AlbumGridViewAdapter$OnItemClickListener;

    move-result-object v2

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v3

    iget-object v4, p0, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter$ToggleClickListener;->chooseBt:Landroid/widget/ImageView;

    invoke-interface {v2, v1, v0, v3, v4}, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter$OnItemClickListener;->onItemClick(Landroid/widget/ToggleButton;IZLandroid/widget/ImageView;)V

    .line 151
    .end local v0    # "position":I
    .end local v1    # "toggleButton":Landroid/widget/ToggleButton;
    :cond_0
    return-void
.end method
