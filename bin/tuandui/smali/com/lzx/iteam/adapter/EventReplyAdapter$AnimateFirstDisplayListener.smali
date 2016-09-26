.class Lcom/lzx/iteam/adapter/EventReplyAdapter$AnimateFirstDisplayListener;
.super Lcom/nostra13/universalimageloader/core/assist/SimpleImageLoadingListener;
.source "EventReplyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/adapter/EventReplyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimateFirstDisplayListener"
.end annotation


# instance fields
.field final displayedImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lzx/iteam/adapter/EventReplyAdapter;


# direct methods
.method private constructor <init>(Lcom/lzx/iteam/adapter/EventReplyAdapter;)V
    .locals 1

    .prologue
    .line 155
    iput-object p1, p0, Lcom/lzx/iteam/adapter/EventReplyAdapter$AnimateFirstDisplayListener;->this$0:Lcom/lzx/iteam/adapter/EventReplyAdapter;

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/assist/SimpleImageLoadingListener;-><init>()V

    .line 159
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/adapter/EventReplyAdapter$AnimateFirstDisplayListener;->displayedImages:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "loadedImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 164
    if-eqz p3, :cond_0

    move-object v1, p2

    .line 165
    check-cast v1, Landroid/widget/ImageView;

    .line 166
    .local v1, "imageView":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/lzx/iteam/adapter/EventReplyAdapter$AnimateFirstDisplayListener;->displayedImages:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .line 167
    .local v0, "firstDisplay":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 168
    const/16 v2, 0x12c

    invoke-static {v1, v2}, Lcom/nostra13/universalimageloader/core/display/FadeInBitmapDisplayer;->animate(Landroid/widget/ImageView;I)V

    .line 169
    iget-object v2, p0, Lcom/lzx/iteam/adapter/EventReplyAdapter$AnimateFirstDisplayListener;->displayedImages:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    .end local v0    # "firstDisplay":Z
    .end local v1    # "imageView":Landroid/widget/ImageView;
    :cond_0
    return-void

    .line 166
    .restart local v1    # "imageView":Landroid/widget/ImageView;
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
