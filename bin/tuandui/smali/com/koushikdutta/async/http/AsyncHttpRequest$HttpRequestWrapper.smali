.class Lcom/koushikdutta/async/http/AsyncHttpRequest$HttpRequestWrapper;
.super Ljava/lang/Object;
.source "AsyncHttpRequest.java"

# interfaces
.implements Lorg/apache/http/HttpRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/AsyncHttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HttpRequestWrapper"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field params:Lorg/apache/http/params/HttpParams;

.field request:Lcom/koushikdutta/async/http/AsyncHttpRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 182
    const-class v0, Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/koushikdutta/async/http/AsyncHttpRequest$HttpRequestWrapper;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V
    .locals 0
    .param p1, "request"    # Lcom/koushikdutta/async/http/AsyncHttpRequest;

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest$HttpRequestWrapper;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    .line 192
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest$HttpRequestWrapper;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/libcore/RequestHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->getHeaders()Lcom/koushikdutta/async/http/libcore/RawHeaders;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public addHeader(Lorg/apache/http/Header;)V
    .locals 3
    .param p1, "header"    # Lorg/apache/http/Header;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest$HttpRequestWrapper;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/libcore/RequestHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->getHeaders()Lcom/koushikdutta/async/http/libcore/RawHeaders;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public containsHeader(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest$HttpRequestWrapper;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/libcore/RequestHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->getHeaders()Lcom/koushikdutta/async/http/libcore/RawHeaders;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAllHeaders()[Lorg/apache/http/Header;
    .locals 5

    .prologue
    .line 212
    iget-object v4, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest$HttpRequestWrapper;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/libcore/RequestHeaders;

    move-result-object v4

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->getHeaders()Lcom/koushikdutta/async/http/libcore/RawHeaders;

    move-result-object v4

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->length()I

    move-result v4

    new-array v2, v4, [Lorg/apache/http/Header;

    .line 213
    .local v2, "ret":[Lorg/apache/http/Header;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-lt v0, v4, :cond_0

    .line 218
    return-object v2

    .line 214
    :cond_0
    iget-object v4, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest$HttpRequestWrapper;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/libcore/RequestHeaders;

    move-result-object v4

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->getHeaders()Lcom/koushikdutta/async/http/libcore/RawHeaders;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest$HttpRequestWrapper;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/libcore/RequestHeaders;

    move-result-object v4

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->getHeaders()Lcom/koushikdutta/async/http/libcore/RawHeaders;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, "value":Ljava/lang/String;
    new-instance v4, Lorg/apache/http/message/BasicHeader;

    invoke-direct {v4, v1, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v0

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 223
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest$HttpRequestWrapper;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/libcore/RequestHeaders;

    move-result-object v1

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->getHeaders()Lcom/koushikdutta/async/http/libcore/RawHeaders;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 225
    const/4 v1, 0x0

    .line 226
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/apache/http/message/BasicHeader;

    invoke-direct {v1, p1, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 231
    iget-object v4, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest$HttpRequestWrapper;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/libcore/RequestHeaders;

    move-result-object v4

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->getHeaders()Lcom/koushikdutta/async/http/libcore/RawHeaders;

    move-result-object v4

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->toMultimap()Ljava/util/Map;

    move-result-object v1

    .line 232
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 233
    .local v3, "vals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v3, :cond_1

    .line 234
    const/4 v4, 0x0

    new-array v2, v4, [Lorg/apache/http/Header;

    .line 238
    :cond_0
    return-object v2

    .line 235
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v2, v4, [Lorg/apache/http/Header;

    .line 236
    .local v2, "ret":[Lorg/apache/http/Header;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 237
    new-instance v5, Lorg/apache/http/message/BasicHeader;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v5, p1, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v2, v0

    .line 236
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 243
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest$HttpRequestWrapper;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    .line 244
    .local v0, "vals":[Lorg/apache/http/Header;
    array-length v1, v0

    if-nez v1, :cond_0

    .line 245
    const/4 v1, 0x0

    .line 246
    :goto_0
    return-object v1

    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    goto :goto_0
.end method

.method public getParams()Lorg/apache/http/params/HttpParams;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest$HttpRequestWrapper;->params:Lorg/apache/http/params/HttpParams;

    return-object v0
.end method

.method public getProtocolVersion()Lorg/apache/http/ProtocolVersion;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 257
    new-instance v0, Lorg/apache/http/ProtocolVersion;

    const-string v1, "HTTP"

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public getRequestLine()Lorg/apache/http/RequestLine;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest$HttpRequestWrapper;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    return-object v0
.end method

.method public headerIterator()Lorg/apache/http/HeaderIterator;
    .locals 1

    .prologue
    .line 262
    sget-boolean v0, Lcom/koushikdutta/async/http/AsyncHttpRequest$HttpRequestWrapper;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 263
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 268
    sget-boolean v0, Lcom/koushikdutta/async/http/AsyncHttpRequest$HttpRequestWrapper;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 269
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeHeader(Lorg/apache/http/Header;)V
    .locals 2
    .param p1, "header"    # Lorg/apache/http/Header;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest$HttpRequestWrapper;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/libcore/RequestHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->getHeaders()Lcom/koushikdutta/async/http/libcore/RawHeaders;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method public removeHeaders(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest$HttpRequestWrapper;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/libcore/RequestHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->getHeaders()Lcom/koushikdutta/async/http/libcore/RawHeaders;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest$HttpRequestWrapper;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/libcore/RequestHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->getHeaders()Lcom/koushikdutta/async/http/libcore/RawHeaders;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method public setHeader(Lorg/apache/http/Header;)V
    .locals 2
    .param p1, "header"    # Lorg/apache/http/Header;

    .prologue
    .line 284
    invoke-interface {p1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest$HttpRequestWrapper;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method public setHeaders([Lorg/apache/http/Header;)V
    .locals 3
    .param p1, "headers"    # [Lorg/apache/http/Header;

    .prologue
    .line 294
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 296
    return-void

    .line 294
    :cond_0
    aget-object v0, p1, v1

    .line 295
    .local v0, "header":Lorg/apache/http/Header;
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest$HttpRequestWrapper;->setHeader(Lorg/apache/http/Header;)V

    .line 294
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setParams(Lorg/apache/http/params/HttpParams;)V
    .locals 0
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest$HttpRequestWrapper;->params:Lorg/apache/http/params/HttpParams;

    .line 301
    return-void
.end method
