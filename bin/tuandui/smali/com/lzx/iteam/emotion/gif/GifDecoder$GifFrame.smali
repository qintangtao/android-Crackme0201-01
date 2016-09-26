.class Lcom/lzx/iteam/emotion/gif/GifDecoder$GifFrame;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/emotion/gif/GifDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GifFrame"
.end annotation


# instance fields
.field public delay:I

.field public image:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/lzx/iteam/emotion/gif/GifDecoder;


# direct methods
.method public constructor <init>(Lcom/lzx/iteam/emotion/gif/GifDecoder;Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p2, "im"    # Landroid/graphics/Bitmap;
    .param p3, "del"    # I

    .prologue
    .line 18
    iput-object p1, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder$GifFrame;->this$0:Lcom/lzx/iteam/emotion/gif/GifDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p2, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    .line 20
    iput p3, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder$GifFrame;->delay:I

    .line 21
    return-void
.end method
