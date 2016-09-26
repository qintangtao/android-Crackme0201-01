.class Lcom/lzx/iteam/adapter/EventMemberAdapter$AnimateFirstDisplayListener;
.super Lcom/nostra13/universalimageloader/core/assist/SimpleImageLoadingListener;
.source "EventMemberAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/adapter/EventMemberAdapter;
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

.field final synthetic this$0:Lcom/lzx/iteam/adapter/EventMemberAdapter;


# direct methods
.method private constructor <init>(Lcom/lzx/iteam/adapter/EventMemberAdapter;)V
    .locals 1

    .prologue
    .line 121
    iput-object p1, p0, Lcom/lzx/iteam/adapter/EventMemberAdapter$AnimateFirstDisplayListener;->this$0:Lcom/lzx/iteam/adapter/EventMemberAdapter;

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/assist/SimpleImageLoadingListener;-><init>()V

    .line 125
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/adapter/EventMemberAdapter$AnimateFirstDisplayListener;->displayedImages:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/lzx/iteam/adapter/EventMemberAdapter;Lcom/lzx/iteam/adapter/EventMemberAdapter$AnimateFirstDisplayListener;)V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/lzx/iteam/adapter/EventMemberAdapter$AnimateFirstDisplayListener;-><init>(Lcom/lzx/iteam/adapter/EventMemberAdapter;)V

    return-void
.end method


# virtual methods
.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "loadedImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 130
    if-eqz p3, :cond_0

    .line 131
    check-cast p2, Landroid/widget/ImageView;

    .line 132
    .end local p2    # "view":Landroid/view/View;
    iget-object v1, p0, Lcom/lzx/iteam/adapter/EventMemberAdapter$AnimateFirstDisplayListener;->displayedImages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 133
    .local v0, "firstDisplay":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 135
    iget-object v1, p0, Lcom/lzx/iteam/adapter/EventMemberAdapter$AnimateFirstDisplayListener;->displayedImages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    .end local v0    # "firstDisplay":Z
    :cond_0
    return-void

    .line 132
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
