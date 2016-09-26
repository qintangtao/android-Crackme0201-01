.class public final Lcom/lzx/iteam/dimensioncode/encode/QRCodeEncoder;
.super Ljava/lang/Object;
.source "QRCodeEncoder.java"


# static fields
.field private static final BLACK:I = -0x1000000

.field private static final TAG:Ljava/lang/String; = "QRCodeEncoder"

.field private static final WHITE:I = -0x1


# instance fields
.field private final activity:Landroid/app/Activity;

.field private contents:Ljava/lang/String;

.field private final dimension:I

.field private displayContents:Ljava/lang/String;

.field private format:Lcom/google/zxing/BarcodeFormat;

.field private final useVCard:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Intent;IZ)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "dimension"    # I
    .param p4, "useVCard"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/lzx/iteam/dimensioncode/encode/QRCodeEncoder;->activity:Landroid/app/Activity;

    .line 56
    iput p3, p0, Lcom/lzx/iteam/dimensioncode/encode/QRCodeEncoder;->dimension:I

    .line 57
    iput-boolean p4, p0, Lcom/lzx/iteam/dimensioncode/encode/QRCodeEncoder;->useVCard:Z

    .line 58
    invoke-direct {p0, p2}, Lcom/lzx/iteam/dimensioncode/encode/QRCodeEncoder;->encodeContentsFromZXingIntent(Landroid/content/Intent;)Z

    .line 59
    return-void
.end method

