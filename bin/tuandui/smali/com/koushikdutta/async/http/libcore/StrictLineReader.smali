.class public Lcom/koushikdutta/async/http/libcore/StrictLineReader;
.super Ljava/lang/Object;
.source "StrictLineReader.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final CR:B = 0xdt

.field private static final LF:B = 0xat


# instance fields
.field private buf:[B

.field private end:I

.field private final in:Ljava/io/InputStream;

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 67
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/http/libcore/StrictLineReader;-><init>(Ljava/io/InputStream;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "capacity"    # I

    .prologue
    .line 79
    sget-object v0, Lcom/koushikdutta/async/http/libcore/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, p2, v0}, Lcom/koushikdutta/async/http/libcore/StrictLineReader;-><init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "capacity"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    if-nez p1, :cond_0

    .line 108
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    if-nez p3, :cond_1

    .line 110
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_1
    if-gez p2, :cond_2

    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "capacity <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_2
    sget-object v0, Lcom/koushikdutta/async/http/libcore/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/koushikdutta/async/http/libcore/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_3
    iput-object p1, p0, Lcom/koushikdutta/async/http/libcore/StrictLineReader;->in:Ljava/io/InputStream;

    .line 120
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/koushikdutta/async/http/libcore/StrictLineReader;->buf:[B

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 92
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0, p2}, Lcom/koushikdutta/async/http/libcore/StrictLineReader;-><init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V

    .line 93
    return-void
.end method

.method private fillBuf()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 231
    iget-object v1, p0, Lcom/koushikdutta/async/http/libcore/StrictLineReader;->in:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/koushikdutta/async/http/libcore/StrictLineReader;->buf:[B

    iget-object v3, p0, Lcom/koushikdutta/async/http/libcore/StrictLineReader;->buf:[B

    array-length v3, v3

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 232
    .local v0, "result":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 233
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 235
    :cond_0
    iput v4, p0, Lcom/koushikdutta/async/http/libcore/StrictLineReader;->pos:I

    .line 236
    iput v0, p0, Lcom/koushikdutta/async/http/libcore/StrictLineReader;->end:I

    .line 237
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    iget-object v1, p0, Lcom/koushikdutta/async/http/libcore/StrictLineReader;->in:Ljava/io/InputStream;

    monitor-enter v1

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/StrictLineReader;->buf:[B

    if-eqz v0, :cond_0

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/koushikdutta/async/http/libcore/StrictLineReader;->buf:[B

    .line 134
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/StrictLineReader;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 131
    :cond_0
    monitor-exit v1

    .line 137
    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasUnterminatedLine()Z
    .locals 2

    .prologue
    .line 220
    iget v0, p0, Lcom/koushikdutta/async/http/libcore/StrictLineReader;->end:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readInt()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/libcore/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "intString":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 209
    :catch_0
    move-exception v1

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "expected an int but was \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readLine()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xa

    .line 148
    iget-object v5, p0, Lcom/koushikdutta/async/http/libcore/StrictLineReader;->in:Ljava/io/InputStream;

    monitor-enter v5

    .line 149
    :try_start_0
    iget-object v4, p0, Lcom/koushikdutta/async/http/libcore/StrictLineReader;->buf:[B

    if-nez v4, :cond_0

    .line 150
    new-instance v4, Ljava/io/IOException;

    const-string v6, "LineReader is closed"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 148
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 156
    :cond_0
    :try_start_1
    iget v4, p0, Lcom/koushikdutta/async/http/libcore/StrictLineReader;->pos:I

    iget v6, p0, Lcom/koushikdutta/async/http/libcore/StrictLineReader;->end:I

    if-lt v4, v6, :cond_1

    .line 157
    invoke-direct {p0}, Lcom/koushikdutta/async/http/libcore/StrictLineReader;->fillBuf()V

    .line 160
    :cond_1
    iget v0, p0, Lcom/koushikdutta/async/http/libcore/StrictLineReader;->pos:I

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/koushikdutta/async/http/libcore/StrictLineReader;->end:I

    if-ne v0, v4, :cond_4

    .line 170
    new-instance v2, Lcom/koushikdutta/async/http/libcore/StrictLineReader$1;

    iget v4, p0, Lcom/koushikdutta/async/http/libcore/StrictLineReader;->end:I

    iget v6, p0, Lcom/koushikdutta/async/http/libcore/StrictLineReader;->pos:I

    sub-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x50

    invoke-direct {v2, p0, v4}, Lcom/koushikdutta/async/http/libcore/StrictLineReader$1;-><init>(Lcom/koushikdutta/async/http/libcore/StrictLineReader;I)V

    .line 179
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    :cond_2
    iget-object v4, p0, Lcom/koushikdutta/async/http/libcore/StrictLineReader;->buf:[B

    iget v6, p0, Lcom/koushikdutta/async/http/libcore/StrictLineReader;->pos:I

    iget v7, p0, Lcom/koushikdutta/async/http/libcore/StrictLineReader;->end:I

    iget v8, p0, Lcom/koushikdutta/async/http/libcore/StrictLineReader;->pos:I

    sub-int/2addr v7, v8

    invoke-virtual {v2, v4, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 181
    const/4 v4, -0x1

    iput v4, p0, Lcom/koushikdutta/async/http/libcore/StrictLineReader;->end:I

    .line 182
    invoke-direct {p0}, Lcom/koushikdutta/async/http/libcore/StrictLineReader;->fillBuf()V

    .line 184
    iget v0, p0, Lcom/koushikdutta/async/http/libcore/StrictLineReader;->pos:I

    :goto_1
    iget v4, p0, Lcom/koushikdutta/async/http/libcore/StrictLineReader;->end:I

    if-eq v0, v4, :cond_2

    .line 185
    iget-object v4, p0, Lcom/koushikdutta/async/http/libcore/StrictLineReader;->buf:[B

    aget-byte v4, v4, v0

    if-ne v4, v9, :cond_7

    .line 186
    iget v4, p0, Lcom/koushikdutta/async/http/libcore/StrictLineReader;->pos:I

    if-eq v0, v4, :cond_3

    .line 187
    iget-object v4, p0, Lcom/koushikdutta/async/http/libcore/StrictLineReader;->buf:[B

    iget v6, p0, Lcom/koushikdutta/async/http/libcore/StrictLineReader;->pos:I

    iget v7, p0, Lcom/koushikdutta/async/http/libcore/StrictLineReader;->pos:I

    sub-int v7, v0, v7

    invoke-virtual {v2, v4, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 189
    :cond_3
    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lcom/koushikdutta/async/http/libcore/StrictLineReader;->pos:I

    .line 190
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    monitor-exit v5

    .end local v2    # "out":Ljava/io/ByteArrayOutputStream;
    :goto_2
    return-object v3

    .line 161
    :cond_4
    iget-object v4, p0, Lcom/koushikdutta/async/http/libcore/StrictLineReader;->buf:[B

    aget-byte v4, v4, v0

    if-ne v4, v9, :cond_6

    .line 162
    iget v4, p0, Lcom/koushikdutta/async/http/libcore/StrictLineReader;->pos:I

    if-eq v0, v4, :cond_5

    iget-object v4, p0, Lcom/koushikdutta/async/http/libcore/StrictLineReader;->buf:[B

    add-int/lit8 v6, v0, -0x1

    aget-byte v4, v4, v6

    const/16 v6, 0xd

    if-ne v4, v6, :cond_5

    add-int/lit8 v1, v0, -0x1

    .line 163
    .local v1, "lineEnd":I
    :goto_3
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/koushikdutta/async/http/libcore/StrictLineReader;->buf:[B

    iget v6, p0, Lcom/koushikdutta/async/http/libcore/StrictLineReader;->pos:I

    iget v7, p0, Lcom/koushikdutta/async/http/libcore/StrictLineReader;->pos:I

    sub-int v7, v1, v7

    invoke-direct {v3, v4, v6, v7}, Ljava/lang/String;-><init>([BII)V

    .line 164
    .local v3, "res":Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lcom/koushikdutta/async/http/libcore/StrictLineReader;->pos:I

    .line 165
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .end local v1    # "lineEnd":I
    .end local v3    # "res":Ljava/lang/String;
    :cond_5
    move v1, v0

    .line 162
    goto :goto_3

    .line 160
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    .restart local v2    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
