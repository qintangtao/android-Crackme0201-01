.class public Lcom/koushikdutta/async/http/server/BoundaryEmitter;
.super Lcom/koushikdutta/async/FilteredDataEmitter;
.source "BoundaryEmitter.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private boundary:[B

.field state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/koushikdutta/async/FilteredDataEmitter;-><init>()V

    .line 58
    const/4 v0, 0x2

    iput v0, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    .line 10
    return-void
.end method


# virtual methods
.method public getBoundary()Ljava/lang/String;
    .locals 4

    .prologue
    .line 17
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->boundary:[B

    if-nez v0, :cond_0

    .line 18
    const/4 v0, 0x0

    .line 19
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->boundary:[B

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->boundary:[B

    array-length v3, v3

    add-int/lit8 v3, v3, -0x4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    goto :goto_0
.end method

.method public getBoundaryEnd()Ljava/lang/String;
    .locals 2

    .prologue
    .line 28
    sget-boolean v0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->boundary:[B

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->getBoundaryStart()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "--\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBoundaryStart()Ljava/lang/String;
    .locals 4

    .prologue
    .line 23
    sget-boolean v0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->boundary:[B

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->boundary:[B

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->boundary:[B

    array-length v3, v3

    add-int/lit8 v3, v3, -0x2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method protected onBoundaryEnd()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method protected onBoundaryStart()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 10
    .param p1, "emitter"    # Lcom/koushikdutta/async/DataEmitter;
    .param p2, "bb"    # Lcom/koushikdutta/async/ByteBufferList;

    .prologue
    .line 68
    iget v7, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    if-lez v7, :cond_0

    .line 69
    iget-object v7, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->boundary:[B

    array-length v7, v7

    invoke-static {v7}, Lcom/koushikdutta/async/ByteBufferList;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 70
    .local v0, "b":Ljava/nio/ByteBuffer;
    iget-object v7, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->boundary:[B

    const/4 v8, 0x0

    iget v9, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    invoke-virtual {v0, v7, v8, v9}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 71
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 72
    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/ByteBufferList;->addFirst(Ljava/nio/ByteBuffer;)V

    .line 73
    const/4 v7, 0x0

    iput v7, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    .line 76
    .end local v0    # "b":Ljava/nio/ByteBuffer;
    :cond_0
    const/4 v4, 0x0

    .line 77
    .local v4, "last":I
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v7

    new-array v1, v7, [B

    .line 78
    .local v1, "buf":[B
    invoke-virtual {p2, v1}, Lcom/koushikdutta/async/ByteBufferList;->get([B)V

    .line 79
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v7, v1

    if-lt v2, v7, :cond_2

    .line 155
    array-length v7, v1

    if-ge v4, v7, :cond_1

    .line 159
    iget v7, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 160
    .local v3, "keep":I
    array-length v7, v1

    sub-int/2addr v7, v4

    sub-int/2addr v7, v3

    invoke-static {v7}, Lcom/koushikdutta/async/ByteBufferList;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    array-length v8, v1

    sub-int/2addr v8, v4

    sub-int/2addr v8, v3

    invoke-virtual {v7, v1, v4, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 161
    .restart local v0    # "b":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 162
    new-instance v6, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v6}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    .line 163
    .local v6, "list":Lcom/koushikdutta/async/ByteBufferList;
    invoke-virtual {v6, v0}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)V

    .line 164
    invoke-super {p0, p0, v6}, Lcom/koushikdutta/async/FilteredDataEmitter;->onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 166
    .end local v0    # "b":Ljava/nio/ByteBuffer;
    .end local v3    # "keep":I
    .end local v6    # "list":Lcom/koushikdutta/async/ByteBufferList;
    :cond_1
    :goto_1
    return-void

    .line 80
    :cond_2
    iget v7, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    if-ltz v7, :cond_5

    .line 81
    aget-byte v7, v1, v2

    iget-object v8, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->boundary:[B

    iget v9, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    aget-byte v8, v8, v9

    if-ne v7, v8, :cond_4

    .line 82
    iget v7, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    .line 83
    iget v7, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    iget-object v8, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->boundary:[B

    array-length v8, v8

    if-ne v7, v8, :cond_3

    .line 84
    const/4 v7, -0x1

    iput v7, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    .line 79
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    :cond_4
    iget v7, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    if-lez v7, :cond_3

    .line 89
    iget v7, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    sub-int/2addr v2, v7

    .line 90
    const/4 v7, 0x0

    iput v7, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    goto :goto_2

    .line 93
    :cond_5
    iget v7, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_a

    .line 94
    aget-byte v7, v1, v2

    const/16 v8, 0xd

    if-ne v7, v8, :cond_8

    .line 95
    const/4 v7, -0x4

    iput v7, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    .line 96
    sub-int v7, v2, v4

    iget-object v8, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->boundary:[B

    array-length v8, v8

    sub-int v5, v7, v8

    .line 97
    .local v5, "len":I
    if-nez v4, :cond_6

    if-eqz v5, :cond_7

    .line 98
    :cond_6
    invoke-static {v5}, Lcom/koushikdutta/async/ByteBufferList;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7, v1, v4, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 99
    .restart local v0    # "b":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 100
    new-instance v6, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v6}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    .line 101
    .restart local v6    # "list":Lcom/koushikdutta/async/ByteBufferList;
    invoke-virtual {v6, v0}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)V

    .line 102
    invoke-super {p0, p0, v6}, Lcom/koushikdutta/async/FilteredDataEmitter;->onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 105
    .end local v0    # "b":Ljava/nio/ByteBuffer;
    .end local v6    # "list":Lcom/koushikdutta/async/ByteBufferList;
    :cond_7
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->onBoundaryStart()V

    goto :goto_2

    .line 107
    .end local v5    # "len":I
    :cond_8
    aget-byte v7, v1, v2

    const/16 v8, 0x2d

    if-ne v7, v8, :cond_9

    .line 108
    const/4 v7, -0x2

    iput v7, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    goto :goto_2

    .line 111
    :cond_9
    new-instance v7, Lcom/koushikdutta/async/http/server/MimeEncodingException;

    const-string v8, "Invalid multipart/form-data. Expected \r or -"

    invoke-direct {v7, v8}, Lcom/koushikdutta/async/http/server/MimeEncodingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->report(Ljava/lang/Exception;)V

    goto :goto_1

    .line 115
    :cond_a
    iget v7, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    const/4 v8, -0x2

    if-ne v7, v8, :cond_c

    .line 116
    aget-byte v7, v1, v2

    const/16 v8, 0x2d

    if-ne v7, v8, :cond_b

    .line 117
    const/4 v7, -0x3

    iput v7, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    goto :goto_2

    .line 120
    :cond_b
    new-instance v7, Lcom/koushikdutta/async/http/server/MimeEncodingException;

    const-string v8, "Invalid multipart/form-data. Expected -"

    invoke-direct {v7, v8}, Lcom/koushikdutta/async/http/server/MimeEncodingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->report(Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 124
    :cond_c
    iget v7, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    const/4 v8, -0x3

    if-ne v7, v8, :cond_e

    .line 125
    aget-byte v7, v1, v2

    const/16 v8, 0xd

    if-ne v7, v8, :cond_d

    .line 126
    const/4 v7, -0x4

    iput v7, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    .line 127
    sub-int v7, v2, v4

    iget-object v8, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->boundary:[B

    array-length v8, v8

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x2

    invoke-static {v7}, Lcom/koushikdutta/async/ByteBufferList;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    sub-int v8, v2, v4

    iget-object v9, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->boundary:[B

    array-length v9, v9

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v7, v1, v4, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 128
    .restart local v0    # "b":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 129
    new-instance v6, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v6}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    .line 130
    .restart local v6    # "list":Lcom/koushikdutta/async/ByteBufferList;
    invoke-virtual {v6, v0}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)V

    .line 131
    invoke-super {p0, p0, v6}, Lcom/koushikdutta/async/FilteredDataEmitter;->onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 133
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->onBoundaryEnd()V

    goto/16 :goto_2

    .line 136
    .end local v0    # "b":Ljava/nio/ByteBuffer;
    .end local v6    # "list":Lcom/koushikdutta/async/ByteBufferList;
    :cond_d
    new-instance v7, Lcom/koushikdutta/async/http/server/MimeEncodingException;

    const-string v8, "Invalid multipart/form-data. Expected \r"

    invoke-direct {v7, v8}, Lcom/koushikdutta/async/http/server/MimeEncodingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->report(Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 140
    :cond_e
    iget v7, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    const/4 v8, -0x4

    if-ne v7, v8, :cond_10

    .line 141
    aget-byte v7, v1, v2

    const/16 v8, 0xa

    if-ne v7, v8, :cond_f

    .line 142
    add-int/lit8 v4, v2, 0x1

    .line 143
    const/4 v7, 0x0

    iput v7, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    goto/16 :goto_2

    .line 146
    :cond_f
    new-instance v7, Lcom/koushikdutta/async/http/server/MimeEncodingException;

    const-string v8, "Invalid multipart/form-data. Expected \n"

    invoke-direct {v7, v8}, Lcom/koushikdutta/async/http/server/MimeEncodingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->report(Ljava/lang/Exception;)V

    goto/16 :goto_2

    .line 150
    :cond_10
    sget-boolean v7, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->$assertionsDisabled:Z

    if-nez v7, :cond_11

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 151
    :cond_11
    new-instance v7, Lcom/koushikdutta/async/http/server/MimeEncodingException;

    const-string v8, "Invalid multipart/form-data. Unknown state?"

    invoke-direct {v7, v8}, Lcom/koushikdutta/async/http/server/MimeEncodingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->report(Ljava/lang/Exception;)V

    goto/16 :goto_2
.end method

.method public setBoundary(Ljava/lang/String;)V
    .locals 2
    .param p1, "boundary"    # Ljava/lang/String;

    .prologue
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\r\n--"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->boundary:[B

    .line 14
    return-void
.end method
