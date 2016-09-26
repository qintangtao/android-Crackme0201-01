.class public Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;
.super Ljava/lang/Object;
.source "QRCodeDataBlockReader.java"


# static fields
.field static final MODE_8BIT_BYTE:I = 0x4

.field static final MODE_KANJI:I = 0x8

.field static final MODE_NUMBER:I = 0x1

.field static final MODE_ROMAN_AND_NUMBER:I = 0x2


# instance fields
.field bitPointer:I

.field blockPointer:I

.field blocks:[I

.field canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

.field dataLength:I

.field dataLengthMode:I

.field numErrorCorrectionCode:I

.field final sizeOfDataLengthInfo:[[I


# direct methods
.method public constructor <init>([III)V
    .locals 6
    .param p1, "blocks"    # [I
    .param p2, "version"    # I
    .param p3, "numErrorCorrectionCode"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x3

    new-array v0, v0, [[I

    .line 28
    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v2

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v5

    iput-object v0, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->sizeOfDataLengthInfo:[[I

    .line 32
    iput v2, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->blockPointer:I

    .line 33
    const/4 v0, 0x7

    iput v0, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->bitPointer:I

    .line 34
    iput v2, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->dataLength:I

    .line 35
    iput-object p1, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->blocks:[I

    .line 36
    iput p3, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->numErrorCorrectionCode:I

    .line 37
    const/16 v0, 0x9

    if-gt p2, v0, :cond_1

    iput v2, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->dataLengthMode:I

    .line 40
    :cond_0
    :goto_0
    invoke-static {}, Ljp/sourceforge/qrcode/QRCodeDecoder;->getCanvas()Ljp/sourceforge/qrcode/util/DebugCanvas;

    move-result-object v0

    iput-object v0, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    .line 41
    return-void

    .line 38
    :cond_1
    const/16 v0, 0xa

    if-lt p2, v0, :cond_2

    const/16 v0, 0x1a

    if-gt p2, v0, :cond_2

    iput v4, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->dataLengthMode:I

    goto :goto_0

    .line 39
    :cond_2
    const/16 v0, 0x1b

    if-lt p2, v0, :cond_0

    const/16 v0, 0x28

    if-gt p2, v0, :cond_0

    iput v5, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->dataLengthMode:I

    goto :goto_0

    .line 28
    nop

    :array_0
    .array-data 4
        0xa
        0x9
        0x8
        0x8
    .end array-data

    :array_1
    .array-data 4
        0xc
        0xb
        0x10
        0xa
    .end array-data

    :array_2
    .array-data 4
        0xe
        0xd
        0x10
        0xc
    .end array-data
.end method


# virtual methods
.method public get8bitByteArray(I)[B
    .locals 4
    .param p1, "dataLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 329
    move v1, p1

    .line 330
    .local v1, "length":I
    const/4 v0, 0x0

    .line 331
    .local v0, "intData":I
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 334
    .local v2, "output":Ljava/io/ByteArrayOutputStream;
    :cond_0
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->getNextBits(I)I

    move-result v0

    .line 335
    int-to-byte v3, v0

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 336
    add-int/lit8 v1, v1, -0x1

    .line 337
    if-gtz v1, :cond_0

    .line 338
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method get8bitByteString(I)Ljava/lang/String;
    .locals 5
    .param p1, "dataLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 342
    move v1, p1

    .line 343
    .local v1, "length":I
    const/4 v0, 0x0

    .line 344
    .local v0, "intData":I
    const-string v2, ""

    .line 346
    .local v2, "strData":Ljava/lang/String;
    :cond_0
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->getNextBits(I)I

    move-result v0

    .line 347
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 348
    add-int/lit8 v1, v1, -0x1

    .line 349
    if-gtz v1, :cond_0

    .line 350
    return-object v2
.end method

.method public getDataByte()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/sourceforge/qrcode/exception/InvalidDataBlockException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 164
    iget-object v3, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    const-string v4, "Reading data blocks."

    invoke-interface {v3, v4}, Ljp/sourceforge/qrcode/util/DebugCanvas;->println(Ljava/lang/String;)V

    .line 165
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 169
    .local v2, "output":Ljava/io/ByteArrayOutputStream;
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->getNextMode()I

    move-result v1

    .line 171
    .local v1, "mode":I
    if-nez v1, :cond_1

    .line 172
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-lez v3, :cond_0

    .line 219
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 175
    :cond_0
    :try_start_1
    new-instance v3, Ljp/sourceforge/qrcode/exception/InvalidDataBlockException;

    const-string v4, "Empty data block"

    invoke-direct {v3, v4}, Ljp/sourceforge/qrcode/exception/InvalidDataBlockException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 213
    .end local v1    # "mode":I
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v3, Ljp/sourceforge/qrcode/exception/InvalidDataBlockException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Data Block Error in (block:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->blockPointer:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bit:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->bitPointer:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljp/sourceforge/qrcode/exception/InvalidDataBlockException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 180
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v1    # "mode":I
    :cond_1
    if-eq v1, v5, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    .line 181
    const/4 v3, 0x4

    if-eq v1, v3, :cond_2

    const/16 v3, 0x8

    if-eq v1, v3, :cond_2

    .line 185
    :try_start_2
    new-instance v3, Ljp/sourceforge/qrcode/exception/InvalidDataBlockException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid mode: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in (block:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->blockPointer:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bit:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->bitPointer:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljp/sourceforge/qrcode/exception/InvalidDataBlockException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 216
    .end local v1    # "mode":I
    :catch_1
    move-exception v0

    .line 217
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljp/sourceforge/qrcode/exception/InvalidDataBlockException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljp/sourceforge/qrcode/exception/InvalidDataBlockException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 187
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "mode":I
    :cond_2
    :try_start_3
    invoke-virtual {p0, v1}, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->getDataLength(I)I

    move-result v3

    iput v3, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->dataLength:I

    .line 188
    iget v3, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->dataLength:I

    if-ge v3, v5, :cond_3

    .line 189
    new-instance v3, Ljp/sourceforge/qrcode/exception/InvalidDataBlockException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid data length: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->dataLength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljp/sourceforge/qrcode/exception/InvalidDataBlockException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 191
    :cond_3
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 194
    :pswitch_1
    iget v3, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->dataLength:I

    invoke-virtual {p0, v3}, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->getFigureString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto/16 :goto_0

    .line 198
    :pswitch_2
    iget v3, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->dataLength:I

    invoke-virtual {p0, v3}, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->getRomanAndFigureString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto/16 :goto_0

    .line 202
    :pswitch_3
    iget v3, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->dataLength:I

    invoke-virtual {p0, v3}, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->get8bitByteArray(I)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto/16 :goto_0

    .line 206
    :pswitch_4
    iget v3, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->dataLength:I

    invoke-virtual {p0, v3}, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->getKanjiString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 191
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method getDataLength(I)I
    .locals 3
    .param p1, "modeIndicator"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 153
    const/4 v0, 0x0

    .line 155
    .local v0, "index":I
    :goto_0
    shr-int v1, p1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 160
    iget-object v1, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->sizeOfDataLengthInfo:[[I

    iget v2, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->dataLengthMode:I

    aget-object v1, v1, v2

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->getNextBits(I)I

    move-result v1

    return v1

    .line 157
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 154
    goto :goto_0
.end method

.method public getDataString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 223
    iget-object v2, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    const-string v3, "Reading data blocks..."

    invoke-interface {v2, v3}, Ljp/sourceforge/qrcode/util/DebugCanvas;->println(Ljava/lang/String;)V

    .line 224
    const-string v0, ""

    .line 226
    .local v0, "dataString":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->getNextMode()I

    move-result v1

    .line 227
    .local v1, "mode":I
    iget-object v2, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mode: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljp/sourceforge/qrcode/util/DebugCanvas;->println(Ljava/lang/String;)V

    .line 228
    if-nez v1, :cond_0

    .line 264
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 265
    return-object v0

    .line 233
    :cond_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 234
    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 240
    :cond_1
    invoke-virtual {p0, v1}, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->getDataLength(I)I

    move-result v2

    iput v2, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->dataLength:I

    .line 241
    iget-object v2, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    iget-object v3, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->blocks:[I

    iget v4, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->blockPointer:I

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljp/sourceforge/qrcode/util/DebugCanvas;->println(Ljava/lang/String;)V

    .line 242
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "length: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->dataLength:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 243
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 246
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->dataLength:I

    invoke-virtual {p0, v3}, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->getFigureString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    goto :goto_0

    .line 250
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->dataLength:I

    invoke-virtual {p0, v3}, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->getRomanAndFigureString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    goto/16 :goto_0

    .line 254
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->dataLength:I

    invoke-virtual {p0, v3}, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->get8bitByteString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    goto/16 :goto_0

    .line 258
    :pswitch_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->dataLength:I

    invoke-virtual {p0, v3}, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->getKanjiString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 243
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method getFigureString(I)Ljava/lang/String;
    .locals 6
    .param p1, "dataLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xa

    .line 270
    move v1, p1

    .line 271
    .local v1, "length":I
    const/4 v0, 0x0

    .line 272
    .local v0, "intData":I
    const-string v2, ""

    .line 274
    .local v2, "strData":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x3

    if-lt v1, v3, :cond_4

    .line 275
    invoke-virtual {p0, v5}, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->getNextBits(I)I

    move-result v0

    .line 276
    const/16 v3, 0x64

    if-ge v0, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 277
    :cond_1
    if-ge v0, v5, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 278
    :cond_2
    add-int/lit8 v1, v1, -0x3

    .line 289
    :cond_3
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 290
    if-gtz v1, :cond_0

    .line 292
    return-object v2

    .line 280
    :cond_4
    const/4 v3, 0x2

    if-ne v1, v3, :cond_6

    .line 281
    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->getNextBits(I)I

    move-result v0

    .line 282
    if-ge v0, v5, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 283
    :cond_5
    add-int/lit8 v1, v1, -0x2

    goto :goto_0

    .line 285
    :cond_6
    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 286
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->getNextBits(I)I

    move-result v0

    .line 287
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method getKanjiString(I)Ljava/lang/String;
    .locals 13
    .param p1, "dataLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    const v12, 0x8140

    .line 354
    move v3, p1

    .line 355
    .local v3, "length":I
    const/4 v2, 0x0

    .line 356
    .local v2, "intData":I
    const-string v8, ""

    .line 358
    .local v8, "unicodeString":Ljava/lang/String;
    :cond_0
    const/16 v9, 0xd

    invoke-virtual {p0, v9}, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->getNextBits(I)I

    move-result v2

    .line 359
    rem-int/lit16 v4, v2, 0xc0

    .line 360
    .local v4, "lowerByte":I
    div-int/lit16 v1, v2, 0xc0

    .line 362
    .local v1, "higherByte":I
    shl-int/lit8 v9, v1, 0x8

    add-int v7, v9, v4

    .line 363
    .local v7, "tempWord":I
    const/4 v5, 0x0

    .line 364
    .local v5, "shiftjisWord":I
    add-int v9, v7, v12

    const v10, 0x9ffc

    if-gt v9, v10, :cond_1

    .line 365
    add-int v5, v7, v12

    .line 371
    :goto_0
    const/4 v9, 0x2

    new-array v6, v9, [B

    .line 372
    .local v6, "tempByte":[B
    const/4 v9, 0x0

    shr-int/lit8 v10, v5, 0x8

    int-to-byte v10, v10

    aput-byte v10, v6, v9

    .line 373
    const/4 v9, 0x1

    and-int/lit16 v10, v5, 0xff

    int-to-byte v10, v10

    aput-byte v10, v6, v9

    .line 375
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/String;

    const-string v11, "Shift_JIS"

    invoke-direct {v10, v6, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 379
    :goto_1
    add-int/lit8 v3, v3, -0x1

    .line 380
    if-gtz v3, :cond_0

    .line 383
    return-object v8

    .line 368
    .end local v6    # "tempByte":[B
    :cond_1
    const v9, 0xc140

    add-int v5, v7, v9

    goto :goto_0

    .line 376
    .restart local v6    # "tempByte":[B
    :catch_0
    move-exception v0

    .line 377
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method getNextBits(I)I
    .locals 11
    .param p1, "numBits"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, "bits":I
    iget v8, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->bitPointer:I

    add-int/lit8 v8, v8, 0x1

    if-ge p1, v8, :cond_1

    .line 49
    const/4 v5, 0x0

    .line 50
    .local v5, "mask":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, p1, :cond_0

    .line 53
    iget v8, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->bitPointer:I

    sub-int/2addr v8, p1

    add-int/lit8 v8, v8, 0x1

    shl-int/2addr v5, v8

    .line 55
    iget-object v8, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->blocks:[I

    iget v9, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->blockPointer:I

    aget v8, v8, v9

    and-int/2addr v8, v5

    iget v9, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->bitPointer:I

    sub-int/2addr v9, p1

    add-int/lit8 v9, v9, 0x1

    shr-int v0, v8, v9

    .line 56
    iget v8, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->bitPointer:I

    sub-int/2addr v8, p1

    iput v8, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->bitPointer:I

    move v8, v0

    .line 104
    .end local v4    # "i":I
    .end local v5    # "mask":I
    :goto_1
    return v8

    .line 51
    .restart local v4    # "i":I
    .restart local v5    # "mask":I
    :cond_0
    shl-int v8, v10, v4

    add-int/2addr v5, v8

    .line 50
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 59
    .end local v4    # "i":I
    .end local v5    # "mask":I
    :cond_1
    iget v8, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->bitPointer:I

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v8, v8, 0x8

    if-ge p1, v8, :cond_4

    .line 60
    const/4 v6, 0x0

    .line 61
    .local v6, "mask1":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    iget v8, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->bitPointer:I

    add-int/lit8 v8, v8, 0x1

    if-lt v4, v8, :cond_3

    .line 64
    iget-object v8, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->blocks:[I

    iget v9, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->blockPointer:I

    aget v8, v8, v9

    and-int/2addr v8, v6

    iget v9, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->bitPointer:I

    add-int/lit8 v9, v9, 0x1

    sub-int v9, p1, v9

    shl-int v0, v8, v9

    .line 65
    iget v8, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->blockPointer:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->blockPointer:I

    .line 66
    iget-object v8, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->blocks:[I

    iget v9, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->blockPointer:I

    aget v8, v8, v9

    iget v9, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->bitPointer:I

    add-int/lit8 v9, v9, 0x1

    sub-int v9, p1, v9

    rsub-int/lit8 v9, v9, 0x8

    shr-int/2addr v8, v9

    add-int/2addr v0, v8

    .line 68
    iget v8, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->bitPointer:I

    rem-int/lit8 v9, p1, 0x8

    sub-int/2addr v8, v9

    iput v8, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->bitPointer:I

    .line 69
    iget v8, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->bitPointer:I

    if-gez v8, :cond_2

    .line 70
    iget v8, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->bitPointer:I

    add-int/lit8 v8, v8, 0x8

    iput v8, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->bitPointer:I

    :cond_2
    move v8, v0

    .line 72
    goto :goto_1

    .line 62
    :cond_3
    shl-int v8, v10, v4

    add-int/2addr v6, v8

    .line 61
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 74
    .end local v4    # "i":I
    .end local v6    # "mask1":I
    :cond_4
    iget v8, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->bitPointer:I

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v8, v8, 0x10

    if-ge p1, v8, :cond_8

    .line 75
    const/4 v6, 0x0

    .line 76
    .restart local v6    # "mask1":I
    const/4 v7, 0x0

    .line 80
    .local v7, "mask3":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    iget v8, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->bitPointer:I

    add-int/lit8 v8, v8, 0x1

    if-lt v4, v8, :cond_6

    .line 83
    iget-object v8, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->blocks:[I

    iget v9, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->blockPointer:I

    aget v8, v8, v9

    and-int/2addr v8, v6

    iget v9, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->bitPointer:I

    add-int/lit8 v9, v9, 0x1

    sub-int v9, p1, v9

    shl-int v1, v8, v9

    .line 84
    .local v1, "bitsFirstBlock":I
    iget v8, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->blockPointer:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->blockPointer:I

    .line 86
    iget-object v8, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->blocks:[I

    iget v9, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->blockPointer:I

    aget v8, v8, v9

    iget v9, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->bitPointer:I

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v9, v9, 0x8

    sub-int v9, p1, v9

    shl-int v2, v8, v9

    .line 87
    .local v2, "bitsSecondBlock":I
    iget v8, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->blockPointer:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->blockPointer:I

    .line 89
    const/4 v4, 0x0

    :goto_4
    iget v8, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->bitPointer:I

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v8, v8, 0x8

    sub-int v8, p1, v8

    if-lt v4, v8, :cond_7

    .line 92
    iget v8, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->bitPointer:I

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v8, v8, 0x8

    sub-int v8, p1, v8

    rsub-int/lit8 v8, v8, 0x8

    shl-int/2addr v7, v8

    .line 93
    iget-object v8, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->blocks:[I

    iget v9, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->blockPointer:I

    aget v8, v8, v9

    and-int/2addr v8, v7

    iget v9, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->bitPointer:I

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v9, v9, 0x8

    sub-int v9, p1, v9

    rsub-int/lit8 v9, v9, 0x8

    shr-int v3, v8, v9

    .line 95
    .local v3, "bitsThirdBlock":I
    add-int v8, v1, v2

    add-int v0, v8, v3

    .line 96
    iget v8, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->bitPointer:I

    add-int/lit8 v9, p1, -0x8

    rem-int/lit8 v9, v9, 0x8

    sub-int/2addr v8, v9

    iput v8, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->bitPointer:I

    .line 97
    iget v8, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->bitPointer:I

    if-gez v8, :cond_5

    .line 98
    iget v8, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->bitPointer:I

    add-int/lit8 v8, v8, 0x8

    iput v8, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->bitPointer:I

    :cond_5
    move v8, v0

    .line 100
    goto/16 :goto_1

    .line 81
    .end local v1    # "bitsFirstBlock":I
    .end local v2    # "bitsSecondBlock":I
    .end local v3    # "bitsThirdBlock":I
    :cond_6
    shl-int v8, v10, v4

    add-int/2addr v6, v8

    .line 80
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 90
    .restart local v1    # "bitsFirstBlock":I
    .restart local v2    # "bitsSecondBlock":I
    :cond_7
    shl-int v8, v10, v4

    add-int/2addr v7, v8

    .line 89
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 103
    .end local v1    # "bitsFirstBlock":I
    .end local v2    # "bitsSecondBlock":I
    .end local v4    # "i":I
    .end local v6    # "mask1":I
    .end local v7    # "mask3":I
    :cond_8
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "ERROR!"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 104
    const/4 v8, 0x0

    goto/16 :goto_1
.end method

.method getNextMode()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 110
    iget v0, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->blockPointer:I

    iget-object v1, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->blocks:[I

    array-length v1, v1

    iget v2, p0, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->numErrorCorrectionCode:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x2

    if-le v0, v1, :cond_0

    .line 111
    const/4 v0, 0x0

    .line 113
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->getNextBits(I)I

    move-result v0

    goto :goto_0
.end method

.method getRomanAndFigureString(I)Ljava/lang/String;
    .locals 9
    .param p1, "dataLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 296
    move v2, p1

    .line 297
    .local v2, "length":I
    const/4 v1, 0x0

    .line 298
    .local v1, "intData":I
    const-string v4, ""

    .line 299
    .local v4, "strData":Ljava/lang/String;
    const/16 v6, 0x2d

    new-array v5, v6, [C

    fill-array-data v5, :array_0

    .line 310
    .local v5, "tableRomanAndFigure":[C
    :cond_0
    if-le v2, v8, :cond_2

    .line 311
    const/16 v6, 0xb

    invoke-virtual {p0, v6}, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->getNextBits(I)I

    move-result v1

    .line 312
    div-int/lit8 v0, v1, 0x2d

    .line 313
    .local v0, "firstLetter":I
    rem-int/lit8 v3, v1, 0x2d

    .line 314
    .local v3, "secondLetter":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-char v7, v5, v0

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 315
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-char v7, v5, v3

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 316
    add-int/lit8 v2, v2, -0x2

    .line 323
    .end local v0    # "firstLetter":I
    .end local v3    # "secondLetter":I
    :cond_1
    :goto_0
    if-gtz v2, :cond_0

    .line 325
    return-object v4

    .line 318
    :cond_2
    if-ne v2, v8, :cond_1

    .line 319
    const/4 v6, 0x6

    invoke-virtual {p0, v6}, Ljp/sourceforge/qrcode/reader/QRCodeDataBlockReader;->getNextBits(I)I

    move-result v1

    .line 320
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-char v7, v5, v1

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 321
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 299
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x20s
        0x24s
        0x25s
        0x2as
        0x2bs
        0x2ds
        0x2es
        0x2fs
        0x3as
    .end array-data
.end method

.method guessMode(I)I
    .locals 2
    .param p1, "mode"    # I

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x4

    .line 124
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 148
    :goto_0
    :pswitch_1
    return v0

    .line 126
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 134
    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 136
    goto :goto_0

    :pswitch_5
    move v0, v1

    .line 138
    goto :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
