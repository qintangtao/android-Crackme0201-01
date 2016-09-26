.class public Lcom/lzx/iteam/util/PhotoUtil;
.super Ljava/lang/Object;
.source "PhotoUtil.java"


# static fields
.field public static final CAMERA_WITH_DATAA:I = 0xbcf

.field public static final FOLDER_IMAGES_ORIGINAL:Ljava/lang/String; = "/Yun/Images/Original/"

.field public static final FOLDER_IMAGES_THUMBNAILS:Ljava/lang/String; = "/Yun/Images/Thumbnails/"

.field private static final ICON_SIZE:I = 0x60

.field public static final SELECT_PIC:I = 0x7d1

.field public static final SELECT_PIC_KITKAT:I = 0x7d2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bitmap2IS(Landroid/graphics/Bitmap;)Ljava/io/InputStream;
    .locals 4
    .param p0, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 417
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 418
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 419
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 420
    .local v1, "sbs":Ljava/io/InputStream;
    return-object v1
.end method

.method public static calculateInSampleSize(Landroid/app/Activity;II)I
    .locals 12
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "outWidth"    # I
    .param p2, "outHeight"    # I

    .prologue
    .line 189
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v4

    .line 190
    .local v4, "screenWidth":I
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v3

    .line 192
    .local v3, "screenHeight":I
    if-gt p1, v4, :cond_0

    int-to-double v6, p2

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    int-to-double v10, v3

    mul-double/2addr v8, v10

    cmpl-double v6, v6, v8

    if-lez v6, :cond_6

    .line 193
    :cond_0
    int-to-float v6, p2

    const/high16 v7, 0x3fc00000    # 1.5f

    int-to-float v8, v3

    mul-float/2addr v7, v8

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 194
    .local v1, "heightRatio":I
    int-to-float v6, p1

    int-to-float v7, v4

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 195
    .local v5, "widthRatio":I
    if-le v1, v5, :cond_2

    move v2, v1

    .line 196
    .local v2, "sample":I
    :goto_0
    const/4 v6, 0x3

    if-ge v2, v6, :cond_3

    .line 197
    move v0, v2

    .line 207
    .end local v1    # "heightRatio":I
    .end local v2    # "sample":I
    .end local v5    # "widthRatio":I
    .local v0, "be":I
    :goto_1
    if-gtz v0, :cond_1

    .line 208
    const/4 v0, 0x1

    .line 210
    :cond_1
    return v0

    .end local v0    # "be":I
    .restart local v1    # "heightRatio":I
    .restart local v5    # "widthRatio":I
    :cond_2
    move v2, v5

    .line 195
    goto :goto_0

    .line 198
    .restart local v2    # "sample":I
    :cond_3
    int-to-double v6, v2

    const-wide/high16 v8, 0x401a000000000000L    # 6.5

    cmpg-double v6, v6, v8

    if-gez v6, :cond_4

    .line 199
    const/4 v0, 0x4

    .restart local v0    # "be":I
    goto :goto_1

    .line 200
    .end local v0    # "be":I
    :cond_4
    const/16 v6, 0x8

    if-ge v2, v6, :cond_5

    .line 201
    const/16 v0, 0x8

    .restart local v0    # "be":I
    goto :goto_1

    .line 203
    .end local v0    # "be":I
    :cond_5
    move v0, v2

    .line 204
    .restart local v0    # "be":I
    goto :goto_1

    .line 205
    .end local v0    # "be":I
    .end local v1    # "heightRatio":I
    .end local v2    # "sample":I
    .end local v5    # "widthRatio":I
    :cond_6
    const/4 v0, 0x1

    .restart local v0    # "be":I
    goto :goto_1
.end method

