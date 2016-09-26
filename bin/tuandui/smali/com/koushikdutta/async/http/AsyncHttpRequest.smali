.class public Lcom/koushikdutta/async/http/AsyncHttpRequest;
.super Ljava/lang/Object;
.source "AsyncHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/AsyncHttpRequest$HttpRequestWrapper;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DEFAULT_TIMEOUT:I = 0x7530


# instance fields
.field LOGTAG:Ljava/lang/String;

.field executionTime:J

.field logLevel:I

.field private mBody:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

.field private mFollowRedirect:Z

.field private mHeaders:Lcom/koushikdutta/async/http/libcore/RequestHeaders;

.field private mMethod:Ljava/lang/String;

.field private mRawHeaders:Lcom/koushikdutta/async/http/libcore/RawHeaders;

.field mTimeout:I

.field proxyHost:Ljava/lang/String;

.field proxyPort:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->$assertionsDisabled:Z

    .line 163
    return-void

    .line 22
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "method"    # Ljava/lang/String;

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/koushikdutta/async/http/libcore/RawHeaders;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Lcom/koushikdutta/async/http/libcore/RawHeaders;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "headers"    # Lcom/koushikdutta/async/http/libcore/RawHeaders;

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Lcom/koushikdutta/async/http/libcore/RawHeaders;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/libcore/RawHeaders;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mRawHeaders:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mFollowRedirect:Z

    .line 164
    const/16 v0, 0x7530

    iput v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mTimeout:I

    .line 319
    const/4 v0, -0x1

    iput v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->proxyPort:I

    .line 115
    sget-boolean v0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 116
    :cond_0
    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mMethod:Ljava/lang/String;

    .line 117
    if-nez p3, :cond_2

    .line 118
    new-instance v0, Lcom/koushikdutta/async/http/libcore/RawHeaders;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/libcore/RawHeaders;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mRawHeaders:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    .line 121
    :goto_0
    if-nez p3, :cond_1

    .line 122
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mRawHeaders:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    invoke-static {v0, p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->setDefaultHeaders(Lcom/koushikdutta/async/http/libcore/RawHeaders;Landroid/net/Uri;)V

    .line 123
    :cond_1
    new-instance v0, Lcom/koushikdutta/async/http/libcore/RequestHeaders;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mRawHeaders:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    invoke-direct {v0, p1, v1}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;-><init>(Landroid/net/Uri;Lcom/koushikdutta/async/http/libcore/RawHeaders;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mHeaders:Lcom/koushikdutta/async/http/libcore/RequestHeaders;

    .line 124
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mRawHeaders:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->setStatusLine(Ljava/lang/String;)V

    .line 125
    return-void

    .line 120
    :cond_2
    iput-object p3, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mRawHeaders:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/koushikdutta/async/http/AsyncHttpRequest;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mMethod:Ljava/lang/String;

    return-object v0
.end method

.method public static create(Lorg/apache/http/HttpRequest;)Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .locals 8
    .param p0, "request"    # Lorg/apache/http/HttpRequest;

    .prologue
    .line 175
    new-instance v1, Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-interface {p0}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p0}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/koushikdutta/async/http/AsyncHttpRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    .line 176
    .local v1, "ret":Lcom/koushikdutta/async/http/AsyncHttpRequest;
    invoke-interface {p0}, Lorg/apache/http/HttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 179
    return-object v1

    .line 176
    :cond_0
    aget-object v0, v3, v2

    .line 177
    .local v0, "header":Lorg/apache/http/Header;
    invoke-virtual {v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/libcore/RequestHeaders;

    move-result-object v5

    invoke-virtual {v5}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->getHeaders()Lcom/koushikdutta/async/http/libcore/RawHeaders;

    move-result-object v5

    invoke-interface {v0}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected static getDefaultUserAgent()Ljava/lang/String;
    .locals 3

    .prologue
    .line 79
    const-string v1, "http.agent"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "agent":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "agent":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "agent":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Java"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "java.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getLogMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 354
    iget-wide v2, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->executionTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 355
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->executionTime:J

    sub-long v0, v2, v4

    .line 358
    .local v0, "elapsed":J
    :goto_0
    const-string v2, "(%d ms) %s: %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getUri()Landroid/net/Uri;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 357
    .end local v0    # "elapsed":J
    :cond_0
    const-wide/16 v0, 0x0

    .restart local v0    # "elapsed":J
    goto :goto_0
.end method

.method public static setDefaultHeaders(Lcom/koushikdutta/async/http/libcore/RawHeaders;Landroid/net/Uri;)V
    .locals 3
    .param p0, "ret"    # Lcom/koushikdutta/async/http/libcore/RawHeaders;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 101
    if-eqz p1, :cond_1

    .line 102
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "host":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    :cond_0
    if-eqz v0, :cond_1

    .line 106
    const-string v1, "Host"

    invoke-virtual {p0, v1, v0}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .end local v0    # "host":Ljava/lang/String;
    :cond_1
    const-string v1, "User-Agent"

    invoke-static {}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getDefaultUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v1, "Accept-Encoding"

    const-string v2, "gzip, deflate"

    invoke-virtual {p0, v1, v2}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v1, "Connection"

    const-string v2, "keep-alive"

    invoke-virtual {p0, v1, v2}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v1, "Accept"

    const-string v2, "*/*"

    invoke-virtual {p0, v1, v2}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/libcore/RequestHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->getHeaders()Lcom/koushikdutta/async/http/libcore/RawHeaders;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    return-object p0
.end method

.method public asHttpRequest()Lorg/apache/http/HttpRequest;
    .locals 1

    .prologue
    .line 305
    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpRequest$HttpRequestWrapper;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/AsyncHttpRequest$HttpRequestWrapper;-><init>(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    return-object v0
.end method

.method public disableProxy()V
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->proxyHost:Ljava/lang/String;

    .line 327
    const/4 v0, -0x1

    iput v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->proxyPort:I

    .line 328
    return-void
.end method

.method public enableProxy(Ljava/lang/String;I)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 321
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->proxyHost:Ljava/lang/String;

    .line 322
    iput p2, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->proxyPort:I

    .line 323
    return-void
.end method

.method public getBody()Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mBody:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    return-object v0
.end method

.method public getFollowRedirect()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mFollowRedirect:Z

    return v0
.end method

.method public getHeaders()Lcom/koushikdutta/async/http/libcore/RequestHeaders;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mHeaders:Lcom/koushikdutta/async/http/libcore/RequestHeaders;

    return-object v0
.end method

.method public getLogLevel()I
    .locals 1

    .prologue
    .line 346
    iget v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logLevel:I

    return v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->proxyHost:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyPort()I
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->proxyPort:I

    return v0
.end method

.method public getProxyRequestLine()Lorg/apache/http/RequestLine;
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpRequest$2;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/AsyncHttpRequest$2;-><init>(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    return-object v0
.end method

.method public getRequestLine()Lorg/apache/http/RequestLine;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpRequest$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/AsyncHttpRequest$1;-><init>(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    return-object v0
.end method

.method public getRequestString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mRawHeaders:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->toHeaderString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mTimeout:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mHeaders:Lcom/koushikdutta/async/http/libcore/RequestHeaders;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public logd(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 382
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->LOGTAG:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    iget v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 386
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->LOGTAG:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public logd(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 389
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->LOGTAG:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    iget v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 393
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->LOGTAG:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 397
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->LOGTAG:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    iget v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 401
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->LOGTAG:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public loge(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 404
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->LOGTAG:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    iget v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 408
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->LOGTAG:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public logi(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 361
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->LOGTAG:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    iget v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 365
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->LOGTAG:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public logv(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 368
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->LOGTAG:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    iget v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 372
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->LOGTAG:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public logw(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 375
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->LOGTAG:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    iget v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 379
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->LOGTAG:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onHandshakeException(Lcom/koushikdutta/async/AsyncSSLException;)V
    .locals 0
    .param p1, "e"    # Lcom/koushikdutta/async/AsyncSSLException;

    .prologue
    .line 161
    return-void
.end method

.method public setBody(Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;)V
    .locals 0
    .param p1, "body"    # Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mBody:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    .line 154
    return-void
.end method

.method public setFollowRedirect(Z)Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .locals 0
    .param p1, "follow"    # Z

    .prologue
    .line 147
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mFollowRedirect:Z

    .line 148
    return-object p0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/libcore/RequestHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->getHeaders()Lcom/koushikdutta/async/http/libcore/RawHeaders;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    return-object p0
.end method

.method public setLogging(Ljava/lang/String;I)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "level"    # I

    .prologue
    .line 339
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->LOGTAG:Ljava/lang/String;

    .line 340
    iput p2, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logLevel:I

    .line 341
    return-void
.end method

.method public setMethod(Ljava/lang/String;)Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .locals 2
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/koushikdutta/async/http/AsyncHttpRequest;

    if-eq v0, v1, :cond_0

    .line 90
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "can\'t change method on a subclass of AsyncHttpRequest"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mMethod:Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mRawHeaders:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->setStatusLine(Ljava/lang/String;)V

    .line 93
    return-object p0
.end method

.method public setTimeout(I)Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .locals 0
    .param p1, "timeout"    # I

    .prologue
    .line 170
    iput p1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->mTimeout:I

    .line 171
    return-object p0
.end method
