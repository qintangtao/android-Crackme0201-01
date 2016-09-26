.class public abstract Lcom/loopj/android/http/DataAsyncHttpResponseHandler;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "DataAsyncHttpResponseHandler.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DataAsyncHttpResponseHandler"

.field protected static final PROGRESS_DATA_MESSAGE:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 41
    return-void
.end method

.method public static copyOfRange([BII)[B
    .locals 5
    .param p0, "original"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 140
    if-le p1, p2, :cond_0

    .line 141
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 143
    :cond_0
    array-length v1, p0

    .line 144
    .local v1, "originalLength":I
    if-ltz p1, :cond_1

    if-le p1, v1, :cond_2

    .line 145
    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 147
    :cond_2
    sub-int v3, p2, p1

    .line 148
    .local v3, "resultLength":I
    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 149
    .local v0, "copyLength":I
    new-array v2, v3, [B

    .line 150
    .local v2, "result":[B
    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    return-object v2
.end method


# virtual methods
.method getResponseData(Lorg/apache/http/HttpEntity;)[B
    .locals 12
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    const/4 v7, 0x0

    .line 90
    .local v7, "responseBody":[B
    if-eqz p1, :cond_3

    .line 91
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 92
    .local v5, "instream":Ljava/io/InputStream;
    if-eqz v5, :cond_3

    .line 93
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    .line 94
    .local v2, "contentLength":J
    const-wide/32 v10, 0x7fffffff

    cmp-long v9, v2, v10

    if-lez v9, :cond_0

    .line 95
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "HTTP entity too large to be buffered in memory"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 97
    :cond_0
    const-wide/16 v10, 0x0

    cmp-long v9, v2, v10

    if-gez v9, :cond_1

    .line 98
    const-wide/16 v2, 0x1000

    .line 101
    :cond_1
    :try_start_0
    new-instance v0, Lorg/apache/http/util/ByteArrayBuffer;

    long-to-int v9, v2

    invoke-direct {v0, v9}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .local v0, "buffer":Lorg/apache/http/util/ByteArrayBuffer;
    const/16 v9, 0x1000

    :try_start_1
    new-array v8, v9, [B

    .line 104
    .local v8, "tmp":[B
    const/4 v1, 0x0

    .line 106
    .local v1, "count":I
    :goto_0
    invoke-virtual {v5, v8}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, "l":I
    const/4 v9, -0x1

    if-eq v6, v9, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v9

    if-nez v9, :cond_2

    .line 107
    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9, v6}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    .line 108
    const/4 v9, 0x0

    invoke-static {v8, v9, v6}, Lcom/loopj/android/http/DataAsyncHttpResponseHandler;->copyOfRange([BII)[B

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/loopj/android/http/DataAsyncHttpResponseHandler;->sendProgressDataMessage([B)V

    .line 109
    int-to-long v10, v1

    invoke-virtual {p0, v10, v11, v2, v3}, Lcom/loopj/android/http/DataAsyncHttpResponseHandler;->sendProgressMessage(JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 112
    .end local v1    # "count":I
    .end local v6    # "l":I
    .end local v8    # "tmp":[B
    :catchall_0
    move-exception v9

    :try_start_2
    invoke-static {v5}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    throw v9
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    .line 115
    .end local v0    # "buffer":Lorg/apache/http/util/ByteArrayBuffer;
    :catch_0
    move-exception v4

    .line 116
    .local v4, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 117
    new-instance v9, Ljava/io/IOException;

    const-string v10, "File too large to fit into available memory"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 112
    .end local v4    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v0    # "buffer":Lorg/apache/http/util/ByteArrayBuffer;
    .restart local v1    # "count":I
    .restart local v6    # "l":I
    .restart local v8    # "tmp":[B
    :cond_2
    :try_start_3
    invoke-static {v5}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 114
    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v7

    .line 121
    .end local v0    # "buffer":Lorg/apache/http/util/ByteArrayBuffer;
    .end local v1    # "count":I
    .end local v2    # "contentLength":J
    .end local v5    # "instream":Ljava/io/InputStream;
    .end local v6    # "l":I
    .end local v8    # "tmp":[B
    :cond_3
    return-object v7
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handleMessage(Landroid/os/Message;)V

    .line 63
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 77
    :goto_0
    return-void

    .line 65
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    .line 66
    .local v0, "response":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 68
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, v0, v2

    check-cast v2, [B

    check-cast v2, [B

    invoke-virtual {p0, v2}, Lcom/loopj/android/http/DataAsyncHttpResponseHandler;->onProgressData([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "DataAsyncHttpResponseHandler"

    const-string v3, "custom onProgressData contains an error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 73
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    const-string v2, "DataAsyncHttpResponseHandler"

    const-string v3, "PROGRESS_DATA_MESSAGE didn\'t got enough params"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public onProgressData([B)V
    .locals 2
    .param p1, "responseBody"    # [B

    .prologue
    .line 49
    const-string v0, "DataAsyncHttpResponseHandler"

    const-string v1, "onProgressData(byte[]) was not overriden, but callback was received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void
.end method

.method public final sendProgressDataMessage([B)V
    .locals 3
    .param p1, "responseBytes"    # [B

    .prologue
    .line 54
    const/4 v0, 0x7

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/loopj/android/http/DataAsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loopj/android/http/DataAsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 55
    return-void
.end method
