.class public final Lcom/koushikdutta/async/http/libcore/RequestHeaders;
.super Ljava/lang/Object;
.source "RequestHeaders.java"


# instance fields
.field private acceptEncoding:Ljava/lang/String;

.field private connection:Ljava/lang/String;

.field private contentLength:I

.field private contentType:Ljava/lang/String;

.field private hasAuthorization:Z

.field private final headers:Lcom/koushikdutta/async/http/libcore/RawHeaders;

.field private host:Ljava/lang/String;

.field private ifModifiedSince:Ljava/lang/String;

.field private ifNoneMatch:Ljava/lang/String;

.field private maxAgeSeconds:I

.field private maxStaleSeconds:I

.field private minFreshSeconds:I

.field private noCache:Z

.field private onlyIfCached:Z

.field private proxyAuthorization:Ljava/lang/String;

.field private transferEncoding:Ljava/lang/String;

.field private final uri:Landroid/net/Uri;

.field private userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/koushikdutta/async/http/libcore/RawHeaders;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "headers"    # Lcom/koushikdutta/async/http/libcore/RawHeaders;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v4, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->maxAgeSeconds:I

    .line 35
    iput v4, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->maxStaleSeconds:I

    .line 36
    iput v4, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->minFreshSeconds:I

    .line 54
    iput v4, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->contentLength:I

    .line 66
    iput-object p1, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->uri:Landroid/net/Uri;

    .line 67
    iput-object p2, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->headers:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    .line 69
    new-instance v1, Lcom/koushikdutta/async/http/libcore/RequestHeaders$1;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/http/libcore/RequestHeaders$1;-><init>(Lcom/koushikdutta/async/http/libcore/RequestHeaders;)V

    .line 85
    .local v1, "handler":Lcom/koushikdutta/async/http/libcore/HeaderParser$CacheControlHandler;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->length()I

    move-result v4

    if-lt v2, v4, :cond_0

    .line 121
    return-void

    .line 86
    :cond_0
    invoke-virtual {p2, v2}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "fieldName":Ljava/lang/String;
    invoke-virtual {p2, v2}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, "value":Ljava/lang/String;
    const-string v4, "Cache-Control"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 89
    invoke-static {v3, v1}, Lcom/koushikdutta/async/http/libcore/HeaderParser;->parseCacheControl(Ljava/lang/String;Lcom/koushikdutta/async/http/libcore/HeaderParser$CacheControlHandler;)V

    .line 85
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 90
    :cond_2
    const-string v4, "Pragma"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 91
    const-string v4, "no-cache"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 92
    iput-boolean v5, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->noCache:Z

    goto :goto_1

    .line 94
    :cond_3
    const-string v4, "If-None-Match"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 95
    iput-object v3, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->ifNoneMatch:Ljava/lang/String;

    goto :goto_1

    .line 96
    :cond_4
    const-string v4, "If-Modified-Since"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 97
    iput-object v3, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->ifModifiedSince:Ljava/lang/String;

    goto :goto_1

    .line 98
    :cond_5
    const-string v4, "Authorization"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 99
    iput-boolean v5, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->hasAuthorization:Z

    goto :goto_1

    .line 100
    :cond_6
    const-string v4, "Content-Length"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 102
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->contentLength:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 105
    :catch_0
    move-exception v4

    goto :goto_1

    :cond_7
    const-string v4, "Transfer-Encoding"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 106
    iput-object v3, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->transferEncoding:Ljava/lang/String;

    goto :goto_1

    .line 107
    :cond_8
    const-string v4, "User-Agent"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 108
    iput-object v3, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->userAgent:Ljava/lang/String;

    goto :goto_1

    .line 109
    :cond_9
    const-string v4, "Host"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 110
    iput-object v3, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->host:Ljava/lang/String;

    goto :goto_1

    .line 111
    :cond_a
    const-string v4, "Connection"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 112
    iput-object v3, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->connection:Ljava/lang/String;

    goto :goto_1

    .line 113
    :cond_b
    const-string v4, "Accept-Encoding"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 114
    iput-object v3, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->acceptEncoding:Ljava/lang/String;

    goto :goto_1

    .line 115
    :cond_c
    const-string v4, "Content-Type"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 116
    iput-object v3, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->contentType:Ljava/lang/String;

    goto/16 :goto_1

    .line 117
    :cond_d
    const-string v4, "Proxy-Authorization"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 118
    iput-object v3, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->proxyAuthorization:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method static synthetic access$0(Lcom/koushikdutta/async/http/libcore/RequestHeaders;Z)V
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->noCache:Z

    return-void
.end method

.method static synthetic access$1(Lcom/koushikdutta/async/http/libcore/RequestHeaders;I)V
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->maxAgeSeconds:I

    return-void
.end method

.method static synthetic access$2(Lcom/koushikdutta/async/http/libcore/RequestHeaders;I)V
    .locals 0

    .prologue
    .line 35
    iput p1, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->maxStaleSeconds:I

    return-void
