.class public Lcom/lzx/iteam/emotion/gif/GifDecoder;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/emotion/gif/GifDecoder$GifFrame;
    }
.end annotation


# static fields
.field protected static final MaxStackSize:I = 0x1000

.field public static final STATUS_FORMAT_ERROR:I = 0x1

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_OPEN_ERROR:I = 0x2


# instance fields
.field protected act:[I

.field protected bgColor:I

.field protected bgIndex:I

.field protected block:[B

.field protected blockSize:I

.field protected delay:I

.field protected dispose:I

.field protected frameCount:I

.field protected frameindex:I

.field protected frames:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/lzx/iteam/emotion/gif/GifDecoder$GifFrame;",
            ">;"
        }
    .end annotation
.end field

.field protected gct:[I

.field protected gctFlag:Z

.field protected gctSize:I

.field protected height:I

.field protected ih:I

.field protected image:Landroid/graphics/Bitmap;

.field protected in:Ljava/io/InputStream;

.field protected interlace:Z

.field protected iw:I

.field protected ix:I

.field protected iy:I

.field protected lastBgColor:I

.field protected lastDispose:I

.field protected lastImage:Landroid/graphics/Bitmap;

.field protected lct:[I

.field protected lctFlag:Z

.field protected lctSize:I

.field protected loopCount:I

.field protected lrh:I

.field protected lrw:I

.field protected lrx:I

.field protected lry:I

.field protected pixelAspect:I

.field protected pixelStack:[B

.field protected pixels:[B

.field protected prefix:[S

.field protected status:I

.field protected suffix:[B

.field protected transIndex:I

.field protected transparency:Z

.field protected width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->loopCount:I

    .line 57
    iput v1, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->frameindex:I

    .line 70
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->block:[B

    .line 71
    iput v1, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->blockSize:I

    .line 74
    iput v1, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->dispose:I

    .line 76
    iput v1, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->lastDispose:I

    .line 77
    iput-boolean v1, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->transparency:Z

    .line 78
    iput v1, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->delay:I

    .line 10
    return-void
.end method


# virtual methods
.method protected decodeImageData()V
    .locals 25

    .prologue
    .line 255
    const/4 v2, -0x1

    .line 256
    .local v2, "NullCode":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->iw:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->ih:I

    move/from16 v24, v0

    mul-int v17, v23, v24

    .line 259
    .local v17, "npix":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->pixels:[B

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->pixels:[B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    .line 260
    :cond_0
    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/emotion/gif/GifDecoder;->pixels:[B

    .line 262
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->prefix:[S

    move-object/from16 v23, v0

    if-nez v23, :cond_2

    .line 263
    const/16 v23, 0x1000

    move/from16 v0, v23

    new-array v0, v0, [S

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/emotion/gif/GifDecoder;->prefix:[S

    .line 265
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->suffix:[B

    move-object/from16 v23, v0

    if-nez v23, :cond_3

    .line 266
    const/16 v23, 0x1000

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/emotion/gif/GifDecoder;->suffix:[B

    .line 268
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    if-nez v23, :cond_4

    .line 269
    const/16 v23, 0x1001

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/emotion/gif/GifDecoder;->pixelStack:[B

    .line 272
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/emotion/gif/GifDecoder;->read()I

    move-result v11

    .line 273
    .local v11, "data_size":I
    const/16 v23, 0x1

    shl-int v6, v23, v11

    .line 274
    .local v6, "clear":I
    add-int/lit8 v13, v6, 0x1

    .line 275
    .local v13, "end_of_information":I
    add-int/lit8 v3, v6, 0x2

    .line 276
    .local v3, "available":I
    move/from16 v18, v2

    .line 277
    .local v18, "old_code":I
    add-int/lit8 v9, v11, 0x1

    .line 278
    .local v9, "code_size":I
    const/16 v23, 0x1

    shl-int v23, v23, v9

    add-int/lit8 v8, v23, -0x1

    .line 279
    .local v8, "code_mask":I
    const/4 v7, 0x0

    .local v7, "code":I
    :goto_0
    if-lt v7, v6, :cond_6

    .line 285
    const/4 v4, 0x0

    .local v4, "bi":I
    move/from16 v19, v4

    .local v19, "pi":I
    move/from16 v21, v4

    .local v21, "top":I
    move v14, v4

    .local v14, "first":I
    move v10, v4

    .local v10, "count":I
    move v5, v4

    .local v5, "bits":I
    move v12, v4

    .line 286
    .local v12, "datum":I
    const/4 v15, 0x0

    .local v15, "i":I
    move/from16 v20, v19

    .end local v19    # "pi":I
    .local v20, "pi":I
    move/from16 v22, v21

    .end local v21    # "top":I
    .local v22, "top":I
    :goto_1
    move/from16 v0, v17

    if-lt v15, v0, :cond_7

    :cond_5
    move/from16 v21, v22

    .line 358
    .end local v22    # "top":I
    .restart local v21    # "top":I
    :goto_2
    move/from16 v15, v20

    :goto_3
    move/from16 v0, v17

    if-lt v15, v0, :cond_12

    .line 361
    return-void

    .line 280
    .end local v4    # "bi":I
    .end local v5    # "bits":I
    .end local v10    # "count":I
    .end local v12    # "datum":I
    .end local v14    # "first":I
    .end local v15    # "i":I
    .end local v20    # "pi":I
    .end local v21    # "top":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->prefix:[S

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-short v24, v23, v7

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->suffix:[B

    move-object/from16 v23, v0

    int-to-byte v0, v7

    move/from16 v24, v0

    aput-byte v24, v23, v7

    .line 279
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 287
    .restart local v4    # "bi":I
    .restart local v5    # "bits":I
    .restart local v10    # "count":I
    .restart local v12    # "datum":I
    .restart local v14    # "first":I
    .restart local v15    # "i":I
    .restart local v20    # "pi":I
    .restart local v22    # "top":I
    :cond_7
    if-nez v22, :cond_13

    .line 288
    if-ge v5, v9, :cond_a

    .line 290
    if-nez v10, :cond_9

    .line 292
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/emotion/gif/GifDecoder;->readBlock()I

    move-result v10

    .line 293
    if-gtz v10, :cond_8

    move/from16 v21, v22

    .line 294
    .end local v22    # "top":I
    .restart local v21    # "top":I
    goto :goto_2

    .line 296
    .end local v21    # "top":I
    .restart local v22    # "top":I
    :cond_8
    const/4 v4, 0x0

    .line 298
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->block:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v4

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    shl-int v23, v23, v5

    add-int v12, v12, v23

    .line 299
    add-int/lit8 v5, v5, 0x8

    .line 300
    add-int/lit8 v4, v4, 0x1

    .line 301
    add-int/lit8 v10, v10, -0x1

    .line 302
    goto :goto_1

    .line 305
    :cond_a
    and-int v7, v12, v8

    .line 306
    shr-int/2addr v12, v9

    .line 307
    sub-int/2addr v5, v9

    .line 310
    if-gt v7, v3, :cond_5

    if-ne v7, v13, :cond_b

    move/from16 v21, v22

    .line 311
    .end local v22    # "top":I
    .restart local v21    # "top":I
    goto :goto_2

    .line 313
    .end local v21    # "top":I
    .restart local v22    # "top":I
    :cond_b
    if-ne v7, v6, :cond_c

    .line 315
    add-int/lit8 v9, v11, 0x1

    .line 316
    const/16 v23, 0x1

    shl-int v23, v23, v9

    add-int/lit8 v8, v23, -0x1

    .line 317
    add-int/lit8 v3, v6, 0x2

    .line 318
    move/from16 v18, v2

    .line 319
    goto :goto_1

    .line 321
    :cond_c
    move/from16 v0, v18

    if-ne v0, v2, :cond_d

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "top":I
    .restart local v21    # "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->suffix:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v7

    aput-byte v24, v23, v22

    .line 323
    move/from16 v18, v7

    .line 324
    move v14, v7

    move/from16 v22, v21

    .line 325
    .end local v21    # "top":I
    .restart local v22    # "top":I
    goto/16 :goto_1

    .line 327
    :cond_d
    move/from16 v16, v7

    .line 328
    .local v16, "in_code":I
    if-ne v7, v3, :cond_e

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "top":I
    .restart local v21    # "top":I
    int-to-byte v0, v14

    move/from16 v24, v0

    aput-byte v24, v23, v22

    .line 330
    move/from16 v7, v18

    move/from16 v22, v21

    .line 332
    .end local v21    # "top":I
    .restart local v22    # "top":I
    :cond_e
    :goto_4
    if-gt v7, v6, :cond_f

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->suffix:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v7

    move/from16 v0, v23

    and-int/lit16 v14, v0, 0xff

    .line 338
    const/16 v23, 0x1000

    move/from16 v0, v23

    if-lt v3, v0, :cond_10

    move/from16 v21, v22

    .line 339
    .end local v22    # "top":I
    .restart local v21    # "top":I
    goto/16 :goto_2

    .line 333
    .end local v21    # "top":I
    .restart local v22    # "top":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "top":I
    .restart local v21    # "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->suffix:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v7

    aput-byte v24, v23, v22

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->prefix:[S

    move-object/from16 v23, v0

    aget-short v7, v23, v7

    move/from16 v22, v21

    .end local v21    # "top":I
    .restart local v22    # "top":I
    goto :goto_4

    .line 341
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "top":I
    .restart local v21    # "top":I
    int-to-byte v0, v14

    move/from16 v24, v0

    aput-byte v24, v23, v22

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->prefix:[S

    move-object/from16 v23, v0

    move/from16 v0, v18

    int-to-short v0, v0

    move/from16 v24, v0

    aput-short v24, v23, v3

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->suffix:[B

    move-object/from16 v23, v0

    int-to-byte v0, v14

    move/from16 v24, v0

    aput-byte v24, v23, v3

    .line 344
    add-int/lit8 v3, v3, 0x1

    .line 345
    and-int v23, v3, v8

    if-nez v23, :cond_11

    .line 346
    const/16 v23, 0x1000

    move/from16 v0, v23

    if-ge v3, v0, :cond_11

    .line 347
    add-int/lit8 v9, v9, 0x1

    .line 348
    add-int/2addr v8, v3

    .line 350
    :cond_11
    move/from16 v18, v16

    .line 354
    .end local v16    # "in_code":I
    :goto_5
    add-int/lit8 v21, v21, -0x1

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->pixels:[B

    move-object/from16 v23, v0

    add-int/lit8 v19, v20, 0x1

    .end local v20    # "pi":I
    .restart local v19    # "pi":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->pixelStack:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v21

    aput-byte v24, v23, v20

    .line 356
    add-int/lit8 v15, v15, 0x1

    move/from16 v20, v19

    .end local v19    # "pi":I
    .restart local v20    # "pi":I
    move/from16 v22, v21

    .end local v21    # "top":I
    .restart local v22    # "top":I
    goto/16 :goto_1

    .line 359
    .end local v22    # "top":I
    .restart local v21    # "top":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->pixels:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-byte v24, v23, v15

    .line 358
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    .end local v21    # "top":I
    .restart local v22    # "top":I
    :cond_13
    move/from16 v21, v22

    .end local v22    # "top":I
    .restart local v21    # "top":I
    goto :goto_5
.end method

.method protected err()Z
    .locals 1

    .prologue
    .line 364
    iget v0, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->status:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDelay(I)I
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 110
    const/4 v0, -0x1

    iput v0, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->delay:I

    .line 111
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->frameCount:I

    if-ge p1, v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/emotion/gif/GifDecoder$GifFrame;

    iget v0, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder$GifFrame;->delay:I

    iput v0, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->delay:I

    .line 114
    :cond_0
    iget v0, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->delay:I

    return v0
.end method

.method public getFrame(I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, "im":Landroid/graphics/Bitmap;
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->frameCount:I

    if-ge p1, v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/emotion/gif/GifDecoder$GifFrame;

    iget-object v0, v1, Lcom/lzx/iteam/emotion/gif/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    .line 215
    :cond_0
    return-object v0
.end method

.method public getFrameCount()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->frameCount:I

    return v0
.end method

.method public getFrameindex()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->frameindex:I

    return v0
.end method

.method public getHeigh()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->height:I

    return v0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/emotion/gif/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getLoopCount()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->loopCount:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->width:I

    return v0
.end method

.method public init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 369
    iput v0, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->status:I

    .line 370
    iput v0, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->frameCount:I

    .line 371
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->frames:Ljava/util/Vector;

    .line 372
    iput-object v1, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->gct:[I

    .line 373
    iput-object v1, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->lct:[I

    .line 374
    return-void
.end method

.method public nextBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 219
    iget v0, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->frameindex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->frameindex:I

    .line 220
    iget v0, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->frameindex:I

    iget-object v1, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    .line 221
    const/4 v0, 0x0

    iput v0, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->frameindex:I

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->frames:Ljava/util/Vector;

    iget v1, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->frameindex:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/emotion/gif/GifDecoder$GifFrame;

    iget-object v0, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public nextDelay()I
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->frames:Ljava/util/Vector;

    iget v1, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->frameindex:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/emotion/gif/GifDecoder$GifFrame;

    iget v0, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder$GifFrame;->delay:I

    return v0
.end method

.method protected read()I
    .locals 2

    .prologue
    .line 377
    const/4 v0, 0x0

    .line 379
    .local v0, "curByte":I
    :try_start_0
    iget-object v1, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 383
    :goto_0
    return v0

    .line 381
    :catch_0
    move-exception v1

    const/4 v1, 0x1

    iput v1, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->status:I

    goto :goto_0
.end method

.method public read(Ljava/io/InputStream;)I
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/lzx/iteam/emotion/gif/GifDecoder;->init()V

    .line 233
    if-eqz p1, :cond_1

    .line 234
    iput-object p1, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->in:Ljava/io/InputStream;

    .line 236
    invoke-virtual {p0}, Lcom/lzx/iteam/emotion/gif/GifDecoder;->readHeader()V

    .line 237
    invoke-virtual {p0}, Lcom/lzx/iteam/emotion/gif/GifDecoder;->err()Z

    move-result v1

    if-nez v1, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/lzx/iteam/emotion/gif/GifDecoder;->readContents()V

    .line 239
    iget v1, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->frameCount:I

    if-gez v1, :cond_0

    .line 240
    const/4 v1, 0x1

    iput v1, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->status:I

    .line 247
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_1
    iget v1, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->status:I

    return v1

    .line 244
    :cond_1
    const/4 v1, 0x2

    iput v1, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->status:I

    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected readBlock()I
    .locals 6

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/lzx/iteam/emotion/gif/GifDecoder;->read()I

    move-result v3

    iput v3, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->blockSize:I

    .line 388
    const/4 v2, 0x0

    .line 389
    .local v2, "n":I
    iget v3, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->blockSize:I

    if-lez v3, :cond_1

    .line 391
    const/4 v0, 0x0

    .line 392
    .local v0, "count":I
    :goto_0
    :try_start_0
    iget v3, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->blockSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v2, v3, :cond_2

    .line 402
    :cond_0
    :goto_1
    iget v3, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->blockSize:I

    if-ge v2, v3, :cond_1

    .line 403
    const/4 v3, 0x1

    iput v3, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->status:I

    .line 406
    .end local v0    # "count":I
    :cond_1
    return v2

    .line 393
    .restart local v0    # "count":I
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->in:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->block:[B

    iget v5, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->blockSize:I

    sub-int/2addr v5, v2

    invoke-virtual {v3, v4, v2, v5}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 394
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 397
    add-int/2addr v2, v0

    goto :goto_0

    .line 399
    :catch_0
    move-exception v1

    .line 400
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected readColorTable(I)[I
    .locals 14
    .param p1, "ncolors"    # I

    .prologue
    .line 411
    mul-int/lit8 v9, p1, 0x3

    .line 412
    .local v9, "nbytes":I
    const/4 v11, 0x0

    .line 413
    .local v11, "tab":[I
    new-array v1, v9, [B

    .line 414
    .local v1, "c":[B
    const/4 v8, 0x0

    .line 416
    .local v8, "n":I
    :try_start_0
    iget-object v12, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->in:Ljava/io/InputStream;

    invoke-virtual {v12, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 420
    :goto_0
    if-ge v8, v9, :cond_1

    .line 421
    const/4 v12, 0x1

    iput v12, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->status:I

    .line 433
    :cond_0
    return-object v11

    .line 417
    :catch_0
    move-exception v2

    .line 418
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 423
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    const/16 v12, 0x100

    new-array v11, v12, [I

    .line 424
    const/4 v4, 0x0

    .line 425
    .local v4, "i":I
    const/4 v6, 0x0

    .local v6, "j":I
    move v7, v6

    .end local v6    # "j":I
    .local v7, "j":I
    move v5, v4

    .line 426
    .end local v4    # "i":I
    .local v5, "i":I
    :goto_1
    if-ge v5, p1, :cond_0

    .line 427
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "j":I
    .restart local v6    # "j":I
    aget-byte v12, v1, v7

    and-int/lit16 v10, v12, 0xff

    .line 428
    .local v10, "r":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "j":I
    .restart local v7    # "j":I
    aget-byte v12, v1, v6

    and-int/lit16 v3, v12, 0xff

    .line 429
    .local v3, "g":I
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "j":I
    .restart local v6    # "j":I
    aget-byte v12, v1, v7

    and-int/lit16 v0, v12, 0xff

    .line 430
    .local v0, "b":I
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    const/high16 v12, -0x1000000

    shl-int/lit8 v13, v10, 0x10

    or-int/2addr v12, v13

    shl-int/lit8 v13, v3, 0x8

    or-int/2addr v12, v13

    or-int/2addr v12, v0

    aput v12, v11, v5

    move v7, v6

    .end local v6    # "j":I
    .restart local v7    # "j":I
    move v5, v4

    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_1
.end method

.method protected readContents()V
    .locals 6

    .prologue
    .line 439
    const/4 v2, 0x0

    .line 440
    .local v2, "done":Z
    :goto_0
    :sswitch_0
    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/lzx/iteam/emotion/gif/GifDecoder;->err()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 480
    :cond_0
    return-void

    .line 441
    :cond_1
    invoke-virtual {p0}, Lcom/lzx/iteam/emotion/gif/GifDecoder;->read()I

    move-result v1

    .line 442
    .local v1, "code":I
    sparse-switch v1, :sswitch_data_0

    .line 477
    const/4 v4, 0x1

    iput v4, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->status:I

    goto :goto_0

    .line 444
    :sswitch_1
    invoke-virtual {p0}, Lcom/lzx/iteam/emotion/gif/GifDecoder;->readImage()V

    goto :goto_0

    .line 447
    :sswitch_2
    invoke-virtual {p0}, Lcom/lzx/iteam/emotion/gif/GifDecoder;->read()I

    move-result v1

    .line 448
    sparse-switch v1, :sswitch_data_1

    .line 466
    invoke-virtual {p0}, Lcom/lzx/iteam/emotion/gif/GifDecoder;->skip()V

    goto :goto_0

    .line 450
    :sswitch_3
    invoke-virtual {p0}, Lcom/lzx/iteam/emotion/gif/GifDecoder;->readGraphicControlExt()V

    goto :goto_0

    .line 454
    :sswitch_4
    invoke-virtual {p0}, Lcom/lzx/iteam/emotion/gif/GifDecoder;->readBlock()I

    .line 455
    const-string v0, ""

    .line 456
    .local v0, "app":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/16 v4, 0xb

    if-lt v3, v4, :cond_2

    .line 459
    const-string v4, "NETSCAPE2.0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 460
    invoke-virtual {p0}, Lcom/lzx/iteam/emotion/gif/GifDecoder;->readNetscapeExt()V

    goto :goto_0

    .line 457
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->block:[B

    aget-byte v5, v5, v3

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 456
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 462
    :cond_3
    invoke-virtual {p0}, Lcom/lzx/iteam/emotion/gif/GifDecoder;->skip()V

    goto :goto_0

    .line 471
    .end local v0    # "app":Ljava/lang/String;
    .end local v3    # "i":I
    :sswitch_5
    const/4 v2, 0x1

    .line 472
    goto :goto_0

    .line 442
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x21 -> :sswitch_2
        0x2c -> :sswitch_1
        0x3b -> :sswitch_5
    .end sparse-switch

    .line 448
    :sswitch_data_1
    .sparse-switch
        0xf9 -> :sswitch_3
        0xff -> :sswitch_4
    .end sparse-switch
.end method

.method protected readGraphicControlExt()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 483
    invoke-virtual {p0}, Lcom/lzx/iteam/emotion/gif/GifDecoder;->read()I

    .line 484
    invoke-virtual {p0}, Lcom/lzx/iteam/emotion/gif/GifDecoder;->read()I

    move-result v0

    .line 485
    .local v0, "packed":I
    and-int/lit8 v2, v0, 0x1c

    shr-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->dispose:I

    .line 486
    iget v2, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->dispose:I

    if-nez v2, :cond_0

    .line 487
    iput v1, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->dispose:I

    .line 489
    :cond_0
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->transparency:Z

    .line 490
    invoke-virtual {p0}, Lcom/lzx/iteam/emotion/gif/GifDecoder;->readShort()I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->delay:I

    .line 491
    invoke-virtual {p0}, Lcom/lzx/iteam/emotion/gif/GifDecoder;->read()I

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->transIndex:I

    .line 492
    invoke-virtual {p0}, Lcom/lzx/iteam/emotion/gif/GifDecoder;->read()I

    .line 493
    return-void

    .line 489
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected readHeader()V
    .locals 4

    .prologue
    .line 497
    const-string v1, ""

    .line 498
    .local v1, "id":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x6

    if-lt v0, v2, :cond_1

    .line 501
    const-string v2, "GIF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 502
    const/4 v2, 0x1

    iput v2, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->status:I

    .line 510
    :cond_0
    :goto_1
    return-void

    .line 499
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lzx/iteam/emotion/gif/GifDecoder;->read()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 498
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 505
    :cond_2
    invoke-virtual {p0}, Lcom/lzx/iteam/emotion/gif/GifDecoder;->readLSD()V

    .line 506
    iget-boolean v2, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->gctFlag:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/lzx/iteam/emotion/gif/GifDecoder;->err()Z

    move-result v2

    if-nez v2, :cond_0

    .line 507
    iget v2, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->gctSize:I

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/emotion/gif/GifDecoder;->readColorTable(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->gct:[I

    .line 508
    iget-object v2, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->gct:[I

    iget v3, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->bgIndex:I

    aget v2, v2, v3

    iput v2, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->bgColor:I

    goto :goto_1
.end method

.method protected readImage()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 514
    invoke-virtual {p0}, Lcom/lzx/iteam/emotion/gif/GifDecoder;->readShort()I

    move-result v2

    iput v2, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->ix:I

    .line 516
    invoke-virtual {p0}, Lcom/lzx/iteam/emotion/gif/GifDecoder;->readShort()I

    move-result v2

    iput v2, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->iy:I

    .line 518
    invoke-virtual {p0}, Lcom/lzx/iteam/emotion/gif/GifDecoder;->readShort()I

    move-result v2

    iput v2, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->iw:I

    .line 520
    invoke-virtual {p0}, Lcom/lzx/iteam/emotion/gif/GifDecoder;->readShort()I

    move-result v2

    iput v2, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->ih:I

    .line 523
    invoke-virtual {p0}, Lcom/lzx/iteam/emotion/gif/GifDecoder;->read()I

    move-result v0

    .line 524
    .local v0, "packed":I
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_4

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->lctFlag:Z

    .line 528
    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_5

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->interlace:Z

    .line 531
    const/4 v2, 0x2

    and-int/lit8 v5, v0, 0x7

    shl-int/2addr v2, v5

    iput v2, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->lctSize:I

    .line 532
    iget-boolean v2, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->lctFlag:Z

    if-eqz v2, :cond_6

    .line 533
    iget v2, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->lctSize:I

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/emotion/gif/GifDecoder;->readColorTable(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->lct:[I

    .line 534
    iget-object v2, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->lct:[I

    iput-object v2, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->act:[I

    .line 541
    :cond_0
    :goto_2
    const/4 v1, 0x0

    .line 542
    .local v1, "save":I
    iget-boolean v2, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->transparency:Z

    if-eqz v2, :cond_1

    .line 543
    iget-object v2, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->act:[I

    iget v5, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->transIndex:I

    aget v1, v2, v5

    .line 544
    iget-object v2, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->act:[I

    iget v5, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->transIndex:I

    aput v4, v2, v5

    .line 546
    :cond_1
    iget-object v2, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->act:[I

    if-nez v2, :cond_2

    .line 547
    iput v3, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->status:I

    .line 549
    :cond_2
    invoke-virtual {p0}, Lcom/lzx/iteam/emotion/gif/GifDecoder;->err()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 568
    :cond_3
    :goto_3
    return-void

    .end local v1    # "save":I
    :cond_4
    move v2, v4

    .line 524
    goto :goto_0

    :cond_5
    move v2, v4

    .line 528
    goto :goto_1

    .line 536
    :cond_6
    iget-object v2, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->gct:[I

    iput-object v2, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->act:[I

    .line 537
    iget v2, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->bgIndex:I

    iget v5, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->transIndex:I

    if-ne v2, v5, :cond_0

    .line 538
    iput v4, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->bgColor:I

    goto :goto_2

    .line 552
    .restart local v1    # "save":I
    :cond_7
    invoke-virtual {p0}, Lcom/lzx/iteam/emotion/gif/GifDecoder;->decodeImageData()V

    .line 553
    invoke-virtual {p0}, Lcom/lzx/iteam/emotion/gif/GifDecoder;->skip()V

    .line 554
    invoke-virtual {p0}, Lcom/lzx/iteam/emotion/gif/GifDecoder;->err()Z

    move-result v2

    if-nez v2, :cond_3

    .line 557
    iget v2, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->frameCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->frameCount:I

    .line 559
    iget v2, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->width:I

    iget v3, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->height:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->image:Landroid/graphics/Bitmap;

    .line 561
    invoke-virtual {p0}, Lcom/lzx/iteam/emotion/gif/GifDecoder;->setPixels()V

    .line 562
    iget-object v2, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->frames:Ljava/util/Vector;

    new-instance v3, Lcom/lzx/iteam/emotion/gif/GifDecoder$GifFrame;

    iget-object v4, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->image:Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->delay:I

    invoke-direct {v3, p0, v4, v5}, Lcom/lzx/iteam/emotion/gif/GifDecoder$GifFrame;-><init>(Lcom/lzx/iteam/emotion/gif/GifDecoder;Landroid/graphics/Bitmap;I)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 564
    iget-boolean v2, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->transparency:Z

    if-eqz v2, :cond_8

    .line 565
    iget-object v2, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->act:[I

    iget v3, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->transIndex:I

    aput v1, v2, v3

    .line 567
    :cond_8
    invoke-virtual {p0}, Lcom/lzx/iteam/emotion/gif/GifDecoder;->resetFrame()V

    goto :goto_3
.end method

.method protected readLSD()V
    .locals 3

    .prologue
    .line 573
    invoke-virtual {p0}, Lcom/lzx/iteam/emotion/gif/GifDecoder;->readShort()I

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->width:I

    .line 574
    invoke-virtual {p0}, Lcom/lzx/iteam/emotion/gif/GifDecoder;->readShort()I

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->height:I

    .line 576
    invoke-virtual {p0}, Lcom/lzx/iteam/emotion/gif/GifDecoder;->read()I

    move-result v0

    .line 577
    .local v0, "packed":I
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->gctFlag:Z

    .line 580
    const/4 v1, 0x2

    and-int/lit8 v2, v0, 0x7

    shl-int/2addr v1, v2

    iput v1, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->gctSize:I

    .line 581
    invoke-virtual {p0}, Lcom/lzx/iteam/emotion/gif/GifDecoder;->read()I

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->bgIndex:I

    .line 582
    invoke-virtual {p0}, Lcom/lzx/iteam/emotion/gif/GifDecoder;->read()I

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->pixelAspect:I

    .line 583
    return-void

    .line 577
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected readNetscapeExt()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 587
    :cond_0
    invoke-virtual {p0}, Lcom/lzx/iteam/emotion/gif/GifDecoder;->readBlock()I

    .line 588
    iget-object v2, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->block:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    if-ne v2, v4, :cond_1

    .line 590
    iget-object v2, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->block:[B

    aget-byte v2, v2, v4

    and-int/lit16 v0, v2, 0xff

    .line 591
    .local v0, "b1":I
    iget-object v2, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->block:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v1, v2, 0xff

    .line 592
    .local v1, "b2":I
    shl-int/lit8 v2, v1, 0x8

    or-int/2addr v2, v0

    iput v2, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->loopCount:I

    .line 594
    .end local v0    # "b1":I
    .end local v1    # "b2":I
    :cond_1
    iget v2, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->blockSize:I

    if-lez v2, :cond_2

    invoke-virtual {p0}, Lcom/lzx/iteam/emotion/gif/GifDecoder;->err()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 595
    :cond_2
    return-void
.end method

.method protected readShort()I
    .locals 2

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/lzx/iteam/emotion/gif/GifDecoder;->read()I

    move-result v0

    invoke-virtual {p0}, Lcom/lzx/iteam/emotion/gif/GifDecoder;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method protected resetFrame()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 604
    iget v0, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->dispose:I

    iput v0, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->lastDispose:I

    .line 605
    iget v0, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->ix:I

    iput v0, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->lrx:I

    .line 606
    iget v0, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->iy:I

    iput v0, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->lry:I

    .line 607
    iget v0, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->iw:I

    iput v0, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->lrw:I

    .line 608
    iget v0, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->ih:I

    iput v0, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->lrh:I

    .line 609
    iget-object v0, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->image:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->lastImage:Landroid/graphics/Bitmap;

    .line 610
    iget v0, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->bgColor:I

    iput v0, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->lastBgColor:I

    .line 611
    iput v1, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->dispose:I

    .line 612
    iput-boolean v1, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->transparency:Z

    .line 613
    iput v1, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->delay:I

    .line 614
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->lct:[I

    .line 615
    return-void
.end method

.method public setFrameindex(I)V
    .locals 1
    .param p1, "frameindex"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->frameindex:I

    .line 65
    iget-object v0, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    .line 66
    const/4 p1, 0x0

    .line 68
    :cond_0
    return-void
.end method

.method protected setPixels()V
    .locals 25

    .prologue
    .line 130
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->width:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->height:I

    mul-int/2addr v2, v4

    new-array v3, v2, [I

    .line 132
    .local v3, "dest":[I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->lastDispose:I

    if-lez v2, :cond_2

    .line 133
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->lastDispose:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 135
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->frameCount:I

    add-int/lit8 v19, v2, -0x2

    .line 136
    .local v19, "n":I
    if-lez v19, :cond_3

    .line 137
    add-int/lit8 v2, v19, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/emotion/gif/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->lastImage:Landroid/graphics/Bitmap;

    .line 142
    .end local v19    # "n":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->lastImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->lastImage:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->width:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->width:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->height:I

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 145
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->lastDispose:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    .line 147
    const/4 v10, 0x0

    .line 148
    .local v10, "c":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->transparency:Z

    if-nez v2, :cond_1

    .line 149
    move-object/from16 v0, p0

    iget v10, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->lastBgColor:I

    .line 151
    :cond_1
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->lrh:I

    if-lt v13, v2, :cond_4

    .line 163
    .end local v10    # "c":I
    .end local v13    # "i":I
    :cond_2
    const/16 v22, 0x1

    .line 164
    .local v22, "pass":I
    const/16 v15, 0x8

    .line 165
    .local v15, "inc":I
    const/4 v14, 0x0

    .line 166
    .local v14, "iline":I
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->ih:I

    if-lt v13, v2, :cond_6

    .line 207
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->width:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->height:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->image:Landroid/graphics/Bitmap;

    .line 208
    return-void

    .line 139
    .end local v13    # "i":I
    .end local v14    # "iline":I
    .end local v15    # "inc":I
    .end local v22    # "pass":I
    .restart local v19    # "n":I
    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->lastImage:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 152
    .end local v19    # "n":I
    .restart local v10    # "c":I
    .restart local v13    # "i":I
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->lry:I

    add-int/2addr v2, v13

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->width:I

    mul-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->lrx:I

    add-int v20, v2, v4

    .line 153
    .local v20, "n1":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->lrw:I

    add-int v21, v20, v2

    .line 154
    .local v21, "n2":I
    move/from16 v17, v20

    .local v17, "k":I
    :goto_3
    move/from16 v0, v17

    move/from16 v1, v21

    if-lt v0, v1, :cond_5

    .line 151
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 155
    :cond_5
    aput v10, v3, v17

    .line 154
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 167
    .end local v10    # "c":I
    .end local v17    # "k":I
    .end local v20    # "n1":I
    .end local v21    # "n2":I
    .restart local v14    # "iline":I
    .restart local v15    # "inc":I
    .restart local v22    # "pass":I
    :cond_6
    move/from16 v18, v13

    .line 168
    .local v18, "line":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->interlace:Z

    if-eqz v2, :cond_8

    .line 169
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->ih:I

    if-lt v14, v2, :cond_7

    .line 170
    add-int/lit8 v22, v22, 0x1

    .line 171
    packed-switch v22, :pswitch_data_0

    .line 184
    :cond_7
    :goto_4
    move/from16 v18, v14

    .line 185
    add-int/2addr v14, v15

    .line 187
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->iy:I

    add-int v18, v18, v2

    .line 188
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->height:I

    move/from16 v0, v18

    if-ge v0, v2, :cond_a

    .line 189
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->width:I

    mul-int v17, v18, v2

    .line 190
    .restart local v17    # "k":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->ix:I

    add-int v12, v17, v2

    .line 191
    .local v12, "dx":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->iw:I

    add-int v11, v12, v2

    .line 192
    .local v11, "dlim":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->width:I

    add-int v2, v2, v17

    if-ge v2, v11, :cond_9

    .line 193
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->width:I

    add-int v11, v17, v2

    .line 195
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->iw:I

    mul-int v23, v13, v2

    .local v23, "sx":I
    move/from16 v24, v23

    .line 196
    .end local v23    # "sx":I
    .local v24, "sx":I
    :goto_5
    if-lt v12, v11, :cond_b

    .line 166
    .end local v11    # "dlim":I
    .end local v12    # "dx":I
    .end local v17    # "k":I
    .end local v24    # "sx":I
    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 173
    :pswitch_0
    const/4 v14, 0x4

    .line 174
    goto :goto_4

    .line 176
    :pswitch_1
    const/4 v14, 0x2

    .line 177
    const/4 v15, 0x4

    .line 178
    goto :goto_4

    .line 180
    :pswitch_2
    const/4 v14, 0x1

    .line 181
    const/4 v15, 0x2

    goto :goto_4

    .line 198
    .restart local v11    # "dlim":I
    .restart local v12    # "dx":I
    .restart local v17    # "k":I
    .restart local v24    # "sx":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->pixels:[B

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "sx":I
    .restart local v23    # "sx":I
    aget-byte v2, v2, v24

    and-int/lit16 v0, v2, 0xff

    move/from16 v16, v0

    .line 199
    .local v16, "index":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->act:[I

    aget v10, v2, v16

    .line 200
    .restart local v10    # "c":I
    if-eqz v10, :cond_c

    .line 201
    aput v10, v3, v12

    .line 203
    :cond_c
    add-int/lit8 v12, v12, 0x1

    move/from16 v24, v23

    .end local v23    # "sx":I
    .restart local v24    # "sx":I
    goto :goto_5

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected skip()V
    .locals 1

    .prologue
    .line 622
    :cond_0
    invoke-virtual {p0}, Lcom/lzx/iteam/emotion/gif/GifDecoder;->readBlock()I

    .line 623
    iget v0, p0, Lcom/lzx/iteam/emotion/gif/GifDecoder;->blockSize:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/lzx/iteam/emotion/gif/GifDecoder;->err()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    :cond_1
    return-void
.end method
