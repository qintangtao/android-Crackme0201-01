.class Lcom/lzx/iteam/adapter/QrGroupAdapter$AnimateFirstDisplayListener;
.super Lcom/nostra13/universalimageloader/core/assist/SimpleImageLoadingListener;
.source "QrGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/adapter/QrGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimateFirstDisplayListener"
.end annotation


# static fields
.field static final displayedImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 61
    sput-object v0, Lcom/lzx/iteam/adapter/QrGroupAdapter$AnimateFirstDisplayListener;->displayedImages:Ljava/util/List;

    .line 62
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/assist/SimpleImageLoadingListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lzx/iteam/adapter/QrGroupAdapter$AnimateFirstDisplayListener;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/lzx/iteam/adapter/QrGroupAdapter$AnimateFirstDisplayListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "loadedImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 67
    if-eqz p3, :cond_0

    .line 68
    check-cast p2, Landroid/widget/ImageView;

    .line 69
    .end local p2    # "view":Landroid/view/View;
    sget-object v1, Lcom/lzx/iteam/adapter/QrGroupAdapter$AnimateFirstDisplayListener;->displayedImages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 70
    .local v0, "firstDisplay":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 72
    sget-object v1, Lcom/lzx/iteam/adapter/QrGroupAdapter$AnimateFirstDisplayListener;->displayedImages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    .end local v0    # "firstDisplay":Z
    :cond_0
    return-void

    .line 69
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