.method private drawQRCode([[ZII)Landroid/graphics/Bitmap;
    .locals 15
    .param p1, "bRect"    # [[Z
    .param p2, "colorFill"    # I
    .param p3, "backColor"    # I

    .prologue
    .line 236
    const/16 v4, 0xa

    .line 237
    .local v4, "intPadding":I
    move-object/from16 v0, p1

    array-length v12, v0

    mul-int/lit8 v12, v12, 0x3

    add-int/lit8 v12, v12, 0x19

    move-object/from16 v0, p1

    array-length v13, v0

    mul-int/lit8 v13, v13, 0x3

    add-int/lit8 v13, v13, 0x19

    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v13, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 238
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 240
    .local v7, "mCanvas01":Landroid/graphics/Canvas;
    move/from16 v0, p3

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 242
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 244
    .local v8, "mPaint01":Landroid/graphics/Paint;
    sget-object v12, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 245
    move/from16 v0, p2

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 246
    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v8, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 247
    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Landroid/graphics/Paint;->setDither(Z)V

    .line 248
    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 249
    const/4 v6, 0x0

    .line 250
    .local v6, "left":I
    const/4 v11, 0x0

    .line 251
    .local v11, "top":I
    const/4 v10, 0x0

    .line 252
    .local v10, "right":I
    const/4 v2, 0x0

    .line 253
    .local v2, "bottom":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v12, v0

    if-lt v3, v12, :cond_0

    .line 266
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v7, v1, v12, v13, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 267
    return-object v1

    .line 254
    :cond_0
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    move-object/from16 v0, p1

    array-length v12, v0

    if-lt v5, v12, :cond_1

    .line 253
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 255
    :cond_1
    aget-object v12, p1, v5

    aget-boolean v12, v12, v3

    if-eqz v12, :cond_2

    .line 256
    mul-int/lit8 v12, v5, 0x3

    add-int/2addr v12, v4

    add-int/lit8 v6, v12, 0x2

    .line 257
    mul-int/lit8 v12, v3, 0x3

    add-int/2addr v12, v4

    add-int/lit8 v11, v12, 0x2

    .line 258
    mul-int/lit8 v12, v5, 0x3

    add-int/2addr v12, v4

    add-int/lit8 v12, v12, 0x2

    add-int/lit8 v10, v12, 0x3

    .line 259
    mul-int/lit8 v12, v3, 0x3

    add-int/2addr v12, v4

    add-int/lit8 v12, v12, 0x2

    add-int/lit8 v2, v12, 0x3

    .line 260
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v6, v11, v10, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 261
    .local v9, "rect":Landroid/graphics/Rect;
    invoke-virtual {v7, v9, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 254
    .end local v9    # "rect":Landroid/graphics/Rect;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method private encodeContentsFromZXingIntent(Landroid/content/Intent;)Z
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 77
    const-string v4, "ENCODE_FORMAT"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "formatString":Ljava/lang/String;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/lzx/iteam/dimensioncode/encode/QRCodeEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    .line 79
    if-eqz v1, :cond_0

    .line 81
    :try_start_0
    invoke-static {v1}, Lcom/google/zxing/BarcodeFormat;->valueOf(Ljava/lang/String;)Lcom/google/zxing/BarcodeFormat;

    move-result-object v4

    iput-object v4, p0, Lcom/lzx/iteam/dimensioncode/encode/QRCodeEncoder;->format:Lcom/google/zxing/BarcodeFormat;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/lzx/iteam/dimensioncode/encode/QRCodeEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/lzx/iteam/dimensioncode/encode/QRCodeEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    sget-object v5, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    if-ne v4, v5, :cond_5

    .line 87
    :cond_1
    const-string v4, "ENCODE_TYPE"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "type":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 100
    .end local v2    # "type":Ljava/lang/String;
    :cond_2
    :goto_1
    return v3

    .line 91
    .restart local v2    # "type":Ljava/lang/String;
    :cond_3
    sget-object v4, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    iput-object v4, p0, Lcom/lzx/iteam/dimensioncode/encode/QRCodeEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    .line 92
    invoke-direct {p0, p1, v2}, Lcom/lzx/iteam/dimensioncode/encode/QRCodeEncoder;->encodeQRCodeContents(Landroid/content/Intent;Ljava/lang/String;)V

    .line 100
    .end local v2    # "type":Ljava/lang/String;
    :cond_4
    :goto_2
    iget-object v4, p0, Lcom/lzx/iteam/dimensioncode/encode/QRCodeEncoder;->contents:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/lzx/iteam/dimensioncode/encode/QRCodeEncoder;->contents:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    .line 94
    :cond_5
    const-string v4, "ENCODE_DATA"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 96
    iput-object v0, p0, Lcom/lzx/iteam/dimensioncode/encode/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 97
    iput-object v0, p0, Lcom/lzx/iteam/dimensioncode/encode/QRCodeEncoder;->displayContents:Ljava/lang/String;

    goto :goto_2

    .end local v0    # "data":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private encodeQRCodeContents(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 105
    const-string v1, "TEXT_TYPE"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    const-string v1, "ENCODE_DATA"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 107
    .local v10, "data":Ljava/lang/String;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 108
    iput-object v10, p0, Lcom/lzx/iteam/dimensioncode/encode/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 109
    iput-object v10, p0, Lcom/lzx/iteam/dimensioncode/encode/QRCodeEncoder;->displayContents:Ljava/lang/String;

    .line 169
    .end local v10    # "data":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    const-string v1, "EMAIL_TYPE"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    const-string v1, "ENCODE_DATA"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lzx/iteam/dimensioncode/encode/ContactEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 113
    .restart local v10    # "data":Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "mailto:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/dimensioncode/encode/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 115
    iput-object v10, p0, Lcom/lzx/iteam/dimensioncode/encode/QRCodeEncoder;->displayContents:Ljava/lang/String;

    goto :goto_0

    .line 117
    .end local v10    # "data":Ljava/lang/String;
    :cond_2
    const-string v1, "CONTACT_TYPE"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    const-string v1, "ENCODE_DATA"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 120
    .local v9, "bundle":Landroid/os/Bundle;
    if-eqz v9, :cond_0

    .line 136
    const-string v1, "name"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 137
    .local v12, "name":Ljava/lang/String;
    const-string v1, "company"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "organization":Ljava/lang/String;
    const-string v1, "address"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 140
    .local v8, "address":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    sget-object v1, Lcom/lzx/iteam/dimensioncode/Contents;->PHONE_KEYS:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 141
    .local v4, "phones":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v1, "phone"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance v5, Ljava/util/ArrayList;

    sget-object v1, Lcom/lzx/iteam/dimensioncode/Contents;->EMAIL_KEYS:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 145
    .local v5, "emails":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v1, "email"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 148
    const-string v1, "job"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 149
    .local v6, "url":Ljava/lang/String;
    const-string v7, ""

    .line 152
    .local v7, "note":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/lzx/iteam/dimensioncode/encode/QRCodeEncoder;->useVCard:Z

    if-eqz v1, :cond_3

    new-instance v0, Lcom/lzx/iteam/dimensioncode/encode/VCardContactEncoder;

    invoke-direct {v0}, Lcom/lzx/iteam/dimensioncode/encode/VCardContactEncoder;-><init>()V

    .line 153
    .local v0, "mecardEncoder":Lcom/lzx/iteam/dimensioncode/encode/ContactEncoder;
    :goto_1
    invoke-static {v12}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 155
    invoke-static {v8}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    .line 153
    invoke-virtual/range {v0 .. v7}, Lcom/lzx/iteam/dimensioncode/encode/ContactEncoder;->encode(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 161
    .local v11, "encoded":[Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v1, v11, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 162
    const/4 v1, 0x0

    aget-object v1, v11, v1

    iput-object v1, p0, Lcom/lzx/iteam/dimensioncode/encode/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 163
    const/4 v1, 0x1

    aget-object v1, v11, v1

    iput-object v1, p0, Lcom/lzx/iteam/dimensioncode/encode/QRCodeEncoder;->displayContents:Ljava/lang/String;

    goto/16 :goto_0

    .line 152
    .end local v0    # "mecardEncoder":Lcom/lzx/iteam/dimensioncode/encode/ContactEncoder;
    .end local v11    # "encoded":[Ljava/lang/String;
    :cond_3
    new-instance v0, Lcom/lzx/iteam/dimensioncode/encode/MECARDContactEncoder;

    invoke-direct {v0}, Lcom/lzx/iteam/dimensioncode/encode/MECARDContactEncoder;-><init>()V

    goto :goto_1
.end method

.method private static guessAppropriateEncoding(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3
    .param p0, "contents"    # Ljava/lang/CharSequence;

    .prologue
    .line 287
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 292
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 288
    :cond_0
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0xff

    if-le v1, v2, :cond_1

    .line 289
    const-string v1, "UTF-8"

    goto :goto_1

    .line 287
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static toIterable([Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 1
    .param p0, "values"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private transformMap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 272
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 273
    .local v3, "orwidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 274
    .local v4, "orheight":I
    int-to-float v0, p2

    int-to-float v2, v3

    div-float v9, v0, v2

    .line 275
    .local v9, "scaleWidth":F
    int-to-float v0, p3

    int-to-float v2, v4

    div-float v8, v0, v2

    .line 276
    .local v8, "scaleHeight":F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 277
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 279
    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    .line 278
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 280
    .local v7, "resizedBitmap":Landroid/graphics/Bitmap;
    return-object v7
.end method


# virtual methods
.method public androidQREncode(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "strEncoding"    # Ljava/lang/String;
    .param p2, "frontColor"    # I
    .param p3, "backColor"    # I

    .prologue
    .line 216
    const/4 v1, 0x0

    .line 218
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v4, Lcom/swetake/util/Qrcode;

    invoke-direct {v4}, Lcom/swetake/util/Qrcode;-><init>()V

    .line 220
    .local v4, "testQrcode":Lcom/swetake/util/Qrcode;
    const/16 v5, 0x4c

    invoke-virtual {v4, v5}, Lcom/swetake/util/Qrcode;->setQrcodeErrorCorrect(C)V

    .line 221
    const/16 v5, 0x42

    invoke-virtual {v4, v5}, Lcom/swetake/util/Qrcode;->setQrcodeEncodeMode(C)V

    .line 222
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/swetake/util/Qrcode;->setQrcodeVersion(I)V

    .line 224
    const-string v5, "utf-8"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 225
    .local v2, "bytesEncoding":[B
    invoke-virtual {v4, v2}, Lcom/swetake/util/Qrcode;->calQrcode([B)[[Z

    move-result-object v0

    .line 226
    .local v0, "bEncoding":[[Z
    invoke-direct {p0, v0, p2, p3}, Lcom/lzx/iteam/dimensioncode/encode/QRCodeEncoder;->drawQRCode([[ZII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 227
    iget v5, p0, Lcom/lzx/iteam/dimensioncode/encode/QRCodeEncoder;->dimension:I

    iget v6, p0, Lcom/lzx/iteam/dimensioncode/encode/QRCodeEncoder;->dimension:I

    invoke-direct {p0, v1, v5, v6}, Lcom/lzx/iteam/dimensioncode/encode/QRCodeEncoder;->transformMap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 231
    .end local v0    # "bEncoding":[[Z
    .end local v2    # "bytesEncoding":[B
    .end local v4    # "testQrcode":Lcom/swetake/util/Qrcode;
    :goto_0
    return-object v1

    .line 228
    :catch_0
    move-exception v3

    .line 229
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public encodeAsBitmap(II)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "frontColor"    # I
    .param p2, "backColor"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/encode/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 177
    .local v0, "contentsToEncode":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 178
    const/4 v1, 0x0

    .line 210
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/lzx/iteam/dimensioncode/encode/QRCodeEncoder;->androidQREncode(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public getContents()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/encode/QRCodeEncoder;->contents:Ljava/lang/String;

    return-object v0
.end method

.method getDisplayContents()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/encode/QRCodeEncoder;->displayContents:Ljava/lang/String;

    return-object v0
.end method

.method isUseVCard()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/lzx/iteam/dimensioncode/encode/QRCodeEncoder;->useVCard:Z

    return v0
.end method
