.class Lcom/koushikdutta/async/Util$2;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/WritableCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/Util;->pump(Ljava/io/InputStream;JLcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mToAlloc:I

.field maxAlloc:I

.field pending:Ljava/nio/ByteBuffer;

.field totalRead:I

.field private final synthetic val$ds:Lcom/koushikdutta/async/DataSink;

.field private final synthetic val$is:Ljava/io/InputStream;

.field private final synthetic val$max:J

.field private final synthetic val$wrapper:Lcom/koushikdutta/async/callback/CompletedCallback;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/DataSink;Ljava/io/InputStream;JLcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/Util$2;->val$ds:Lcom/koushikdutta/async/DataSink;

    iput-object p2, p0, Lcom/koushikdutta/async/Util$2;->val$is:Ljava/io/InputStream;

    iput-wide p3, p0, Lcom/koushikdutta/async/Util$2;->val$max:J

    iput-object p5, p0, Lcom/koushikdutta/async/Util$2;->val$wrapper:Lcom/koushikdutta/async/callback/CompletedCallback;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput v0, p0, Lcom/koushikdutta/async/Util$2;->totalRead:I

    .line 80
    iput v0, p0, Lcom/koushikdutta/async/Util$2;->mToAlloc:I

    .line 81
    const/high16 v0, 0x40000

    iput v0, p0, Lcom/koushikdutta/async/Util$2;->maxAlloc:I

    return-void
.end method

.method private cleanup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 68
    iget-object v1, p0, Lcom/koushikdutta/async/Util$2;->val$ds:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v1, v2}, Lcom/koushikdutta/async/DataSink;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 69
    iget-object v1, p0, Lcom/koushikdutta/async/Util$2;->val$ds:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v1, v2}, Lcom/koushikdutta/async/DataSink;->setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V

    .line 70
    iget-object v1, p0, Lcom/koushikdutta/async/Util$2;->pending:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lcom/koushikdutta/async/ByteBufferList;->reclaim(Ljava/nio/ByteBuffer;)V

    .line 71
    iput-object v2, p0, Lcom/koushikdutta/async/Util$2;->pending:Ljava/nio/ByteBuffer;

    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/Util$2;->val$is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onWriteable()V
    .locals 8

    .prologue
    .line 87
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/koushikdutta/async/Util$2;->pending:Ljava/nio/ByteBuffer;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/koushikdutta/async/Util$2;->pending:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-nez v4, :cond_4

    .line 88
    :cond_1
    iget-object v4, p0, Lcom/koushikdutta/async/Util$2;->pending:Ljava/nio/ByteBuffer;

    invoke-static {v4}, Lcom/koushikdutta/async/ByteBufferList;->reclaim(Ljava/nio/ByteBuffer;)V

    .line 89
    iget v4, p0, Lcom/koushikdutta/async/Util$2;->mToAlloc:I

    const/16 v5, 0x1000

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, p0, Lcom/koushikdutta/async/Util$2;->maxAlloc:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v4}, Lcom/koushikdutta/async/ByteBufferList;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/koushikdutta/async/Util$2;->pending:Ljava/nio/ByteBuffer;

    .line 91
    iget-wide v4, p0, Lcom/koushikdutta/async/Util$2;->val$max:J

    iget v6, p0, Lcom/koushikdutta/async/Util$2;->totalRead:I

    int-to-long v6, v6

    sub-long/2addr v4, v6

    iget-object v6, p0, Lcom/koushikdutta/async/Util$2;->pending:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 92
    .local v2, "toRead":J
    iget-object v4, p0, Lcom/koushikdutta/async/Util$2;->val$is:Ljava/io/InputStream;

    iget-object v5, p0, Lcom/koushikdutta/async/Util$2;->pending:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    const/4 v6, 0x0

    long-to-int v7, v2

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 93
    .local v1, "read":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    iget v4, p0, Lcom/koushikdutta/async/Util$2;->totalRead:I

    int-to-long v4, v4

    iget-wide v6, p0, Lcom/koushikdutta/async/Util$2;->val$max:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 94
    :cond_2
    invoke-direct {p0}, Lcom/koushikdutta/async/Util$2;->cleanup()V

    .line 95
    iget-object v4, p0, Lcom/koushikdutta/async/Util$2;->val$wrapper:Lcom/koushikdutta/async/callback/CompletedCallback;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    .line 112
    .end local v1    # "read":I
    .end local v2    # "toRead":J
    :goto_0
    return-void

    .line 98
    .restart local v1    # "read":I
    .restart local v2    # "toRead":J
    :cond_3
    mul-int/lit8 v4, v1, 0x2

    iput v4, p0, Lcom/koushikdutta/async/Util$2;->mToAlloc:I

    .line 99
    iget v4, p0, Lcom/koushikdutta/async/Util$2;->totalRead:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/koushikdutta/async/Util$2;->totalRead:I

    .line 100
    iget-object v4, p0, Lcom/koushikdutta/async/Util$2;->pending:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 101
    iget-object v4, p0, Lcom/koushikdutta/async/Util$2;->pending:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 104
    .end local v1    # "read":I
    .end local v2    # "toRead":J
    :cond_4
    iget-object v4, p0, Lcom/koushikdutta/async/Util$2;->val$ds:Lcom/koushikdutta/async/DataSink;

    iget-object v5, p0, Lcom/koushikdutta/async/Util$2;->pending:Ljava/nio/ByteBuffer;

    invoke-interface {v4, v5}, Lcom/koushikdutta/async/DataSink;->write(Ljava/nio/ByteBuffer;)V

    .line 106
    iget-object v4, p0, Lcom/koushikdutta/async/Util$2;->pending:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/koushikdutta/async/Util$2;->cleanup()V

    .line 110
    iget-object v4, p0, Lcom/koushikdutta/async/Util$2;->val$wrapper:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {v4, v0}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    goto :goto_0
.end method
