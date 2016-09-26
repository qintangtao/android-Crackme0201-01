.class public Lcom/koushikdutta/async/http/HttpUtil;
.super Ljava/lang/Object;
.source "HttpUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBody(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/callback/CompletedCallback;Lcom/koushikdutta/async/http/libcore/RawHeaders;)Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;
    .locals 7
    .param p0, "emitter"    # Lcom/koushikdutta/async/DataEmitter;
    .param p1, "reporter"    # Lcom/koushikdutta/async/callback/CompletedCallback;
    .param p2, "headers"    # Lcom/koushikdutta/async/http/libcore/RawHeaders;

    .prologue
    .line 21
    const-string v4, "Content-Type"

    invoke-virtual {p2, v4}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "contentType":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 23
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 24
    .local v3, "values":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v3

    if-lt v2, v4, :cond_1

    .line 27
    array-length v5, v3

    const/4 v4, 0x0

    :goto_1
    if-lt v4, v5, :cond_2

    .line 43
    .end local v2    # "i":I
    .end local v3    # "values":[Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    :goto_2
    return-object v4

    .line 25
    .restart local v2    # "i":I
    .restart local v3    # "values":[Ljava/lang/String;
    :cond_1
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 24
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 27
    :cond_2
    aget-object v1, v3, v4

    .line 28
    .local v1, "ct":Ljava/lang/String;
    const-string v6, "application/x-www-form-urlencoded"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 29
    new-instance v4, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;

    invoke-direct {v4}, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;-><init>()V

    goto :goto_2

    .line 31
    :cond_3
    const-string v6, "application/json"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 32
    new-instance v4, Lcom/koushikdutta/async/http/body/JSONObjectBody;

    invoke-direct {v4}, Lcom/koushikdutta/async/http/body/JSONObjectBody;-><init>()V

    goto :goto_2

    .line 34
    :cond_4
    const-string v6, "text/plain"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 35
    new-instance v4, Lcom/koushikdutta/async/http/body/StringBody;

    invoke-direct {v4}, Lcom/koushikdutta/async/http/body/StringBody;-><init>()V

    goto :goto_2

    .line 37
    :cond_5
    const-string v6, "multipart/form-data"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 38
    new-instance v4, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    invoke-direct {v4, v3}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;-><init>([Ljava/lang/String;)V

    goto :goto_2

    .line 27
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static getBodyDecoder(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/http/libcore/RawHeaders;Z)Lcom/koushikdutta/async/DataEmitter;
    .locals 12
    .param p0, "emitter"    # Lcom/koushikdutta/async/DataEmitter;
    .param p1, "headers"    # Lcom/koushikdutta/async/http/libcore/RawHeaders;
    .param p2, "server"    # Z

    .prologue
    .line 67
    :try_start_0
    const-string v9, "Content-Length"

    invoke-virtual {p1, v9}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 72
    .local v0, "_contentLength":J
    :goto_0
    move-wide v4, v0

    .line 73
    .local v4, "contentLength":J
    const-wide/16 v10, -0x1

    cmp-long v9, v10, v4

    if-eqz v9, :cond_4

    .line 74
    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-gez v9, :cond_1

    .line 75
    invoke-interface {p0}, Lcom/koushikdutta/async/DataEmitter;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v9

    new-instance v10, Lcom/koushikdutta/async/http/BodyDecoderException;

    const-string v11, "not using chunked encoding, and no content-length found."

    invoke-direct {v10, v11}, Lcom/koushikdutta/async/http/BodyDecoderException;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v10}, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;->create(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/Exception;)Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;

    move-result-object v6

    .line 76
    .local v6, "ender":Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;
    invoke-virtual {v6, p0}, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;->setDataEmitter(Lcom/koushikdutta/async/DataEmitter;)V

    .line 77
    move-object p0, v6

    .line 118
    .end local v6    # "ender":Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;
    :cond_0
    :goto_1
    return-object p0

    .line 70
    .end local v0    # "_contentLength":J
    .end local v4    # "contentLength":J
    :catch_0
    move-exception v9

    const-wide/16 v0, -0x1

    .restart local v0    # "_contentLength":J
    goto :goto_0

    .line 80
    .restart local v4    # "contentLength":J
    :cond_1
    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-nez v9, :cond_2

    .line 81
    invoke-interface {p0}, Lcom/koushikdutta/async/DataEmitter;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;->create(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/Exception;)Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;

    move-result-object v6

    .line 82
    .restart local v6    # "ender":Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;
    invoke-virtual {v6, p0}, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;->setDataEmitter(Lcom/koushikdutta/async/DataEmitter;)V

    .line 83
    move-object p0, v6

    .line 84
    goto :goto_1

    .line 86
    .end local v6    # "ender":Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;
    :cond_2
    new-instance v3, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;

    invoke-direct {v3, v4, v5}, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;-><init>(J)V

    .line 87
    .local v3, "contentLengthWatcher":Lcom/koushikdutta/async/http/filter/ContentLengthFilter;
    invoke-virtual {v3, p0}, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->setDataEmitter(Lcom/koushikdutta/async/DataEmitter;)V

    .line 88
    move-object p0, v3

    .line 105
    .end local v3    # "contentLengthWatcher":Lcom/koushikdutta/async/http/filter/ContentLengthFilter;
    :cond_3
    :goto_2
    const-string v9, "gzip"

    const-string v10, "Content-Encoding"

    invoke-virtual {p1, v10}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 106
    new-instance v7, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;

    invoke-direct {v7}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;-><init>()V

    .line 107
    .local v7, "gunzipper":Lcom/koushikdutta/async/http/filter/GZIPInputFilter;
    invoke-virtual {v7, p0}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->setDataEmitter(Lcom/koushikdutta/async/DataEmitter;)V

    .line 108
    move-object p0, v7

    .line 109
    goto :goto_1

    .line 90
    .end local v7    # "gunzipper":Lcom/koushikdutta/async/http/filter/GZIPInputFilter;
    :cond_4
    const-string v9, "chunked"

    const-string v10, "Transfer-Encoding"

    invoke-virtual {p1, v10}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 91
    new-instance v2, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;

    invoke-direct {v2}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;-><init>()V

    .line 92
    .local v2, "chunker":Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;
    invoke-virtual {v2, p0}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->setDataEmitter(Lcom/koushikdutta/async/DataEmitter;)V

    .line 93
    move-object p0, v2

    .line 94
    goto :goto_2

    .line 96
    .end local v2    # "chunker":Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;
    :cond_5
    if-nez p2, :cond_6

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->getStatusLine()Ljava/lang/String;

    move-result-object v9

    const-string v10, "HTTP/1.1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_6
    const-string v9, "close"

    const-string v10, "Connection"

    invoke-virtual {p1, v10}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 98
    invoke-interface {p0}, Lcom/koushikdutta/async/DataEmitter;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;->create(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/Exception;)Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;

    move-result-object v6

    .line 99
    .restart local v6    # "ender":Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;
    invoke-virtual {v6, p0}, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;->setDataEmitter(Lcom/koushikdutta/async/DataEmitter;)V

    .line 100
    move-object p0, v6

    .line 101
    goto :goto_1

    .line 110
    .end local v6    # "ender":Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;
    :cond_7
    const-string v9, "deflate"

    const-string v10, "Content-Encoding"

    invoke-virtual {p1, v10}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 111
    new-instance v8, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;

    invoke-direct {v8}, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;-><init>()V

    .line 112
    .local v8, "inflater":Lcom/koushikdutta/async/http/filter/InflaterInputFilter;
    invoke-virtual {v8, p0}, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;->setDataEmitter(Lcom/koushikdutta/async/DataEmitter;)V

    .line 113
    move-object p0, v8

    goto/16 :goto_1
.end method

.method public static isKeepAlive(Lcom/koushikdutta/async/http/libcore/RawHeaders;)Z
    .locals 3
    .param p0, "headers"    # Lcom/koushikdutta/async/http/libcore/RawHeaders;

    .prologue
    const/4 v1, 0x1

    .line 123
    const-string v2, "Connection"

    invoke-virtual {p0, v2}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "connection":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 125
    const-string v2, "keep-alive"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 131
    .local v1, "keepAlive":Z
    :goto_0
    return v1

    .line 128
    .end local v1    # "keepAlive":Z
    :cond_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->getHttpMinorVersion()I

    move-result v2

    if-lt v2, v1, :cond_1

    .restart local v1    # "keepAlive":Z
    :goto_1
    goto :goto_0

    .end local v1    # "keepAlive":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
