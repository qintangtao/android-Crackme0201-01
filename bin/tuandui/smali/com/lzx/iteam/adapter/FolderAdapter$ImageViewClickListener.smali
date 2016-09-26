.class Lcom/lzx/iteam/adapter/FolderAdapter$ImageViewClickListener;
.super Ljava/lang/Object;
.source "FolderAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/adapter/FolderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageViewClickListener"
.end annotation


# instance fields
.field private choose_back:Landroid/widget/ImageView;

.field private intent:Landroid/content/Intent;

.field private position:I

.field final synthetic this$0:Lcom/lzx/iteam/adapter/FolderAdapter;


# direct methods
.method public constructor <init>(Lcom/lzx/iteam/adapter/FolderAdapter;ILandroid/content/Intent;Landroid/widget/ImageView;)V
    .locals 0
    .param p2, "position"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "choose_back"    # Landroid/widget/ImageView;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/lzx/iteam/adapter/FolderAdapter$ImageViewClickListener;->this$0:Lcom/lzx/iteam/adapter/FolderAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput p2, p0, Lcom/lzx/iteam/adapter/FolderAdapter$ImageViewClickListener;->position:I

    .line 160
    iput-object p3, p0, Lcom/lzx/iteam/adapter/FolderAdapter$ImageViewClickListener;->intent:Landroid/content/Intent;

    .line 161
    iput-object p4, p0, Lcom/lzx/iteam/adapter/FolderAdapter$ImageViewClickListener;->choose_back:Landroid/widget/ImageView;

    .line 162
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 165
    sget-object v2, Lcom/lzx/iteam/ImageFileActivity;->contentList:Ljava/util/List;

    iget v3, p0, Lcom/lzx/iteam/adapter/FolderAdapter$ImageViewClickListener;->position:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/selectimage/ImageBucket;

    iget-object v2, v2, Lcom/lzx/iteam/selectimage/ImageBucket;->imageList:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    sput-object v2, Lcom/lzx/iteam/ShowImagesActivity;->dataList:Ljava/util/ArrayList;

    .line 166
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 167
    .local v1, "intent":Landroid/content/Intent;
    sget-object v2, Lcom/lzx/iteam/ImageFileActivity;->contentList:Ljava/util/List;

    iget v3, p0, Lcom/lzx/iteam/adapter/FolderAdapter$ImageViewClickListener;->position:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/selectimage/ImageBucket;

    iget-object v0, v2, Lcom/lzx/iteam/selectimage/ImageBucket;->bucketName:Ljava/lang/String;

    .line 168
    .local v0, "folderName":Ljava/lang/String;
    const-string v2, "folderName"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    iget-object v2, p0, Lcom/lzx/iteam/adapter/FolderAdapter$ImageViewClickListener;->this$0:Lcom/lzx/iteam/adapter/FolderAdapter;

    # getter for: Lcom/lzx/iteam/adapter/FolderAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lzx/iteam/adapter/FolderAdapter;->access$0(Lcom/lzx/iteam/adapter/FolderAdapter;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/lzx/iteam/ShowImagesActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 170
    iget-object v2, p0, Lcom/lzx/iteam/adapter/FolderAdapter$ImageViewClickListener;->this$0:Lcom/lzx/iteam/adapter/FolderAdapter;

    # getter for: Lcom/lzx/iteam/adapter/FolderAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lzx/iteam/adapter/FolderAdapter;->access$0(Lcom/lzx/iteam/adapter/FolderAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 171
    iget-object v2, p0, Lcom/lzx/iteam/adapter/FolderAdapter$ImageViewClickListener;->choose_back:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 172
    return-void
.end method
