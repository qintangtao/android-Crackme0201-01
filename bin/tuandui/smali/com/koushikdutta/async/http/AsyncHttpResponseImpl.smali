.class abstract Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;
.super Lcom/koushikdutta/async/FilteredDataEmitter;
.source "AsyncHttpResponseImpl.java"

# interfaces
.implements Lcom/koushikdutta/async/http/AsyncHttpResponse;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field mCompleted:Z

.field private mFirstWrite:Z

.field mHeaderCallback:Lcom/koushikdutta/async/LineEmitter$StringCallback;

.field mHeaders:Lcom/koushikdutta/async/http/libcore/ResponseHeaders;

.field private mReporter:Lcom/koushikdutta/async/callback/CompletedCallback;

.field private mRequest:Lcom/koushikdutta/async/http/AsyncHttpRequest;

.field mSink:Lcom/koushikdutta/async/DataSink;

.field private mSocket:Lcom/koushikdutta/async/AsyncSocket;

.field private mWriter:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/koushikdutta/async/http/AsyncHttpRequest;

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/koushikdutta/async/FilteredDataEmitter;-><init>()V

    .line 91
    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$1;-><init>(Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mReporter:Lcom/koushikdutta/async/callback/CompletedCallback;

    .line 105
    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$2;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$2;-><init>(Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mHeaderCallback:Lcom/koushikdutta/async/LineEmitter$StringCallback;

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mCompleted:Z

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mFirstWrite:Z

    .line 164
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mRequest:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    .line 165
    return-void
.end method

.method static synthetic access$0(Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;)Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mRequest:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    return-object v0
.end method

.method static synthetic access$1(Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;)Lcom/koushikdutta/async/AsyncSocket;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    return-object v0
.end method

.method static synthetic access$2(Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;)Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mWriter:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    return-object v0
.end method

.method private assertContent()V
    .locals 2

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mFirstWrite:Z

    if-nez v0, :cond_1

    .line 181
    :cond_0
    return-void

    .line 178
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mFirstWrite:Z

    .line 179
    sget-boolean v0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mRequest:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/libcore/RequestHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->getHeaders()Lcom/koushikdutta/async/http/libcore/RawHeaders;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 180
    :cond_2
    sget-boolean v0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mRequest:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/libcore/RequestHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->getHeaders()Lcom/koushikdutta/async/http/libcore/RawHeaders;

    move-result-object v0

    const-string v1, "Transfer-Encoding"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mRequest:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/libcore/RequestHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->getContentLength()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public end()V
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->write(Ljava/nio/ByteBuffer;)V

    .line 201
    return-void
.end method

.method public getClosedCallback()Lcom/koushikdutta/async/callback/CompletedCallback;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mSink:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->getClosedCallback()Lcom/koushikdutta/async/callback/CompletedCallback;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Lcom/koushikdutta/async/http/libcore/ResponseHeaders;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mHeaders:Lcom/koushikdutta/async/http/libcore/ResponseHeaders;

    return-object v0
.end method

.method public getRequest()Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mRequest:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    return-object v0
.end method

.method public getServer()Lcom/koushikdutta/async/AsyncServer;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    return-object v0
.end method

.method public getSocket()Lcom/koushikdutta/async/AsyncSocket;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    return-object v0
.end method

.method public getWriteableCallback()Lcom/koushikdutta/async/callback/WritableCallback;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mSink:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->getWriteableCallback()Lcom/koushikdutta/async/callback/WritableCallback;

    move-result-object v0

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mSink:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->isOpen()Z

    move-result v0

    return v0
.end method

.method protected abstract onHeadersReceived()V
.end method

.method protected onRequestCompleted(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 89
    return-void
.end method

.method protected report(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    const/4 v2, 0x0

    .line 142
    invoke-super {p0, p1}, Lcom/koushikdutta/async/FilteredDataEmitter;->report(Ljava/lang/Exception;)V

    .line 147
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    new-instance v1, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$5;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$5;-><init>(Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;)V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/AsyncSocket;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 154
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0, v2}, Lcom/koushikdutta/async/AsyncSocket;->setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V

    .line 155
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0, v2}, Lcom/koushikdutta/async/AsyncSocket;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 156
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0, v2}, Lcom/koushikdutta/async/AsyncSocket;->setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mCompleted:Z

    .line 158
    return-void
.end method

.method public setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 1
    .param p1, "handler"    # Lcom/koushikdutta/async/callback/CompletedCallback;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mSink:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/DataSink;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 223
    return-void
.end method

.method setSocket(Lcom/koushikdutta/async/AsyncSocket;)V
    .locals 5
    .param p1, "exchange"    # Lcom/koushikdutta/async/AsyncSocket;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    .line 36
    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    if-nez v2, :cond_0

    .line 86
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mRequest:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getBody()Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    move-result-object v2

    iput-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mWriter:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    .line 40
    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mWriter:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    if-eqz v2, :cond_3

    .line 41
    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mRequest:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/libcore/RequestHeaders;

    move-result-object v2

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->getContentType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 42
    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mRequest:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/libcore/RequestHeaders;

    move-result-object v2

    iget-object v3, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mWriter:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    invoke-interface {v3}, Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->setContentType(Ljava/lang/String;)V

    .line 43
    :cond_1
    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mWriter:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    invoke-interface {v2}, Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;->length()I

    move-result v2

    if-ltz v2, :cond_2

    .line 44
    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mRequest:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/libcore/RequestHeaders;

    move-result-object v2

    iget-object v3, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mWriter:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    invoke-interface {v3}, Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->setContentLength(I)V

    .line 45
    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    iput-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mSink:Lcom/koushikdutta/async/DataSink;

    .line 56
    :goto_1
    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    iget-object v3, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mReporter:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {v2, v3}, Lcom/koushikdutta/async/AsyncSocket;->setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 57
    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    new-instance v3, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$3;

    invoke-direct {v3, p0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$3;-><init>(Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;)V

    invoke-interface {v2, v3}, Lcom/koushikdutta/async/AsyncSocket;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 64
    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mRequest:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getRequestString()Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "rs":Ljava/lang/String;
    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mRequest:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logv(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    new-instance v3, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$4;

    invoke-direct {v3, p0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$4;-><init>(Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;)V

    invoke-static {p1, v2, v3}, Lcom/koushikdutta/async/Util;->writeAll(Lcom/koushikdutta/async/DataSink;[BLcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 83
    new-instance v0, Lcom/koushikdutta/async/LineEmitter;

    invoke-direct {v0}, Lcom/koushikdutta/async/LineEmitter;-><init>()V

    .line 84
    .local v0, "liner":Lcom/koushikdutta/async/LineEmitter;
    invoke-interface {p1, v0}, Lcom/koushikdutta/async/AsyncSocket;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 85
    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mHeaderCallback:Lcom/koushikdutta/async/LineEmitter$StringCallback;

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/LineEmitter;->setLineCallback(Lcom/koushikdutta/async/LineEmitter$StringCallback;)V

    goto/16 :goto_0

    .line 48
    .end local v0    # "liner":Lcom/koushikdutta/async/LineEmitter;
    .end local v1    # "rs":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mRequest:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/libcore/RequestHeaders;

    move-result-object v2

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->getHeaders()Lcom/koushikdutta/async/http/libcore/RawHeaders;

    move-result-object v2

    const-string v3, "Transfer-Encoding"

    const-string v4, "Chunked"

    invoke-virtual {v2, v3, v4}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v2, Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;

    iget-object v3, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-direct {v2, v3}, Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;-><init>(Lcom/koushikdutta/async/DataSink;)V

    iput-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mSink:Lcom/koushikdutta/async/DataSink;

    goto :goto_1

    .line 53
    :cond_3
    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    iput-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mSink:Lcom/koushikdutta/async/DataSink;

    goto :goto_1
.end method

.method public setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V
    .locals 1
    .param p1, "handler"    # Lcom/koushikdutta/async/callback/WritableCallback;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mSink:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/DataSink;->setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V

    .line 207
    return-void
.end method

.method public write(Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 1
    .param p1, "bb"    # Lcom/koushikdutta/async/ByteBufferList;

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->assertContent()V

    .line 194
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mSink:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/DataSink;->write(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 195
    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "bb"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->assertContent()V

    .line 188
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mSink:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/DataSink;->write(Ljava/nio/ByteBuffer;)V

    .line 189
    return-void
.end method
