.class public Lcom/lzx/iteam/emotion/gif/AnimatedGifDrawable;
.super Landroid/graphics/drawable/AnimationDrawable;
.source "AnimatedGifDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/emotion/gif/AnimatedGifDrawable$UpdateListener;
    }
.end annotation


# instance fields
.field private mCurrentIndex:I

.field private mListener:Lcom/lzx/iteam/emotion/gif/AnimatedGifDrawable$UpdateListener;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/lzx/iteam/emotion/gif/AnimatedGifDrawable$UpdateListener;)V
    .locals 7
    .param p1, "source"    # Ljava/io/InputStream;
    .param p2, "listener"    # Lcom/lzx/iteam/emotion/gif/AnimatedGifDrawable$UpdateListener;

    .prologue
    const/4 v6, 0x0

    .line 15
    invoke-direct {p0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 12
    iput v6, p0, Lcom/lzx/iteam/emotion/gif/AnimatedGifDrawable;->mCurrentIndex:I

    .line 16
    iput-object p2, p0, Lcom/lzx/iteam/emotion/gif/AnimatedGifDrawable;->mListener:Lcom/lzx/iteam/emotion/gif/AnimatedGifDrawable$UpdateListener;

    .line 17
    new-instance v1, Lcom/lzx/iteam/emotion/gif/GifDecoder;

    invoke-direct {v1}, Lcom/lzx/iteam/emotion/gif/GifDecoder;-><init>()V

    .line 18
    .local v1, "decoder":Lcom/lzx/iteam/emotion/gif/GifDecoder;
    invoke-virtual {v1, p1}, Lcom/lzx/iteam/emotion/gif/GifDecoder;->read(Ljava/io/InputStream;)I

    .line 20
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Lcom/lzx/iteam/emotion/gif/GifDecoder;->getFrameCount()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 31
    return-void

    .line 21
    :cond_0
    invoke-virtual {v1, v3}, Lcom/lzx/iteam/emotion/gif/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 22
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 24
    .local v2, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v2, v6, v6, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 25
    invoke-virtual {v1, v3}, Lcom/lzx/iteam/emotion/gif/GifDecoder;->getDelay(I)I

    move-result v4

    invoke-virtual {p0, v2, v4}, Lcom/lzx/iteam/emotion/gif/AnimatedGifDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 26
    if-nez v3, :cond_1

    .line 28
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {p0, v6, v6, v4, v5}, Lcom/lzx/iteam/emotion/gif/AnimatedGifDrawable;->setBounds(IIII)V

    .line 20
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/lzx/iteam/emotion/gif/AnimatedGifDrawable;->mCurrentIndex:I

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/emotion/gif/AnimatedGifDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getFrameDuration()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/lzx/iteam/emotion/gif/AnimatedGifDrawable;->mCurrentIndex:I

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/emotion/gif/AnimatedGifDrawable;->getDuration(I)I

    move-result v0

    return v0
.end method

.method public nextFrame()V
    .locals 2

    .prologue
    .line 37
    iget v0, p0, Lcom/lzx/iteam/emotion/gif/AnimatedGifDrawable;->mCurrentIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lcom/lzx/iteam/emotion/gif/AnimatedGifDrawable;->getNumberOfFrames()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/lzx/iteam/emotion/gif/AnimatedGifDrawable;->mCurrentIndex:I

    .line 38
    iget-object v0, p0, Lcom/lzx/iteam/emotion/gif/AnimatedGifDrawable;->mListener:Lcom/lzx/iteam/emotion/gif/AnimatedGifDrawable$UpdateListener;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/lzx/iteam/emotion/gif/AnimatedGifDrawable;->mListener:Lcom/lzx/iteam/emotion/gif/AnimatedGifDrawable$UpdateListener;

    invoke-interface {v0}, Lcom/lzx/iteam/emotion/gif/AnimatedGifDrawable$UpdateListener;->update()V

    .line 40
    :cond_0
    return-void
.end method