.end method

.method static synthetic access$3(Lcom/koushikdutta/async/http/libcore/RequestHeaders;I)V
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->minFreshSeconds:I

    return-void
.end method

.method static synthetic access$4(Lcom/koushikdutta/async/http/libcore/RequestHeaders;Z)V
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->onlyIfCached:Z

    return-void
.end method


# virtual methods
.method public addCookies(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 288
    .local p1, "allCookieHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 294
    return-void

    .line 288
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 289
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 290
    .local v1, "key":Ljava/lang/String;
    const-string v2, "Cookie"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Cookie2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 291
    :cond_2
    iget-object v4, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->headers:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v4, v1, v2}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->addAll(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method public getAcceptEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->acceptEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getConnection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->connection:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->contentLength:I

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Lcom/koushikdutta/async/http/libcore/RawHeaders;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->headers:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getIfModifiedSince()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->ifModifiedSince:Ljava/lang/String;

    return-object v0
.end method

.method public getIfNoneMatch()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->ifNoneMatch:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxAgeSeconds()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->maxAgeSeconds:I

    return v0
.end method

.method public getMaxStaleSeconds()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->maxStaleSeconds:I

    return v0
.end method

.method public getMinFreshSeconds()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->minFreshSeconds:I

    return v0
.end method

.method public getProxyAuthorization()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->proxyAuthorization:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->transferEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public hasAuthorization()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->hasAuthorization:Z

    return v0
.end method

.method public hasConditions()Z
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->ifModifiedSince:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->ifNoneMatch:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasConnectionClose()Z
    .locals 2

    .prologue
    .line 128
    const-string v0, "close"

    iget-object v1, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->connection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isChunked()Z
    .locals 2

    .prologue
    .line 124
    const-string v0, "chunked"

    iget-object v1, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->transferEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNoCache()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->noCache:Z

    return v0
.end method

.method public isOnlyIfCached()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->onlyIfCached:Z

    return v0
.end method

.method public setAcceptEncoding(Ljava/lang/String;)V
    .locals 2
    .param p1, "acceptEncoding"    # Ljava/lang/String;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->acceptEncoding:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->headers:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    const-string v1, "Accept-Encoding"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->headers:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    const-string v1, "Accept-Encoding"

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iput-object p1, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->acceptEncoding:Ljava/lang/String;

    .line 251
    return-void
.end method

.method public setChunked()V
    .locals 3

    .prologue
    .line 204
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->transferEncoding:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->headers:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    const-string v1, "Transfer-Encoding"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->headers:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    const-string v1, "Transfer-Encoding"

    const-string v2, "chunked"

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v0, "chunked"

    iput-object v0, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->transferEncoding:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public setConnection(Ljava/lang/String;)V
    .locals 2
    .param p1, "connection"    # Ljava/lang/String;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->connection:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->headers:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    const-string v1, "Connection"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->headers:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    const-string v1, "Connection"

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iput-object p1, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->connection:Ljava/lang/String;

    .line 243
    return-void
.end method

.method public setContentLength(I)V
    .locals 3
    .param p1, "contentLength"    # I

    .prologue
    const/4 v2, -0x1

    .line 212
    iget v0, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->contentLength:I

    if-eq v0, v2, :cond_0

    .line 213
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->headers:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    const-string v1, "Content-Length"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 215
    :cond_0
    if-eq p1, v2, :cond_1

    .line 216
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->headers:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    const-string v1, "Content-Length"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_1
    iput p1, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->contentLength:I

    .line 219
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 2
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->headers:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->headers:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iput-object p1, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->contentType:Ljava/lang/String;

    .line 259
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->host:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->headers:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    const-string v1, "Host"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->headers:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    const-string v1, "Host"

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iput-object p1, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->host:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public setIfModifiedSince(Ljava/util/Date;)V
    .locals 3
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 262
    iget-object v1, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->ifModifiedSince:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->headers:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    const-string v2, "If-Modified-Since"

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 265
    :cond_0
    invoke-static {p1}, Lcom/koushikdutta/async/http/libcore/HttpDate;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "formattedDate":Ljava/lang/String;
    iget-object v1, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->headers:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    const-string v2, "If-Modified-Since"

    invoke-virtual {v1, v2, v0}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iput-object v0, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->ifModifiedSince:Ljava/lang/String;

    .line 268
    return-void
.end method

.method public setIfNoneMatch(Ljava/lang/String;)V
    .locals 2
    .param p1, "ifNoneMatch"    # Ljava/lang/String;

    .prologue
    .line 271
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->ifNoneMatch:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->headers:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    const-string v1, "If-None-Match"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->headers:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    const-string v1, "If-None-Match"

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iput-object p1, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->ifNoneMatch:Ljava/lang/String;

    .line 276
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 2
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->userAgent:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->headers:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    const-string v1, "User-Agent"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->headers:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    const-string v1, "User-Agent"

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iput-object p1, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->userAgent:Ljava/lang/String;

    .line 227
    return-void
.end method