.method public static compressAvatarImage(Landroid/graphics/Bitmap;)[B
    .locals 5
    .param p0, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 242
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 243
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    invoke-virtual {p0, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 244
    const/16 v1, 0x5a

    .line 245
    .local v1, "options":I
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    array-length v2, v2

    div-int/lit16 v2, v2, 0x400

    const/16 v3, 0x64

    if-gt v2, v3, :cond_1

    .line 253
    :cond_0
    const-string v2, "image_size"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 246
    :cond_1
    if-ltz v1, :cond_0

    .line 249
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 250
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v2, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 251
    add-int/lit8 v1, v1, -0xa

    goto :goto_0
.end method

.method public static compressAvatarIv(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 258
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 259
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x46

    invoke-virtual {p0, v5, v6, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 260
    const/16 v4, 0x46

    .line 261
    .local v4, "options":I
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    array-length v5, v5

    div-int/lit16 v5, v5, 0x400

    const/16 v6, 0xa

    if-gt v5, v6, :cond_1

    .line 269
    :cond_0
    const-string v5, "image_size"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    array-length v7, v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 271
    .local v2, "isBm":Ljava/io/ByteArrayInputStream;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 272
    .local v3, "newOpts":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x0

    invoke-static {v2, v5, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 273
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    return-object v1

    .line 262
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "isBm":Ljava/io/ByteArrayInputStream;
    .end local v3    # "newOpts":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    if-ltz v4, :cond_0

    .line 265
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 266
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v5, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 267
    add-int/lit8 v4, v4, -0xa

    goto :goto_0
.end method

.method public static compressImage(Landroid/app/Activity;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "screenWidth"    # I
    .param p3, "screenHight"    # I

    .prologue
    .line 278
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 279
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {p1, v10, v11, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 280
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    array-length v10, v10

    div-int/lit16 v10, v10, 0x400

    const/16 v11, 0x3e8

    if-le v10, v11, :cond_0

    .line 281
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 282
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x3c

    invoke-virtual {p1, v10, v11, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 284
    :cond_0
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 285
    .local v6, "isBm":Ljava/io/ByteArrayInputStream;
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 287
    .local v7, "newOpts":Landroid/graphics/BitmapFactory$Options;
    const/4 v10, 0x1

    iput-boolean v10, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 288
    const/4 v10, 0x0

    invoke-static {v6, v10, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 289
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    const/4 v10, 0x0

    iput-boolean v10, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 290
    iget v8, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 291
    .local v8, "w":I
    iget v4, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 292
    .local v4, "h":I
    int-to-float v5, p3

    .line 293
    .local v5, "hh":F
    int-to-float v9, p2

    .line 295
    .local v9, "ww":F
    const/4 v1, 0x1

    .line 296
    .local v1, "be":I
    if-le v8, v4, :cond_4

    int-to-float v10, v8

    cmpl-float v10, v10, v9

    if-lez v10, :cond_4

    .line 297
    iget v10, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v10, v10

    div-float/2addr v10, v9

    float-to-int v1, v10

    .line 301
    :cond_1
    :goto_0
    if-gtz v1, :cond_2

    .line 302
    const/4 v1, 0x1

    .line 303
    :cond_2
    iput v1, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 305
    new-instance v6, Ljava/io/ByteArrayInputStream;

    .end local v6    # "isBm":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 307
    .restart local v6    # "isBm":Ljava/io/ByteArrayInputStream;
    const/4 v10, 0x0

    :try_start_0
    invoke-static {v6, v10, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 318
    :goto_1
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 319
    .local v2, "bitWidth":I
    sub-int v10, p2, v2

    const/16 v11, 0x14

    if-lt v10, v11, :cond_3

    .line 320
    invoke-static {v3, p0}, Lcom/lzx/iteam/util/PhotoUtil;->zoomImgToFitScreen(Landroid/graphics/Bitmap;Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 322
    :cond_3
    return-object v3

    .line 298
    .end local v2    # "bitWidth":I
    :cond_4
    if-ge v8, v4, :cond_1

    int-to-float v10, v4

    cmpl-float v10, v10, v5

    if-lez v10, :cond_1

    .line 299
    iget v10, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v10, v10

    div-float/2addr v10, v5

    float-to-int v1, v10

    goto :goto_0

    :catch_0
    move-exception v10

    .line 310
    :try_start_1
    sget-object v10, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v10, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 311
    const/4 v10, 0x0

    invoke-static {v6, v10, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_1

    .line 313
    :catch_1
    move-exception v10

    invoke-static {}, Ljava/lang/System;->gc()V

    .line 314
    const/4 v10, 0x0

    invoke-static {v6, v10, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_1
.end method

.method public static compressImage(Landroid/graphics/Bitmap;)[B
    .locals 5
    .param p0, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 220
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 221
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    invoke-virtual {p0, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 222
    const/16 v1, 0x5a

    .line 223
    .local v1, "options":I
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    array-length v2, v2

    div-int/lit16 v2, v2, 0x400

    const/16 v3, 0x190

    if-gt v2, v3, :cond_1

    .line 231
    :cond_0
    const-string v2, "image_size"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 224
    :cond_1
    if-ltz v1, :cond_0

    .line 227
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 228
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v2, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 229
    add-int/lit8 v1, v1, -0xa

    goto :goto_0
.end method

.method public static deleteFolderFile(Ljava/lang/String;Z)V
    .locals 6
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "deleteThisPath"    # Z

    .prologue
    .line 618
    invoke-static {p0}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 620
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 621
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 622
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 623
    .local v2, "files":[Ljava/io/File;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-lt v3, v4, :cond_2

    .line 627
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "i":I
    :cond_0
    if-eqz p1, :cond_1

    .line 628
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_3

    .line 629
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 642
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    :goto_1
    return-void

    .line 624
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "files":[Ljava/io/File;
    .restart local v3    # "i":I
    :cond_2
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/lzx/iteam/util/PhotoUtil;->deleteFolderFile(Ljava/lang/String;Z)V

    .line 623
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 631
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "i":I
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v4, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 637
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 639
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static doTakePhoto(Landroid/app/Activity;)Ljava/lang/String;
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 39
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 40
    .local v3, "state":Ljava/lang/String;
    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 41
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    .local v2, "intent":Landroid/content/Intent;
    const-string v0, "image"

    .line 44
    .local v0, "fileName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/Yun/Images/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "filePath":Ljava/lang/String;
    const-string v4, "output"

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 47
    const/16 v4, 0xbcf

    invoke-virtual {p0, v2, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 51
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "filePath":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-object v1

    .line 50
    :cond_0
    const-string v4, "\u8bf7\u68c0\u67e5\u624b\u673a\u662f\u5426\u6709sd\u5361"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 51
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static doTakePhotoEvent(Landroid/app/Activity;)Ljava/lang/String;
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 60
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "state":Ljava/lang/String;
    const-string v5, "mounted"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 62
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/Yun/Images/Photo"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    .local v4, "yunDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 64
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 66
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/lzx/iteam/util/PhotoUtil;->getRandomFileName()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "fileName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/Yun/Images/Photo/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "filePath":Ljava/lang/String;
    const-string v5, "output"

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 71
    const/16 v5, 0xbcf

    invoke-virtual {p0, v2, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 75
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "filePath":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "yunDir":Ljava/io/File;
    :goto_0
    return-object v1

    .line 74
    :cond_1
    const-string v5, "\u8bf7\u68c0\u67e5\u624b\u673a\u662f\u5426\u6709sd\u5361"

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 75
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getBitmapOptions(Landroid/content/Context;[B)Landroid/graphics/BitmapFactory$Options;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "photoData"    # [B

    .prologue
    const/4 v10, 0x0

    .line 650
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 652
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 653
    const/4 v7, 0x1

    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 654
    array-length v7, p1

    invoke-static {p1, v10, v7, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 655
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 656
    .local v5, "outWidth":I
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 659
    .local v4, "outHeight":I
    invoke-static {p0}, Lcom/lzx/iteam/util/Configuration;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/Configuration;

    move-result-object v0

    .line 660
    .local v0, "config":Lcom/lzx/iteam/util/Configuration;
    invoke-virtual {v0}, Lcom/lzx/iteam/util/Configuration;->getLargePhotoWidth()I

    move-result v2

    .line 661
    .local v2, "maxWidth":I
    invoke-virtual {v0}, Lcom/lzx/iteam/util/Configuration;->getLargePhotoHeight()I

    move-result v1

    .line 663
    .local v1, "maxHeight":I
    if-gt v5, v2, :cond_0

    if-le v4, v1, :cond_1

    .line 664
    :cond_0
    const/4 v7, 0x2

    div-int v8, v5, v2

    div-int v9, v4, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 665
    .local v6, "scale":I
    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 667
    .end local v6    # "scale":I
    :cond_1
    iput-boolean v10, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 670
    .end local v0    # "config":Lcom/lzx/iteam/util/Configuration;
    .end local v1    # "maxHeight":I
    .end local v2    # "maxWidth":I
    .end local v4    # "outHeight":I
    .end local v5    # "outWidth":I
    :cond_2
    return-object v3
.end method

.method public static getExifOrientation(Ljava/lang/String;)I
    .locals 7
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    .line 361
    const/4 v0, 0x0

    .line 362
    .local v0, "degree":I
    const/4 v1, 0x0

    .line 364
    .local v1, "exif":Landroid/media/ExifInterface;
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "exif":Landroid/media/ExifInterface;
    .local v2, "exif":Landroid/media/ExifInterface;
    move-object v1, v2

    .line 368
    .end local v2    # "exif":Landroid/media/ExifInterface;
    .restart local v1    # "exif":Landroid/media/ExifInterface;
    :goto_0
    if-eqz v1, :cond_0

    .line 369
    const-string v4, "Orientation"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    .line 370
    .local v3, "orientation":I
    const-string v4, "ORIENTATION"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 372
    packed-switch v3, :pswitch_data_0

    .line 385
    .end local v3    # "orientation":I
    :cond_0
    :goto_1
    :pswitch_0
    return v0

    .line 374
    .restart local v3    # "orientation":I
    :pswitch_1
    const/16 v0, 0x5a

    .line 375
    goto :goto_1

    .line 377
    :pswitch_2
    const/16 v0, 0xb4

    .line 378
    goto :goto_1

    .line 380
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_1

    .end local v3    # "orientation":I
    :catch_0
    move-exception v4

    goto :goto_0

    .line 372
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static getFileName(Landroid/app/Activity;)Ljava/lang/String;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Yun/Images"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "saveDir":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 92
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 94
    :cond_0
    invoke-static {}, Lcom/lzx/iteam/util/PhotoUtil;->getRandomFileName()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getFilePathByContentResolver(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 590
    if-nez p1, :cond_0

    .line 608
    :goto_0
    return-object v2

    .line 593
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 594
    .local v6, "c":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 595
    .local v7, "filePath":Ljava/lang/String;
    if-nez v6, :cond_1

    .line 596
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 597
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Query on "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returns null result."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 596
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 600
    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 603
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 602
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 606
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v2, v7

    .line 608
    goto :goto_0

    .line 605
    :catchall_0
    move-exception v0

    .line 606
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 607
    throw v0
.end method

.method public static getRandomFileName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 102
    const-string v2, ""

    .line 103
    .local v2, "rel":Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmmss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 104
    .local v1, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 105
    .local v0, "curDate":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 107
    return-object v2
.end method

.method public static readBitmapFromPath(Landroid/app/Activity;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "flag"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 132
    const/4 v1, 0x0

    .line 133
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 134
    .local v2, "degree":I
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 135
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v8, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 136
    invoke-static {p1, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 137
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 138
    .local v5, "outWidth":I
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 139
    .local v4, "outHeight":I
    const/4 v7, 0x0

    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 140
    invoke-static {p0, v5, v4}, Lcom/lzx/iteam/util/PhotoUtil;->calculateInSampleSize(Landroid/app/Activity;II)I

    move-result v0

    .line 141
    .local v0, "be":I
    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 142
    iput-boolean v8, v3, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 143
    iput-boolean v8, v3, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 144
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v7, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 145
    if-eqz p2, :cond_2

    .line 147
    :try_start_0
    invoke-static {p1, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 148
    invoke-static {p1}, Lcom/lzx/iteam/util/PhotoUtil;->getExifOrientation(Ljava/lang/String;)I

    move-result v2

    .line 149
    if-eqz v2, :cond_0

    .line 150
    invoke-static {v1, v2}, Lcom/lzx/iteam/util/PhotoUtil;->rotaingImageView(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    move-object v6, v1

    .line 176
    :goto_0
    return-object v6

    .line 154
    :catch_0
    move-exception v7

    invoke-static {}, Ljava/lang/System;->gc()V

    .line 156
    add-int/lit8 v7, v0, 0x1

    :try_start_1
    iput v7, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 157
    invoke-static {p1, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 158
    invoke-static {p1}, Lcom/lzx/iteam/util/PhotoUtil;->getExifOrientation(Ljava/lang/String;)I

    move-result v2

    .line 159
    if-eqz v2, :cond_1

    .line 160
    invoke-static {v1, v2}, Lcom/lzx/iteam/util/PhotoUtil;->rotaingImageView(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v1

    :cond_1
    move-object v6, v1

    .line 162
    goto :goto_0

    .line 169
    :cond_2
    :try_start_2
    invoke-static {p1, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    goto :goto_0

    .line 171
    :catch_1
    move-exception v7

    invoke-static {}, Ljava/lang/System;->gc()V

    .line 173
    add-int/lit8 v7, v0, 0x1

    :try_start_3
    iput v7, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 174
    invoke-static {p1, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v6

    goto :goto_0

    .line 176
    :catch_2
    move-exception v7

    goto :goto_0

    .line 164
    :catch_3
    move-exception v7

    goto :goto_0
.end method

.method public static rotaingImageView(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "angle2"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 395
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 397
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 398
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v9, "angle2="

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 399
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 400
    .local v7, "options":Landroid/graphics/BitmapFactory$Options;
    iput v6, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 401
    invoke-static {p0}, Lcom/lzx/iteam/util/PhotoUtil;->bitmap2IS(Landroid/graphics/Bitmap;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 402
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 403
    .local v4, "height":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .local v3, "width":I
    move-object v0, p0

    move v2, v1

    .line 405
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 406
    .local v8, "resizedBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 407
    return-object v8
.end method

.method public static saveBitmaptoSdCard(Landroid/graphics/Bitmap;Landroid/app/Activity;Ljava/lang/String;)Ljava/io/File;
    .locals 11
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "mContext"    # Landroid/app/Activity;
    .param p2, "fileDir"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 475
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    const-string v9, "mounted"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 476
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    .line 477
    .local v6, "sdCardDir":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 478
    .local v7, "yunDir":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 479
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 481
    :cond_0
    const-string v4, "image"

    .line 483
    .local v4, "filename":Ljava/lang/String;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 484
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x5a

    invoke-virtual {p0, v8, v9, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 485
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 486
    .local v1, "buffer":[B
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 487
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 490
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 491
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 492
    .local v5, "fos":Ljava/io/FileOutputStream;
    const/4 v8, 0x0

    array-length v9, v1

    invoke-virtual {v5, v1, v8, v9}, Ljava/io/FileOutputStream;->write([BII)V

    .line 493
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 494
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 503
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buffer":[B
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "filename":Ljava/lang/String;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "sdCardDir":Ljava/io/File;
    .end local v7    # "yunDir":Ljava/io/File;
    :goto_0
    return-object v3

    .line 495
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "buffer":[B
    .restart local v3    # "f":Ljava/io/File;
    .restart local v4    # "filename":Ljava/lang/String;
    .restart local v6    # "sdCardDir":Ljava/io/File;
    .restart local v7    # "yunDir":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 496
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 497
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 498
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 502
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buffer":[B
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "filename":Ljava/lang/String;
    .end local v6    # "sdCardDir":Ljava/io/File;
    .end local v7    # "yunDir":Ljava/io/File;
    :cond_1
    const-string v8, "sd\u5361\u4e0d\u5b58\u5728"

    invoke-static {p1, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 503
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static saveBitmaptoSdCard(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/app/Activity;Ljava/lang/String;)Ljava/io/File;
    .locals 10
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "mContext"    # Landroid/app/Activity;
    .param p3, "fileDir"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 513
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v7

    const-string v8, "mounted"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 514
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    .line 515
    .local v5, "sdCardDir":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 516
    .local v6, "yunDir":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 517
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 520
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 521
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {p1, v7, v8, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 522
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 523
    .local v1, "buffer":[B
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v6, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 524
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 527
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 528
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 529
    .local v4, "fos":Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    array-length v8, v1

    invoke-virtual {v4, v1, v7, v8}, Ljava/io/FileOutputStream;->write([BII)V

    .line 530
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 531
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 540
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buffer":[B
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "sdCardDir":Ljava/io/File;
    .end local v6    # "yunDir":Ljava/io/File;
    :goto_0
    return-object v3

    .line 532
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "buffer":[B
    .restart local v3    # "f":Ljava/io/File;
    .restart local v5    # "sdCardDir":Ljava/io/File;
    .restart local v6    # "yunDir":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 533
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 534
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 535
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 539
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buffer":[B
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "f":Ljava/io/File;
    .end local v5    # "sdCardDir":Ljava/io/File;
    .end local v6    # "yunDir":Ljava/io/File;
    :cond_1
    const-string v7, "sd\u5361\u4e0d\u5b58\u5728"

    invoke-static {p2, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 540
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static saveBitmaptoSdCard(Landroid/graphics/Bitmap;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "mContext"    # Landroid/app/Activity;
    .param p2, "fileDir"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 431
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    const-string v9, "mounted"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 432
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    .line 433
    .local v6, "sdCardDir":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 434
    .local v7, "yaoYanDir":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 435
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 437
    :cond_0
    const-string v4, ""

    .line 438
    .local v4, "filename":Ljava/lang/String;
    const-string v8, "/Yun/Images/Original/"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 439
    const-string v8, "/"

    invoke-virtual {p3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {p3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    aget-object v4, v8, v9

    .line 445
    :goto_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 446
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x50

    invoke-virtual {p0, v8, v9, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 447
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 448
    .local v1, "buffer":[B
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 449
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 451
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 452
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 453
    .local v5, "fos":Ljava/io/FileOutputStream;
    const/4 v8, 0x0

    array-length v9, v1

    invoke-virtual {v5, v1, v8, v9}, Ljava/io/FileOutputStream;->write([BII)V

    .line 454
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 455
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 465
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buffer":[B
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "filename":Ljava/lang/String;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "sdCardDir":Ljava/io/File;
    .end local v7    # "yaoYanDir":Ljava/io/File;
    :cond_1
    :goto_1
    return-object v4

    .line 442
    .restart local v4    # "filename":Ljava/lang/String;
    .restart local v6    # "sdCardDir":Ljava/io/File;
    .restart local v7    # "yaoYanDir":Ljava/io/File;
    :cond_2
    const-string v4, "image"

    goto :goto_0

    .line 456
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "buffer":[B
    .restart local v3    # "f":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 457
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 458
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 459
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 464
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buffer":[B
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "filename":Ljava/lang/String;
    .end local v6    # "sdCardDir":Ljava/io/File;
    .end local v7    # "yaoYanDir":Ljava/io/File;
    :cond_3
    const-string v8, "sd\u5361\u4e0d\u5b58\u5728"

    invoke-static {p1, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 465
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static saveBitmaptoSdCard(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "fileDir"    # Ljava/lang/String;

    .prologue
    .line 551
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    const-string v9, "mounted"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 552
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    .line 553
    .local v6, "sdCardDir":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 554
    .local v7, "yunDir":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 555
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 557
    :cond_0
    invoke-static {}, Lcom/lzx/iteam/util/PhotoUtil;->getRandomFileName()Ljava/lang/String;

    move-result-object v4

    .line 559
    .local v4, "filename":Ljava/lang/String;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 560
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x5a

    invoke-virtual {p0, v8, v9, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 561
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 562
    .local v1, "buffer":[B
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 563
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 565
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 566
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 567
    .local v5, "fos":Ljava/io/FileOutputStream;
    const/4 v8, 0x0

    array-length v9, v1

    invoke-virtual {v5, v1, v8, v9}, Ljava/io/FileOutputStream;->write([BII)V

    .line 568
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 569
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 579
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buffer":[B
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "filename":Ljava/lang/String;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "sdCardDir":Ljava/io/File;
    .end local v7    # "yunDir":Ljava/io/File;
    :cond_1
    :goto_0
    return-object v4

    .line 570
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "buffer":[B
    .restart local v3    # "f":Ljava/io/File;
    .restart local v4    # "filename":Ljava/lang/String;
    .restart local v6    # "sdCardDir":Ljava/io/File;
    .restart local v7    # "yunDir":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 571
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 572
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 573
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 579
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buffer":[B
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "filename":Ljava/lang/String;
    .end local v6    # "sdCardDir":Ljava/io/File;
    .end local v7    # "yunDir":Ljava/io/File;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static selectImgFromGallery(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 115
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 119
    const/16 v1, 0x7d2

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    const/16 v1, 0x7d1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public static zoomImgToFitScreen(Landroid/graphics/Bitmap;Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .locals 14
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 334
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 335
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 336
    .local v4, "height":I
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    add-int/lit8 v13, v0, -0xa

    .line 337
    .local v13, "screenWidth":I
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    add-int/lit8 v12, v0, -0xa

    .line 338
    .local v12, "screenHeightt":I
    move v8, v13

    .line 339
    .local v8, "newWidth":I
    mul-int v0, v13, v4

    div-int v7, v0, v3

    .line 340
    .local v7, "newHeight":I
    if-le v7, v12, :cond_0

    .line 341
    move v7, v12

    .line 342
    mul-int v0, v7, v3

    div-int v8, v0, v4

    .line 345
    :cond_0
    int-to-float v0, v8

    int-to-float v2, v3

    div-float v11, v0, v2

    .line 346
    .local v11, "scaleWidth":F
    int-to-float v0, v7

    int-to-float v2, v4

    div-float v10, v0, v2

    .line 348
    .local v10, "scaleHeight":F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 349
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v11, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 351
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 352
    .local v9, "newbm":Landroid/graphics/Bitmap;
    return-object v9
.end method
