.class abstract Lcom/koushikdutta/async/http/HybiParser;
.super Ljava/lang/Object;
.source "HybiParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/HybiParser$ProtocolError;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final BASE:J = 0x2L

.field private static final BYTE:I = 0xff

.field private static final FIN:I = 0x80

.field private static final FRAGMENTED_OPCODES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final LENGTH:I = 0x7f

.field private static final MASK:I = 0x80

.field private static final MODE_BINARY:I = 0x2

.field private static final MODE_TEXT:I = 0x1

.field private static final OPCODE:I = 0xf

.field private static final OPCODES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final OP_BINARY:I = 0x2

.field private static final OP_CLOSE:I = 0x8

.field private static final OP_CONTINUATION:I = 0x0

.field private static final OP_PING:I = 0x9

.field private static final OP_PONG:I = 0xa

.field private static final OP_TEXT:I = 0x1

.field private static final RSV1:I = 0x40

.field private static final RSV2:I = 0x20

.field private static final RSV3:I = 0x10

.field private static final TAG:Ljava/lang/String; = "HybiParser"

.field private static final _2_TO_16_:J = 0x10000L

.field private static final _2_TO_24:J = 0x1000000L

.field private static final _2_TO_32_:J = 0x100000000L

.field private static final _2_TO_40_:J = 0x10000000000L

.field private static final _2_TO_48_:J = 0x1000000000000L

.field private static final _2_TO_56_:J = 0x100000000000000L

.field private static final _2_TO_8_:J = 0x100L


# instance fields
.field private mBuffer:Ljava/io/ByteArrayOutputStream;

.field private mClosed:Z

.field private mDeflate:Z

.field private mDeflated:Z

.field private mFinal:Z

.field private mInflateBuffer:[B

.field private mInflater:Ljava/util/zip/Inflater;

.field private mLength:I

.field private mLengthSize:I

.field private mMask:[B

.field private mMasked:Z

.field private mMasking:Z

.field private mMode:I

.field private mOpcode:I

.field private mPayload:[B

.field private mReader:Lcom/koushikdutta/async/DataEmitterReader;

.field private mStage:I

.field mStage0:Lcom/koushikdutta/async/callback/DataCallback;

.field mStage1:Lcom/koushikdutta/async/callback/DataCallback;

.field mStage2:Lcom/koushikdutta/async/callback/DataCallback;

.field mStage3:Lcom/koushikdutta/async/callback/DataCallback;

.field mStage4:Lcom/koushikdutta/async/callback/DataCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 46
    const-class v0, Lcom/koushikdutta/async/http/HybiParser;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/koushikdutta/async/http/HybiParser;->$assertionsDisabled:Z

    .line 90
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Integer;

    .line 91
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    .line 93
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v5

    .line 94
    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v6

    const/4 v3, 0x4

    .line 95
    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x5

    .line 96
    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/http/HybiParser;->OPCODES:Ljava/util/List;

    .line 99
    new-array v0, v6, [Ljava/lang/Integer;

    .line 100
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/http/HybiParser;->FRAGMENTED_OPCODES:Ljava/util/List;

    .line 244
    return-void

    :cond_0
    move v0, v2

    .line 46
    goto :goto_0
.end method

.method public constructor <init>(Lcom/koushikdutta/async/DataEmitter;)V
    .locals 3
    .param p1, "socket"    # Lcom/koushikdutta/async/DataEmitter;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean v2, p0, Lcom/koushikdutta/async/http/HybiParser;->mMasking:Z

    .line 50
    iput-boolean v1, p0, Lcom/koushikdutta/async/http/HybiParser;->mDeflate:Z

    .line 62
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mMask:[B

    .line 63
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mPayload:[B

    .line 65
    iput-boolean v1, p0, Lcom/koushikdutta/async/http/HybiParser;->mClosed:Z

    .line 67
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mBuffer:Ljava/io/ByteArrayOutputStream;

    .line 68
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0, v2}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mInflater:Ljava/util/zip/Inflater;

    .line 69
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mInflateBuffer:[B

    .line 142
    new-instance v0, Lcom/koushikdutta/async/http/HybiParser$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/HybiParser$1;-><init>(Lcom/koushikdutta/async/http/HybiParser;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mStage0:Lcom/koushikdutta/async/callback/DataCallback;

    .line 156
    new-instance v0, Lcom/koushikdutta/async/http/HybiParser$2;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/HybiParser$2;-><init>(Lcom/koushikdutta/async/http/HybiParser;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mStage1:Lcom/koushikdutta/async/callback/DataCallback;

    .line 164
    new-instance v0, Lcom/koushikdutta/async/http/HybiParser$3;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/HybiParser$3;-><init>(Lcom/koushikdutta/async/http/HybiParser;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mStage2:Lcom/koushikdutta/async/callback/DataCallback;

    .line 180
    new-instance v0, Lcom/koushikdutta/async/http/HybiParser$4;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/HybiParser$4;-><init>(Lcom/koushikdutta/async/http/HybiParser;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mStage3:Lcom/koushikdutta/async/callback/DataCallback;

    .line 190
    new-instance v0, Lcom/koushikdutta/async/http/HybiParser$5;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/HybiParser$5;-><init>(Lcom/koushikdutta/async/http/HybiParser;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mStage4:Lcom/koushikdutta/async/callback/DataCallback;

    .line 228
    new-instance v0, Lcom/koushikdutta/async/DataEmitterReader;

    invoke-direct {v0}, Lcom/koushikdutta/async/DataEmitterReader;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mReader:Lcom/koushikdutta/async/DataEmitterReader;

    .line 246
    iget-object v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mReader:Lcom/koushikdutta/async/DataEmitterReader;

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/DataEmitter;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 247
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/HybiParser;->parse()V

    .line 248
    return-void
.end method

.method static synthetic access$0(Lcom/koushikdutta/async/http/HybiParser;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/koushikdutta/async/http/HybiParser$ProtocolError;
        }
    .end annotation

    .prologue
    .line 250
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/HybiParser;->parseOpcode(B)V

    return-void
.end method

.method static synthetic access$1(Lcom/koushikdutta/async/http/HybiParser;B)V
    .locals 0

    .prologue
    .line 276
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/HybiParser;->parseLength(B)V

    return-void
.end method

.method static synthetic access$10(Lcom/koushikdutta/async/http/HybiParser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 391
    invoke-direct {p0}, Lcom/koushikdutta/async/http/HybiParser;->emitFrame()V

    return-void
.end method

.method static synthetic access$2(Lcom/koushikdutta/async/http/HybiParser;)I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mLengthSize:I

    return v0
.end method

.method static synthetic access$3(Lcom/koushikdutta/async/http/HybiParser;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/koushikdutta/async/http/HybiParser$ProtocolError;
        }
    .end annotation

    .prologue
    .line 288
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/HybiParser;->parseExtendedLength([B)V

    return-void
.end method

.method static synthetic access$4(Lcom/koushikdutta/async/http/HybiParser;[B)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/koushikdutta/async/http/HybiParser;->mMask:[B

    return-void
.end method

.method static synthetic access$5(Lcom/koushikdutta/async/http/HybiParser;)[B
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mMask:[B

    return-object v0
.end method

.method static synthetic access$6(Lcom/koushikdutta/async/http/HybiParser;I)V
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/koushikdutta/async/http/HybiParser;->mStage:I

    return-void
.end method

.method static synthetic access$7(Lcom/koushikdutta/async/http/HybiParser;)I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mLength:I

    return v0
.end method

.method static synthetic access$8(Lcom/koushikdutta/async/http/HybiParser;[B)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/koushikdutta/async/http/HybiParser;->mPayload:[B

    return-void
.end method

.method static synthetic access$9(Lcom/koushikdutta/async/http/HybiParser;)[B
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mPayload:[B

    return-object v0
.end method

.method private static byteArrayToLong([BII)J
    .locals 6
    .param p0, "b"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 501
    array-length v4, p0

    if-ge v4, p2, :cond_0

    .line 502
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "length must be less than or equal to b.length"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 504
    :cond_0
    const-wide/16 v2, 0x0

    .line 505
    .local v2, "value":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_1

    .line 509
    return-wide v2

    .line 506
    :cond_1
    add-int/lit8 v4, p2, -0x1

    sub-int/2addr v4, v0

    mul-int/lit8 v1, v4, 0x8

    .line 507
    .local v1, "shift":I
    add-int v4, v0, p1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v1

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 505
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private decode(Ljava/lang/String;)[B
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 474
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 475
    :catch_0
    move-exception v0

    .line 476
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private emitFrame()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0xa

    const/4 v0, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x2

    .line 392
    iget-object v6, p0, Lcom/koushikdutta/async/http/HybiParser;->mPayload:[B

    iget-object v7, p0, Lcom/koushikdutta/async/http/HybiParser;->mMask:[B

    invoke-static {v6, v7, v0}, Lcom/koushikdutta/async/http/HybiParser;->mask([B[BI)[B

    move-result-object v4

    .line 393
    .local v4, "payload":[B
    iget-boolean v6, p0, Lcom/koushikdutta/async/http/HybiParser;->mDeflated:Z

    if-eqz v6, :cond_0

    .line 395
    :try_start_0
    invoke-direct {p0, v4}, Lcom/koushikdutta/async/http/HybiParser;->inflate([B)[B
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 400
    :cond_0
    iget v3, p0, Lcom/koushikdutta/async/http/HybiParser;->mOpcode:I

    .line 402
    .local v3, "opcode":I
    if-nez v3, :cond_4

    .line 403
    iget v6, p0, Lcom/koushikdutta/async/http/HybiParser;->mMode:I

    if-nez v6, :cond_1

    .line 404
    new-instance v6, Lcom/koushikdutta/async/http/HybiParser$ProtocolError;

    const-string v7, "Mode was not set."

    invoke-direct {v6, v7}, Lcom/koushikdutta/async/http/HybiParser$ProtocolError;-><init>(Ljava/lang/String;)V

    throw v6

    .line 397
    .end local v3    # "opcode":I
    :catch_0
    move-exception v6

    new-instance v6, Ljava/io/IOException;

    const-string v7, "Invalid deflated data"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 406
    .restart local v3    # "opcode":I
    :cond_1
    iget-object v6, p0, Lcom/koushikdutta/async/http/HybiParser;->mBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 407
    iget-boolean v6, p0, Lcom/koushikdutta/async/http/HybiParser;->mFinal:Z

    if-eqz v6, :cond_2

    .line 408
    iget-object v6, p0, Lcom/koushikdutta/async/http/HybiParser;->mBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 409
    .local v1, "message":[B
    iget v6, p0, Lcom/koushikdutta/async/http/HybiParser;->mMode:I

    if-ne v6, v9, :cond_3

    .line 410
    invoke-direct {p0, v1}, Lcom/koushikdutta/async/http/HybiParser;->encode([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/koushikdutta/async/http/HybiParser;->onMessage(Ljava/lang/String;)V

    .line 414
    :goto_0
    invoke-direct {p0}, Lcom/koushikdutta/async/http/HybiParser;->reset()V

    .line 450
    .end local v1    # "message":[B
    :cond_2
    :goto_1
    return-void

    .line 412
    .restart local v1    # "message":[B
    :cond_3
    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/http/HybiParser;->onMessage([B)V

    goto :goto_0

    .line 417
    .end local v1    # "message":[B
    :cond_4
    if-ne v3, v9, :cond_6

    .line 418
    iget-boolean v6, p0, Lcom/koushikdutta/async/http/HybiParser;->mFinal:Z

    if-eqz v6, :cond_5

    .line 419
    invoke-direct {p0, v4}, Lcom/koushikdutta/async/http/HybiParser;->encode([B)Ljava/lang/String;

    move-result-object v2

    .line 420
    .local v2, "messageText":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/koushikdutta/async/http/HybiParser;->onMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 422
    .end local v2    # "messageText":Ljava/lang/String;
    :cond_5
    iput v9, p0, Lcom/koushikdutta/async/http/HybiParser;->mMode:I

    .line 423
    iget-object v6, p0, Lcom/koushikdutta/async/http/HybiParser;->mBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_1

    .line 426
    :cond_6
    if-ne v3, v8, :cond_8

    .line 427
    iget-boolean v6, p0, Lcom/koushikdutta/async/http/HybiParser;->mFinal:Z

    if-eqz v6, :cond_7

    .line 428
    invoke-virtual {p0, v4}, Lcom/koushikdutta/async/http/HybiParser;->onMessage([B)V

    goto :goto_1

    .line 430
    :cond_7
    iput v8, p0, Lcom/koushikdutta/async/http/HybiParser;->mMode:I

    .line 431
    iget-object v6, p0, Lcom/koushikdutta/async/http/HybiParser;->mBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_1

    .line 434
    :cond_8
    const/16 v6, 0x8

    if-ne v3, v6, :cond_b

    .line 435
    array-length v6, v4

    if-lt v6, v8, :cond_9

    aget-byte v6, v4, v0

    and-int/lit16 v6, v6, 0xff

    mul-int/lit16 v6, v6, 0x100

    aget-byte v7, v4, v9

    and-int/lit16 v7, v7, 0xff

    add-int v0, v6, v7

    .line 436
    .local v0, "code":I
    :cond_9
    array-length v6, v4

    if-le v6, v8, :cond_a

    invoke-direct {p0, v4, v8}, Lcom/koushikdutta/async/http/HybiParser;->slice([BI)[B

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/koushikdutta/async/http/HybiParser;->encode([B)Ljava/lang/String;

    move-result-object v5

    .line 438
    .local v5, "reason":Ljava/lang/String;
    :goto_2
    invoke-virtual {p0, v0, v5}, Lcom/koushikdutta/async/http/HybiParser;->onDisconnect(ILjava/lang/String;)V

    goto :goto_1

    .line 436
    .end local v5    # "reason":Ljava/lang/String;
    :cond_a
    const/4 v5, 0x0

    goto :goto_2

    .line 440
    .end local v0    # "code":I
    :cond_b
    const/16 v6, 0x9

    if-ne v3, v6, :cond_d

    .line 441
    array-length v6, v4

    const/16 v7, 0x7d

    if-le v6, v7, :cond_c

    new-instance v6, Lcom/koushikdutta/async/http/HybiParser$ProtocolError;

    const-string v7, "Ping payload too large"

    invoke-direct {v6, v7}, Lcom/koushikdutta/async/http/HybiParser$ProtocolError;-><init>(Ljava/lang/String;)V

    throw v6

    .line 443
    :cond_c
    const/4 v6, -0x1

    invoke-direct {p0, v10, v4, v6}, Lcom/koushikdutta/async/http/HybiParser;->frame(I[BI)[B

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/koushikdutta/async/http/HybiParser;->sendFrame([B)V

    goto :goto_1

    .line 445
    :cond_d
    if-ne v3, v10, :cond_2

    .line 446
    invoke-direct {p0, v4}, Lcom/koushikdutta/async/http/HybiParser;->encode([B)Ljava/lang/String;

    goto :goto_1
.end method

.method private encode([B)Ljava/lang/String;
    .locals 3
    .param p1, "buffer"    # [B

    .prologue
    .line 466
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 467
    :catch_0
    move-exception v0

    .line 468
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private frame(ILjava/lang/String;I)[B
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "errorCode"    # I

    .prologue
    .line 326
    invoke-direct {p0, p2}, Lcom/koushikdutta/async/http/HybiParser;->decode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/koushikdutta/async/http/HybiParser;->frame(I[BI)[B

    move-result-object v0

    return-object v0
.end method

.method private frame(I[BI)[B
    .locals 6
    .param p1, "opcode"    # I
    .param p2, "data"    # [B
    .param p3, "errorCode"    # I

    .prologue
    .line 314
    const/4 v4, 0x0

    array-length v5, p2

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/http/HybiParser;->frame(I[BIII)[B

    move-result-object v0

    return-object v0
.end method

.method private frame(I[BIII)[B
    .locals 16
    .param p1, "opcode"    # I
    .param p2, "data"    # [B
    .param p3, "errorCode"    # I
    .param p4, "dataOffset"    # I
    .param p5, "dataLength"    # I

    .prologue
    .line 330
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/koushikdutta/async/http/HybiParser;->mClosed:Z

    if-eqz v10, :cond_1

    const/4 v3, 0x0

    .line 378
    :cond_0
    :goto_0
    return-object v3

    .line 333
    :cond_1
    move-object/from16 v2, p2

    .line 334
    .local v2, "buffer":[B
    if-lez p3, :cond_3

    const/4 v5, 0x2

    .line 335
    .local v5, "insert":I
    :goto_1
    add-int v10, p5, v5

    sub-int v6, v10, p4

    .line 336
    .local v6, "length":I
    const/16 v10, 0x7d

    if-gt v6, v10, :cond_4

    const/4 v4, 0x2

    .line 337
    .local v4, "header":I
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/koushikdutta/async/http/HybiParser;->mMasking:Z

    if-eqz v10, :cond_6

    const/4 v10, 0x4

    :goto_3
    add-int v9, v4, v10

    .line 338
    .local v9, "offset":I
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/koushikdutta/async/http/HybiParser;->mMasking:Z

    if-eqz v10, :cond_7

    const/16 v8, 0x80

    .line 339
    .local v8, "masked":I
    :goto_4
    add-int v10, v6, v9

    new-array v3, v10, [B

    .line 341
    .local v3, "frame":[B
    const/4 v10, 0x0

    move/from16 v0, p1

    int-to-byte v11, v0

    or-int/lit8 v11, v11, -0x80

    int-to-byte v11, v11

    aput-byte v11, v3, v10

    .line 343
    const/16 v10, 0x7d

    if-gt v6, v10, :cond_8

    .line 344
    const/4 v10, 0x1

    or-int v11, v8, v6

    int-to-byte v11, v11

    aput-byte v11, v3, v10

    .line 362
    :goto_5
    if-lez p3, :cond_2

    .line 363
    move/from16 v0, p3

    div-int/lit16 v10, v0, 0x100

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v3, v9

    .line 364
    add-int/lit8 v10, v9, 0x1

    move/from16 v0, p3

    and-int/lit16 v11, v0, 0xff

    int-to-byte v11, v11

    aput-byte v11, v3, v10

    .line 367
    :cond_2
    add-int v10, v9, v5

    sub-int v11, p5, p4

    move/from16 v0, p4

    invoke-static {v2, v0, v3, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 369
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/koushikdutta/async/http/HybiParser;->mMasking:Z

    if-eqz v10, :cond_0

    .line 370
    const/4 v10, 0x4

    new-array v7, v10, [B

    const/4 v10, 0x0

    .line 371
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    const-wide/high16 v14, 0x4070000000000000L    # 256.0

    mul-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v11, v12

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    const/4 v10, 0x1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    const-wide/high16 v14, 0x4070000000000000L    # 256.0

    mul-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v11, v12

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    const/4 v10, 0x2

    .line 372
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    const-wide/high16 v14, 0x4070000000000000L    # 256.0

    mul-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v11, v12

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    const/4 v10, 0x3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    const-wide/high16 v14, 0x4070000000000000L    # 256.0

    mul-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v11, v12

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 374
    .local v7, "mask":[B
    const/4 v10, 0x0

    array-length v11, v7

    invoke-static {v7, v10, v3, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 375
    invoke-static {v3, v7, v9}, Lcom/koushikdutta/async/http/HybiParser;->mask([B[BI)[B

    goto/16 :goto_0

    .line 334
    .end local v3    # "frame":[B
    .end local v4    # "header":I
    .end local v5    # "insert":I
    .end local v6    # "length":I
    .end local v7    # "mask":[B
    .end local v8    # "masked":I
    .end local v9    # "offset":I
    :cond_3
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 336
    .restart local v5    # "insert":I
    .restart local v6    # "length":I
    :cond_4
    const v10, 0xffff

    if-gt v6, v10, :cond_5

    const/4 v4, 0x4

    goto/16 :goto_2

    :cond_5
    const/16 v4, 0xa

    goto/16 :goto_2

    .line 337
    .restart local v4    # "header":I
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 338
    .restart local v9    # "offset":I
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 345
    .restart local v3    # "frame":[B
    .restart local v8    # "masked":I
    :cond_8
    const v10, 0xffff

    if-gt v6, v10, :cond_9

    .line 346
    const/4 v10, 0x1

    or-int/lit8 v11, v8, 0x7e

    int-to-byte v11, v11

    aput-byte v11, v3, v10

    .line 347
    const/4 v10, 0x2

    div-int/lit16 v11, v6, 0x100

    int-to-byte v11, v11

    aput-byte v11, v3, v10

    .line 348
    const/4 v10, 0x3

    and-int/lit16 v11, v6, 0xff

    int-to-byte v11, v11

    aput-byte v11, v3, v10

    goto/16 :goto_5

    .line 351
    :cond_9
    const/4 v10, 0x1

    or-int/lit8 v11, v8, 0x7f

    int-to-byte v11, v11

    aput-byte v11, v3, v10

    .line 352
    const/4 v10, 0x2

    int-to-long v12, v6

    const-wide/high16 v14, 0x100000000000000L

    div-long/2addr v12, v14

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    long-to-int v11, v12

    int-to-byte v11, v11

    aput-byte v11, v3, v10

    .line 353
    const/4 v10, 0x3

    int-to-long v12, v6

    const-wide/high16 v14, 0x1000000000000L

    div-long/2addr v12, v14

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    long-to-int v11, v12

    int-to-byte v11, v11

    aput-byte v11, v3, v10

    .line 354
    const/4 v10, 0x4

    int-to-long v12, v6

    const-wide v14, 0x10000000000L

    div-long/2addr v12, v14

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    long-to-int v11, v12

    int-to-byte v11, v11

    aput-byte v11, v3, v10

    .line 355
    const/4 v10, 0x5

    int-to-long v12, v6

    const-wide v14, 0x100000000L

    div-long/2addr v12, v14

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    long-to-int v11, v12

    int-to-byte v11, v11

    aput-byte v11, v3, v10

    .line 356
    const/4 v10, 0x6

    int-to-long v12, v6

    const-wide/32 v14, 0x1000000

    div-long/2addr v12, v14

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    long-to-int v11, v12

    int-to-byte v11, v11

    aput-byte v11, v3, v10

    .line 357
    const/4 v10, 0x7

    int-to-long v12, v6

    const-wide/32 v14, 0x10000

    div-long/2addr v12, v14

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    long-to-int v11, v12

    int-to-byte v11, v11

    aput-byte v11, v3, v10

    .line 358
    const/16 v10, 0x8

    int-to-long v12, v6

    const-wide/16 v14, 0x100

    div-long/2addr v12, v14

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    long-to-int v11, v12

    int-to-byte v11, v11

    aput-byte v11, v3, v10

    .line 359
    const/16 v10, 0x9

    and-int/lit16 v11, v6, 0xff

    int-to-byte v11, v11

    aput-byte v11, v3, v10

    goto/16 :goto_5
.end method

.method private getInteger([B)I
    .locals 5
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/koushikdutta/async/http/HybiParser$ProtocolError;
        }
    .end annotation

    .prologue
    .line 481
    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {p1, v2, v3}, Lcom/koushikdutta/async/http/HybiParser;->byteArrayToLong([BII)J

    move-result-wide v0

    .line 482
    .local v0, "i":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 483
    :cond_0
    new-instance v2, Lcom/koushikdutta/async/http/HybiParser$ProtocolError;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Bad integer: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/koushikdutta/async/http/HybiParser$ProtocolError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 485
    :cond_1
    long-to-int v2, v0

    return v2
.end method

.method private inflate([B)[B
    .locals 7
    .param p1, "payload"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 117
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 119
    .local v1, "inflated":Ljava/io/ByteArrayOutputStream;
    iget-object v2, p0, Lcom/koushikdutta/async/http/HybiParser;->mInflater:Ljava/util/zip/Inflater;

    invoke-virtual {v2, p1}, Ljava/util/zip/Inflater;->setInput([B)V

    .line 120
    :goto_0
    iget-object v2, p0, Lcom/koushikdutta/async/http/HybiParser;->mInflater:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    iget-object v2, p0, Lcom/koushikdutta/async/http/HybiParser;->mInflater:Ljava/util/zip/Inflater;

    const/4 v3, 0x4

    new-array v3, v3, [B

    const/4 v4, 0x2

    aput-byte v5, v3, v4

    const/4 v4, 0x3

    aput-byte v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/util/zip/Inflater;->setInput([B)V

    .line 126
    :goto_1
    iget-object v2, p0, Lcom/koushikdutta/async/http/HybiParser;->mInflater:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 121
    :cond_0
    iget-object v2, p0, Lcom/koushikdutta/async/http/HybiParser;->mInflater:Ljava/util/zip/Inflater;

    iget-object v3, p0, Lcom/koushikdutta/async/http/HybiParser;->mInflateBuffer:[B

    invoke-virtual {v2, v3}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v0

    .line 122
    .local v0, "chunkSize":I
    iget-object v2, p0, Lcom/koushikdutta/async/http/HybiParser;->mInflateBuffer:[B

    invoke-virtual {v1, v2, v6, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 127
    .end local v0    # "chunkSize":I
    :cond_1
    iget-object v2, p0, Lcom/koushikdutta/async/http/HybiParser;->mInflater:Ljava/util/zip/Inflater;

    iget-object v3, p0, Lcom/koushikdutta/async/http/HybiParser;->mInflateBuffer:[B

    invoke-virtual {v2, v3}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v0

    .line 128
    .restart local v0    # "chunkSize":I
    iget-object v2, p0, Lcom/koushikdutta/async/http/HybiParser;->mInflateBuffer:[B

    invoke-virtual {v1, v2, v6, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1
.end method

.method private static mask([B[BI)[B
    .locals 4
    .param p0, "payload"    # [B
    .param p1, "mask"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 108
    array-length v1, p1

    if-nez v1, :cond_1

    .line 113
    :cond_0
    return-object p0

    .line 110
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    sub-int/2addr v1, p2

    if-ge v0, v1, :cond_0

    .line 111
    add-int v1, p2, v0

    add-int v2, p2, v0

    aget-byte v2, p0, v2

    rem-int/lit8 v3, v0, 0x4

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private parseExtendedLength([B)V
    .locals 1
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/koushikdutta/async/http/HybiParser$ProtocolError;
        }
    .end annotation

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/HybiParser;->getInteger([B)I

    move-result v0

    iput v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mLength:I

    .line 290
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mMasked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    iput v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mStage:I

    .line 291
    return-void

    .line 290
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private parseLength(B)V
    .locals 3
    .param p1, "data"    # B

    .prologue
    const/4 v1, 0x2

    .line 277
    and-int/lit16 v0, p1, 0x80

    const/16 v2, 0x80

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mMasked:Z

    .line 278
    and-int/lit8 v0, p1, 0x7f

    iput v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mLength:I

    .line 280
    iget v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mLength:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mLength:I

    const/16 v2, 0x7d

    if-gt v0, v2, :cond_2

    .line 281
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mMasked:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    :goto_1
    iput v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mStage:I

    .line 286
    :goto_2
    return-void

    .line 277
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 281
    :cond_1
    const/4 v0, 0x4

    goto :goto_1

    .line 283
    :cond_2
    iget v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mLength:I

    const/16 v2, 0x7e

    if-ne v0, v2, :cond_3

    move v0, v1

    :goto_3
    iput v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mLengthSize:I

    .line 284
    iput v1, p0, Lcom/koushikdutta/async/http/HybiParser;->mStage:I

    goto :goto_2

    .line 283
    :cond_3
    const/16 v0, 0x8

    goto :goto_3
.end method

.method private parseOpcode(B)V
    .locals 7
    .param p1, "data"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/koushikdutta/async/http/HybiParser$ProtocolError;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 251
    and-int/lit8 v5, p1, 0x40

    const/16 v6, 0x40

    if-ne v5, v6, :cond_2

    move v0, v3

    .line 252
    .local v0, "rsv1":Z
    :goto_0
    and-int/lit8 v5, p1, 0x20

    const/16 v6, 0x20

    if-ne v5, v6, :cond_3

    move v1, v3

    .line 253
    .local v1, "rsv2":Z
    :goto_1
    and-int/lit8 v5, p1, 0x10

    const/16 v6, 0x10

    if-ne v5, v6, :cond_4

    move v2, v3

    .line 255
    .local v2, "rsv3":Z
    :goto_2
    iget-boolean v5, p0, Lcom/koushikdutta/async/http/HybiParser;->mDeflate:Z

    if-nez v5, :cond_0

    if-nez v0, :cond_1

    :cond_0
    if-nez v1, :cond_1

    if-eqz v2, :cond_5

    .line 256
    :cond_1
    new-instance v3, Lcom/koushikdutta/async/http/HybiParser$ProtocolError;

    const-string v4, "RSV not zero"

    invoke-direct {v3, v4}, Lcom/koushikdutta/async/http/HybiParser$ProtocolError;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v0    # "rsv1":Z
    .end local v1    # "rsv2":Z
    .end local v2    # "rsv3":Z
    :cond_2
    move v0, v4

    .line 251
    goto :goto_0

    .restart local v0    # "rsv1":Z
    :cond_3
    move v1, v4

    .line 252
    goto :goto_1

    .restart local v1    # "rsv2":Z
    :cond_4
    move v2, v4

    .line 253
    goto :goto_2

    .line 259
    .restart local v2    # "rsv3":Z
    :cond_5
    and-int/lit16 v5, p1, 0x80

    const/16 v6, 0x80

    if-ne v5, v6, :cond_6

    move v5, v3

    :goto_3
    iput-boolean v5, p0, Lcom/koushikdutta/async/http/HybiParser;->mFinal:Z

    .line 260
    and-int/lit8 v5, p1, 0xf

    iput v5, p0, Lcom/koushikdutta/async/http/HybiParser;->mOpcode:I

    .line 261
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mDeflated:Z

    .line 262
    new-array v5, v4, [B

    iput-object v5, p0, Lcom/koushikdutta/async/http/HybiParser;->mMask:[B

    .line 263
    new-array v4, v4, [B

    iput-object v4, p0, Lcom/koushikdutta/async/http/HybiParser;->mPayload:[B

    .line 265
    sget-object v4, Lcom/koushikdutta/async/http/HybiParser;->OPCODES:Ljava/util/List;

    iget v5, p0, Lcom/koushikdutta/async/http/HybiParser;->mOpcode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 266
    new-instance v3, Lcom/koushikdutta/async/http/HybiParser$ProtocolError;

    const-string v4, "Bad opcode"

    invoke-direct {v3, v4}, Lcom/koushikdutta/async/http/HybiParser$ProtocolError;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_6
    move v5, v4

    .line 259
    goto :goto_3

    .line 269
    :cond_7
    sget-object v4, Lcom/koushikdutta/async/http/HybiParser;->FRAGMENTED_OPCODES:Ljava/util/List;

    iget v5, p0, Lcom/koushikdutta/async/http/HybiParser;->mOpcode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-boolean v4, p0, Lcom/koushikdutta/async/http/HybiParser;->mFinal:Z

    if-nez v4, :cond_8

    .line 270
    new-instance v3, Lcom/koushikdutta/async/http/HybiParser$ProtocolError;

    const-string v4, "Expected non-final packet"

    invoke-direct {v3, v4}, Lcom/koushikdutta/async/http/HybiParser$ProtocolError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 273
    :cond_8
    iput v3, p0, Lcom/koushikdutta/async/http/HybiParser;->mStage:I

    .line 274
    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 460
    const/4 v0, 0x0

    iput v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mMode:I

    .line 461
    iget-object v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 462
    return-void
.end method

.method private slice([BI)[B
    .locals 3
    .param p1, "array"    # [B
    .param p2, "start"    # I

    .prologue
    .line 489
    array-length v1, p1

    sub-int/2addr v1, p2

    new-array v0, v1, [B

    .line 490
    .local v0, "copy":[B
    const/4 v1, 0x0

    array-length v2, p1

    sub-int/2addr v2, p2

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 491
    return-object v0
.end method


# virtual methods
.method public close(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mClosed:Z

    if-eqz v0, :cond_0

    .line 389
    :goto_0
    return-void

    .line 387
    :cond_0
    const/16 v0, 0x8

    invoke-direct {p0, v0, p2, p1}, Lcom/koushikdutta/async/http/HybiParser;->frame(ILjava/lang/String;I)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/HybiParser;->sendFrame([B)V

    .line 388
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mClosed:Z

    goto :goto_0
.end method

.method public frame(Ljava/lang/String;)[B
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 294
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/koushikdutta/async/http/HybiParser;->frame(ILjava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public frame([B)[B
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 298
    const/4 v0, 0x2

    const/4 v1, -0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/koushikdutta/async/http/HybiParser;->frame(I[BI)[B

    move-result-object v0

    return-object v0
.end method

.method public frame([BII)[B
    .locals 6
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 302
    const/4 v1, 0x2

    const/4 v3, -0x1

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/http/HybiParser;->frame(I[BIII)[B

    move-result-object v0

    return-object v0
.end method

.method protected abstract onDisconnect(ILjava/lang/String;)V
.end method

.method protected abstract onMessage(Ljava/lang/String;)V
.end method

.method protected abstract onMessage([B)V
.end method

.method parse()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 209
    iget v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mStage:I

    packed-switch v0, :pswitch_data_0

    .line 226
    :goto_0
    return-void

    .line 211
    :pswitch_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mReader:Lcom/koushikdutta/async/DataEmitterReader;

    iget-object v1, p0, Lcom/koushikdutta/async/http/HybiParser;->mStage0:Lcom/koushikdutta/async/callback/DataCallback;

    invoke-virtual {v0, v2, v1}, Lcom/koushikdutta/async/DataEmitterReader;->read(ILcom/koushikdutta/async/callback/DataCallback;)V

    goto :goto_0

    .line 214
    :pswitch_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mReader:Lcom/koushikdutta/async/DataEmitterReader;

    iget-object v1, p0, Lcom/koushikdutta/async/http/HybiParser;->mStage1:Lcom/koushikdutta/async/callback/DataCallback;

    invoke-virtual {v0, v2, v1}, Lcom/koushikdutta/async/DataEmitterReader;->read(ILcom/koushikdutta/async/callback/DataCallback;)V

    goto :goto_0

    .line 217
    :pswitch_2
    iget-object v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mReader:Lcom/koushikdutta/async/DataEmitterReader;

    iget v1, p0, Lcom/koushikdutta/async/http/HybiParser;->mLengthSize:I

    iget-object v2, p0, Lcom/koushikdutta/async/http/HybiParser;->mStage2:Lcom/koushikdutta/async/callback/DataCallback;

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/DataEmitterReader;->read(ILcom/koushikdutta/async/callback/DataCallback;)V

    goto :goto_0

    .line 220
    :pswitch_3
    iget-object v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mReader:Lcom/koushikdutta/async/DataEmitterReader;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/koushikdutta/async/http/HybiParser;->mStage3:Lcom/koushikdutta/async/callback/DataCallback;

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/DataEmitterReader;->read(ILcom/koushikdutta/async/callback/DataCallback;)V

    goto :goto_0

    .line 223
    :pswitch_4
    iget-object v0, p0, Lcom/koushikdutta/async/http/HybiParser;->mReader:Lcom/koushikdutta/async/DataEmitterReader;

    iget v1, p0, Lcom/koushikdutta/async/http/HybiParser;->mLength:I

    iget-object v2, p0, Lcom/koushikdutta/async/http/HybiParser;->mStage4:Lcom/koushikdutta/async/callback/DataCallback;

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/DataEmitterReader;->read(ILcom/koushikdutta/async/callback/DataCallback;)V

    goto :goto_0

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public ping(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 383
    return-void
.end method

.method protected abstract report(Ljava/lang/Exception;)V
.end method

.method protected abstract sendFrame([B)V
.end method

.method public setDeflate(Z)V
    .locals 0
    .param p1, "deflate"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/HybiParser;->mDeflate:Z

    .line 140
    return-void
.end method

.method public setMasking(Z)V
    .locals 0
    .param p1, "masking"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/HybiParser;->mMasking:Z

    .line 136
    return-void
.end method
